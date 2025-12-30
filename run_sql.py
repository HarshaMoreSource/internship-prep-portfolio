import sqlite3
import pathlib

db_path = pathlib.Path("sql_day1.db")
con = sqlite3.connect(db_path)
cur = con.cursor()

with open("setup.sql", "r", encoding="utf-8") as f:
    cur.executescript(f.read())   # ✅ reads full SQL file

con.commit()
print("✅ Database created/updated:", db_path.resolve())
con.close()
