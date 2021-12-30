# **Employee Database Analysis**

## **Overview**

The purpose of the analysis is to determine the number of retiring employees per title and identify employees who are eligible to participate in a mentorship program, so that Pewlett Hackard can prepare for upcoming employee retirements.

## **Results**

The four major points from the two analysis deliverables are as follows:

* Current employees born between January 1, 1952 and December 31, 1955 are retiring.
* Retirements will affect seven titles.
* "Senior" titles (Senior Engineer or Senior Staff) will be the most affected by retirements.
* Current employees born between January 1, 1965 and December 31, 1965 are eligible for the mentorship program.

*Retiring Titles:*

![](resources/retiring_titles.PNG)

## **Summary**

### *How many roles will need to be filled as the "silver tsunami" begins to make an impact?*

Pewlett-Hackard will have 72,458 roles to fill as current employees born between 1952-1955 retire. 

### *Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?*

To fully answer this question, the following PostgreSQL query is run that returns the table displayed below:

    SELECT COUNT(title), title
    FROM mentorship_eligibility
    GROUP BY title
    ORDER BY count DESC;

*Mentorship Eligibility Titles:*

![](resources/mentorship_eligibility_titles.PNG)



