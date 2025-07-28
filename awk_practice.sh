#!/bin/bash

# awk -F, '{print $1}' data.txt

# Q.Print only the names of all employees.
#awk -F, '{print $2}' data.csv | tail -n +2

# Q.Print ID and Salary of each employee.
#awk -F, '{print $1, $4}' data.csv

# Q.Print all employees who work in the HR department.
#awk -F, '$3 == "HR" {print $0}' data.csv

# Q.Print the header (first row) only.
#awk -F, '{print $0}' data.csv | head -n 1

# Q.Print the number of fields in each row.
#awk -F, '{ print "Row " NR " has " NF " fields" }' data.csv


# Q.Print employees with Salary > 60000.
# awk -F, 'NR > 1 && $4 > 60000 {print $2, "-", $4}' data.csv

# Q.Print employees who joined after 2015.
# awk -F, 'NR > 1 && $6 > 2015 {print $2, "-", $6}' data.csv

# Q.Print names of employees older than 30.
# awk -F, 'NR > 1 && $5 > 30 {print $2, $5, "years old."}' data.csv

# Q.Print name and department for employees not in Engineering.
# awk -F, 'NR > 1 && $3 != "Engineering" {print $2, $3}' data.csv

# Q.Print only those whose name starts with ‘D’.
# awk -F, 'NR > 1 && $2 ~ /^D/ {print $2}' data.csv

# Q.Find total number of employees.
awk -F, 'NR > 1 { count++ } END{print count}' data.csv

# Q.Calculate total salary paid by the company.


# Q.Find the average age of employees.


# Q.Count employees in each department.


# Q.Find the highest and lowest salary.
