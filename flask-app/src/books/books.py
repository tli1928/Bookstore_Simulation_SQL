from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


books = Blueprint('books', __name__)


@books.route('/allbooks', methods=['GET'])
def get_allbooks():
    cursor = db.get_db().cursor()
    cursor.execute('select  * from book')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@books.route('/validbooks', methods=['GET'])
def get_validbooks():
    cursor = db.get_db().cursor()
    cursor.execute("select  * from book where status = 'available' ")
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@books.route('/book', methods=['POST'])
def add_book():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()

    authorId = request.form['authorId']
    pricePerDay = request.form['pricePerDay']
    bookName = request.form['bookName']
    status = request.form['status']
    booktype = request.form['booktype']

    query = f"INSERT INTO book (authorId, pricePerDay, bookName, status, booktype) " \
            f"VALUES ('{authorId}', '{pricePerDay}', '{bookName}', '{status}', '{booktype}')"
    cursor.execute(query)
    db.get_db().commit()
    return 'Book added successfully'


@books.route('/bookinfo/<authorId>/<bookName>', methods=['GET'])
def add_book_info(authorId, bookName):

    cursor = db.get_db().cursor()
    cursor.execute(
        f"SELECT * FROM book WHERE authorId = '{authorId}' AND bookName = '{bookName}'")
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response
