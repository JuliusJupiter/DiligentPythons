import os
from flask import Flask, render_template, redirect, url_for, request

import db

app = Flask(__name__)

app.secret_key = 'secret_key_from_diligent_pythons'


app.config.from_mapping(
	SECRET_KEY='secret_key_just_for_dev_environment',
	DATABASE=os.path.join(app.instance_path, 'tauschen.sqlite')
)
app.cli.add_command(db.init_db)
app.teardown_appcontext(db.close_db_con)

@app.route('/')
def index():
	return render_template('base.html')

@app.route('/login')
def login():
    return render_template('login.html')
pass

@app.route('/register/')
def register():
	pass

@app.route('/wohnungansehen/')
def wohnungansehen():
	return render_template('wohnungsansicht.html')

@app.route('/wohnungansehen/<int:id>')
def wohnungansehenEingeloggt(id):
	sql_query = f'SELECT * FROM todos WHERE id={id}'
	pass

@app.route('/wohnunginserieren/')
def wohnunginserieren():
    if 'logged_in' in session:
        return render_template('inserierung.html') # Render the inserierung.html page if the user is logged in
    else:
        return redirect('/login') # Redirect to the login page if the user is not logged in


@app.route('/forum/')
def forum():
	pass

@app.route('/inbox')
def inboxWithoutLogin():
	return render_template('login.html')

@app.route('/inbox/<int:id>')
def inbox():
	pass

