import pandas
import csv, sqlite3

conn = sqlite3.connect("testDB.db")
df = pandas.read_csv('course.csv')
df.to_sql('tbl_course', conn, if_exists='append',index=False)
