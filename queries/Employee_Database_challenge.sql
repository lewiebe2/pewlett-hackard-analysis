-- Deliverable 1: : The Number of Retiring Employees by Title

-- Joining employees and titles tables into new retirement_titles table (LEFT JOIN)
SELECT em.emp_no,
    em.first_name,
	em.last_name,
    tt.title,
    tt.from_date,
    tt.to_date
INTO retirement_titles
FROM employees as em
LEFT JOIN titles as tt
ON em.emp_no = tt.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY em.emp_no;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
    rt.first_name,
	rt.last_name,
    rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

-- Create retiring_titles table.
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles;

-- Deliverable 2: The Employees Eligible for the Mentorship Program

-- Create mentorship_eligibility table.
SELECT DISTINCT ON (em.emp_no) em.emp_no,
    em.first_name,
	em.last_name,
    em.birth_date,
    de.from_date,
    de.to_date,
    tt.title
INTO mentorship_eligibilty
FROM employees as em
LEFT JOIN dept_emp as de ON em.emp_no = de.emp_no
LEFT JOIN titles as tt ON em.emp_no= tt.emp_no
WHERE (to_date = ('9999-01-01')) 
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
ORDER BY emp_no;



