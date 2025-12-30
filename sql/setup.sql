-- Day 1 SQL Practice Dataset (Engineering-style)

DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Projects;
DROP TABLE IF EXISTS Requests;

CREATE TABLE Employees (
  emp_id     INTEGER PRIMARY KEY,
  full_name  TEXT NOT NULL,
  role       TEXT NOT NULL,
  team       TEXT NOT NULL,
  location   TEXT NOT NULL
);

CREATE TABLE Projects (
  project_id   INTEGER PRIMARY KEY,
  project_name TEXT NOT NULL,
  platform     TEXT NOT NULL,
  start_date   TEXT NOT NULL
);

CREATE TABLE Requests (
  request_id   INTEGER PRIMARY KEY,
  created_at   TEXT NOT NULL,
  status       TEXT NOT NULL,
  priority     TEXT NOT NULL,
  requester_id INTEGER NOT NULL,
  project_id   INTEGER,
  hours_spent  REAL,
  category     TEXT NOT NULL,
  title        TEXT NOT NULL,
  FOREIGN KEY (requester_id) REFERENCES Employees(emp_id),
  FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

INSERT INTO Employees(emp_id, full_name, role, team, location) VALUES
(1, 'Harsha More', 'Intern', 'Engineering Solutions', 'Jersey City'),
(2, 'Mohit Gujarati', 'Intern', 'Engineering Solutions', 'Jersey City'),
(3, 'Ava Johnson', 'Developer', 'Apps', 'New York'),
(4, 'Liam Chen', 'Data Analyst', 'Data', 'Newark'),
(5, 'Sophia Patel', 'IT Support', 'HW/SW', 'Jersey City'),
(6, 'Noah Rivera', 'PM', 'Operations', 'New York');

INSERT INTO Projects(project_id, project_name, platform, start_date) VALUES
(10, 'EOL SharePoint Refresh', 'SharePoint', '2026-01-10'),
(11, 'Power BI Cost Dashboard', 'Power BI', '2026-02-01'),
(12, 'Kahua Workflow Upgrade', 'Kahua', '2026-02-15'),
(13, 'Azure Data Lake POC', 'Azure', '2026-03-05');

INSERT INTO Requests(request_id, created_at, status, priority, requester_id, project_id, hours_spent, category, title) VALUES
(100, '2026-03-10', 'Open',        'High',   6, 10, 2.5,  'SharePoint', 'Fix permissions for project site'),
(101, '2026-03-11', 'In Progress', 'Medium', 3, 10, 1.0,  'SharePoint', 'Update intranet home page banner'),
(102, '2026-03-11', 'Closed',      'Low',    4, 11, 3.0,  'Power BI',   'Add slicer for borough'),
(103, '2026-03-12', 'Open',        'High',   5, NULL, 0.5,'Support',    'Laptop VPN not connecting'),
(104, '2026-03-12', 'Closed',      'Medium', 4, 13, 4.0,  'Azure',      'Prototype storage account access'),
(105, '2026-03-13', 'Open',        'Low',    3, 12, NULL, 'SaaS',       'Test Kahua form changes'),
(106, '2026-03-13', 'In Progress', 'High',   6, 11, 2.0,  'Power BI',   'Fix refresh error from SQL source'),
(107, '2026-03-14', 'Closed',      'High',   5, 13, 6.5,  'Azure',      'Set up dev VM and access controls');
