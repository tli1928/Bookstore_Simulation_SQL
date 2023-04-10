from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


employees = Blueprint('employees', __name__)


@employees.route('/updateCustomerInfo', methods=['POST'])
def update_customer_info():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()

    memberType = request.form['memberType']
    balance = request.form['balance']
    customerId = request.form['customerId']

    # add the number of balance to the current balance, memberType update to the new memberType
    query = f"UPDATE customer SET balance = balance + {balance}, memberType = '{memberType}' WHERE customerId = {customerId}"

    cursor.execute(query)
    db.get_db().commit()
    return 'Customer info updated successfully'


@employees.route('/getCertainCustomer/<customerId>', methods=['GET'])
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


@employees.route('/allInfo/<certainCondition>', methods=['GET'])
def get_allInfo(certainCondition):
    cursor = db.get_db().cursor()
    if certainCondition == 'get_customers':
        cursor.execute('select  * from customer')
    elif certainCondition == 'get_authors':
        cursor.execute('select  * from author')
    elif certainCondition == 'get_books':
        cursor.execute('select  * from book')
    elif certainCondition == 'get_reserves':
        cursor.execute('select  * from reserve')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@employees.route('/checkReserve', methods=['GET'])
def check_reserve():
    cursor = db.get_db().cursor()
    cursor.execute('select  * from reserve')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@employees.route('/checkReserve/<authorID>', methods=['GET'])
def check_reserve_author(authorID):
    cursor = db.get_db().cursor()
    cursor.execute(
        f'select authorId, bookId, bookName, borrow_time, customerId, pricePerDay, reserveId, return_time '
        f'from reserve natural join book natural join author where authorId = {authorID}')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@employees.route('/updateAuthorBalance', methods=['POST'])
def update_author_balance():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()

    authorId = request.form['authorId']
    deposit_Change = request.form['deposit_Change']

    # add the number of balance to the current balance, memberType update to the new memberType
    query = f"UPDATE author SET deposit = deposit + {deposit_Change} WHERE authorId = {authorId}"

    cursor.execute(query)
    db.get_db().commit()
    return 'Author balance updated successfully'


@employees.route('/getCertainAuthor/<authorID>', methods=['GET'])
def get_certain_author(authorID):
    cursor = db.get_db().cursor()
    cursor.execute(f"select  * from author where authorId = {authorID}")
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@employees.route('/newAuthor', methods=['POST'])
def new_author():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()

    firstName = request.form['firstName']
    middleName = request.form['middleName']
    lastName = request.form['lastName']
    email = request.form['email']

    # add the number of balance to the current balance, memberType update to the new memberType,
    # there is no middle name, just use first name and last name
    if middleName == '':
        query = f"INSERT INTO author(firstName, lastName, contactEmail) VALUES ('{firstName}', '{lastName}', '{email}')"
    else:
        query = f"INSERT INTO author(firstName, midName, lastName, contactEmail) VALUES ('{firstName}', '{middleName}', '{lastName}', '{email}')"

    cursor.execute(query)
    db.get_db().commit()
    return 'Author added successfully'


@employees.route('/newCustomer', methods=['POST'])
def new_customer():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()

    firstName = request.form['firstName']
    middleName = request.form['middleName']
    lastName = request.form['lastName']
    birth_date = request.form['birth_date']

    # add the number of balance to the current balance, memberType update to the new memberType,
    # there is no middle name, just use first name and last name
    if middleName == '':
        query = f"INSERT INTO customer(balance, memberType, firstName, lastName, birth_date) VALUES (0, 'regular', '{firstName}', '{lastName}', '{birth_date}')"
    else:
        query = f"INSERT INTO customer(balance, memberType, firstName, midName, lastName, birth_date) VALUES (0, 'regular', '{firstName}', '{middleName}', '{lastName}', '{birth_date}')"

    cursor.execute(query)
    db.get_db().commit()
    return 'Customer added successfully'


@employees.route('/getNewCustomer/<firstName>/<middleName>/<lastName>/<birth_date>', methods=['GET'])
def get_new_customer(firstName, middleName, lastName, birth_date):
    cursor = db.get_db().cursor()
    if middleName == 'null':
        cursor.execute(
            f"select  * from customer where firstName = '{firstName}' and lastName = '{lastName}' and birth_date = '{birth_date}'")
    else:
        cursor.execute(
            f"select  * from customer where firstName = '{firstName}' and midName = '{middleName}' and lastName = '{lastName}' and birth_date = '{birth_date}'")
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@employees.route('/getNewAuthor/<firstName>/<middleName>/<lastName>/<email>', methods=['GET'])
def get_new_author(firstName, middleName, lastName, email):
    cursor = db.get_db().cursor()
    if middleName == 'null':
        cursor.execute(
            f"select  * from author where firstName = '{firstName}' and lastName = '{lastName}' and contactEmail = '{email}'")
    else:
        cursor.execute(
            f"select  * from author where firstName = '{firstName}' and midName = '{middleName}' and lastName = '{lastName}' and contactEmail = '{email}'")
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@employees.route('/getNewBook/<authorId>/<pricePerDay>/<bookName>/<status>/<booktype>', methods=['GET'])
def get_new_book(authorId, pricePerDay, bookName, status, booktype):
    cursor = db.get_db().cursor()
    cursor.execute(
        f"select  * from book where authorId = '{authorId}' and pricePerDay = '{pricePerDay}' and bookName = '{bookName}' and status = '{status}' and booktype = '{booktype}'")
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response
