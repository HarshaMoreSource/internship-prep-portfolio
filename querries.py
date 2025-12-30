import sqlite3

con = sqlite3.connect("sql_day1.db")
cur = con.cursor()

q = "SELECT request_id, title FROM Requests WHERE status = 'Open' AND priority = 'High'; "   # <-- change this line for each querry
cur.execute(q)

rows = cur.fetchall()
for r in rows:
    print(r)

con.close()
