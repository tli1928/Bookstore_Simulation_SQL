from flask import Blueprint, request, jsonify, make_response,  current_app
import json
from src import db


authors = Blueprint('authors', __name__)


@authors.route('/authors', methods=['GET'])
def get_customers():
    cursor = db.get_db().cursor()
    cursor.execute('select  * from author')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@authors.route('/getBankAccount/<authorID>', methods=['GET'])
def get_BankAccount(authorID):
    cursor = db.get_db().cursor()
    cursor.execute(
        'select bankAccountNum from authorBankAccount where authorId = {0}'.format(authorID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@authors.route('/getBalance/<authorID>', methods=['GET'])
def get_Balance(authorID):
    cursor = db.get_db().cursor()
    cursor.execute(
        'select deposit from author where authorId = {0}'.format(authorID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@authors.route('/withdrawMoney', methods=['POST'])
def withdraw_money():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()

    authorId = request.form['authorId']

    # set the balance to 0
    query = f"UPDATE author SET deposit = 0 WHERE authorId = {authorId}"

    cursor.execute(query)
    db.get_db().commit()
    return 'Money withdraw successfully'


@authors.route('/readReport/<reporttype>/<searchYear>', methods=['GET'])
def read_report(reporttype, searchYear):
    cursor = db.get_db().cursor()
    if reporttype == 'profit':
        cursor.execute(f"SELECT bookName, sum(pricePerDay * DATEDIFF(return_time, borrow_time)) as profit "
                       f"FROM book NATURAL JOIN reserve "
                       f"WHERE year(borrow_time) = {searchYear} "
                       f"GROUP BY bookId "
                       f"ORDER BY profit DESC")

    elif reporttype == 'authors':
        # Rank the total number of books borrowed in a year by genre. Ignore midname if it is null.
        cursor.execute(f"SELECT concat(firstName, ' ', ifnull(midName, ''), ' ', lastName) as authorName, count(authorId) as bookCount "
                       f"FROM book NATURAL JOIN author NATURAL JOIN reserve "
                       f"WHERE year(borrow_time) = {searchYear} "
                       f"GROUP BY authorId "
                       f"ORDER BY bookCount DESC")
    elif reporttype == 'genre':
        # Rank the total number of books borrowed in a year written by each author
        cursor.execute(f"SELECT category, count(category) as count from bookGenre natural join reserve "
                       f"WHERE YEAR(borrow_time) = {searchYear} GROUP BY category ORDER BY count DESC")
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response