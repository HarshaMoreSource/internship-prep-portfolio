# Day 1 — SQL Basics Practice (SQLite)

## Dataset
Tables: Employees, Projects, Requests
---

## Queries + Outputs

### Q1) View all employees
```sql
SELECT * FROM Employees;
```
**Output:**
```text
(1, 'Harsha More', 'Intern', 'Engineering Solutions', 'Jersey City')
(2, 'Mohit Gujarati', 'Intern', 'Engineering Solutions', 'Jersey City')
(3, 'Ava Johnson', 'Developer', 'Apps', 'New York')
(4, 'Liam Chen', 'Data Analyst', 'Data', 'Newark')
(5, 'Sophia Patel', 'IT Support', 'HW/SW', 'Jersey City')
(6, 'Noah Rivera', 'PM', 'Operations', 'New York')
```
---

### Q2) View only names and teams
```sql
SELECT full_name, team FROM Employees;
```
**Output:**
```text
('Harsha More', 'Engineering Solutions')
('Mohit Gujarati', 'Engineering Solutions')
('Ava Johnson', 'Apps')
('Liam Chen', 'Data')
('Sophia Patel', 'HW/SW')
('Noah Rivera', 'Operations')
```
---

### Q3) Filter: employees in Jersey City
```sql
SELECT full_name, role
FROM Employees
WHERE location = 'Jersey City';
```
**Output:**
```text
('Harsha More', 'Intern')
('Mohit Gujarati', 'Intern')
('Sophia Patel', 'IT Support')
```
---

### Q4) Sort: requests by created date (newest first)
```sql
SELECT request_id, created_at, status, priority
FROM Requests
ORDER BY created_at DESC;
```
**Output:**
```text
(107, '2026-03-14', 'Closed', 'High')
(106, '2026-03-13', 'In Progress', 'High')
(105, '2026-03-13', 'Open', 'Low')
(104, '2026-03-12', 'Closed', 'Medium')
(103, '2026-03-12', 'Open', 'High')
(102, '2026-03-11', 'Closed', 'Low')
(101, '2026-03-11', 'In Progress', 'Medium')
(100, '2026-03-10', 'Open', 'High')
```
---

### Q5) Filter: only High priority requests
```sql
SELECT request_id, title, status
FROM Requests
WHERE priority = 'High';
```
**Output:**
```text
(100, 'Fix permissions for project site', 'Open')
(103, 'Laptop VPN not connecting', 'Open')
(106, 'Fix refresh error from SQL source', 'In Progress')
(107, 'Set up dev VM and access controls', 'Closed')
```
---

### Q6) Filter: Open AND High
```sql
SELECT request_id, title FROM Requests WHERE status = 'Open' AND priority = 'High';
```

**Output:**
```text
(100, 'Fix permissions for project site')
(103, 'Laptop VPN not connecting')
```
---

### Q7) IN: statuses Open or In Progress
```sql
SELECT request_id, title, status
FROM Requests
WHERE status IN ('Open', 'In Progress');
```

**Output:**
```text
(100, 'Fix permissions for project site', 'Open')
(101, 'Update intranet home page banner', 'In Progress')
(103, 'Laptop VPN not connecting', 'Open')
(105, 'Test Kahua form changes', 'Open')
(106, 'Fix refresh error from SQL source', 'In Progress')
```
---

### Q8) NULL check: requests without a project
```sql
SELECT request_id, title, project_id
FROM Requests
WHERE project_id IS NULL;
```

**Output:**
```text
(103, 'Laptop VPN not connecting', None)
```
---

### Q9) LIKE: titles containing “Fix”
```sql
SELECT request_id, title
FROM Requests
WHERE title LIKE '%Fix%';
```

**Output:**
```text
(100, 'Fix permissions for project site')
(106, 'Fix refresh error from SQL source')
```

### Q10) LIMIT: show 3 requests only
```sql
SELECT request_id, title
FROM Requests
LIMIT 3;
```

**Output:**
```text
(100, 'Fix permissions for project site')
(101, 'Update intranet home page banner')
(102, 'Add slicer for borough')
```
---
