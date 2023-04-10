from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

customers = Blueprint('customers', __name__)


# Get all customers from the DB


@customers.route('/customers', methods=['GET'])
def get_customers():
    cursor = db.get_db().cursor()
    cursor.execute('select  * from customer')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


# Get customer detail for customer with particular userID


@customers.route('/customers/<userID>', methods=['GET'])
def get_customer(userID):
    cursor = db.get_db().cursor()
    cursor.execute(
        'select * from customer where customerId = {0}'.format(userID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@customers.route('/customersID', methods=['GET'])
def get_all_customerID():
    cursor = db.get_db().cursor()
    cursor.execute('select customerId from customer')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@customers.route('/borrowingHistory/<custID>/<searchCondition>/<searchYear>', methods=['GET'])
def get_borrowing_history(custID, searchCondition, searchYear):
    cursor = db.get_db().cursor()
    if searchCondition == 'all':
        cursor.execute(f"SELECT bookId, bookName, borrow_time, return_time "
                       f"FROM book NATURAL JOIN reserve "
                       f"WHERE customerId = {custID} AND year(borrow_time) = {searchYear}")
    elif searchCondition == 'returned':
        cursor.execute(f"SELECT bookId, bookName, borrow_time, return_time "
                       f"FROM book NATURAL JOIN reserve "
                       # return time is smaller than current time
                       f"WHERE customerId = {custID} AND year(borrow_time) = {searchYear} AND return_time < now()")

    elif searchCondition == 'unreturned':
        cursor.execute(f"SELECT bookId, bookName, borrow_time, return_time "
                       f"FROM book NATURAL JOIN reserve "
                       # return time is larger than current time
                       f"WHERE customerId = {custID} AND year(borrow_time) = {searchYear} AND return_time > now()")

    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@customers.route('/reserveInfo', methods=['GET'])
def get_reserve_info():
    cursor = db.get_db().cursor()
    cursor.execute(f"SELECT * FROM reserve")
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@customers.route('/borrowBook', methods=['POST'])
def borrow_book():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()

    customerId = request.form['customerId']
    bookId = request.form['bookId']
    return_time = request.form['return_time']

    # update the status to rented if the book is available
    query = f"UPDATE book SET status = 'rented' WHERE bookId = {bookId} AND status = 'available'"

    # update the reserve table if the book is available
    if cursor.execute(query) == 1:
        cursor.execute(
            f"INSERT INTO reserve (customerId, bookId, return_time) VALUES ({customerId}, {bookId}, '{return_time}')")
        db.get_db().commit()
        return "Book borrowed successfully"
    else:
        return "Please borrow the available book"


@customers.route('/getCertainCustomer/<customerId>', methods=['GET'])
def get_certain_customer(customerId):
    cursor = db.get_db().cursor()
    cursor.execute(f"select  * from customer where customerId = {customerId}")
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response
