# Pewlett-Hackard_Analysis
## Overview
Pewlett-Hackard is preparing for the upcoming wave of employees that are about to retire. In order to prepare they have tasked us with developing an analysis that will include:
1. The number of retiring employees per title
2. A list of employees who are eligible to participate in a mentorship program
With our analysis Pewlett-Hackard plans to gain better insight on how to adjust each department in prepartion of retiring staff as well as structure the mentorship program they plan on implementing across the company. 

## Results
The results from our analysis are as follows:
1. The list below shows the number of employees that will be retiring for each title within the company. We can see that the highest number of employees that are retiring are Senior Engineers and Senior staff.
2. Hewlett-Packard should focus on recruiting new engineers as well as promoting the existing engineers in order to fill the vacancies that will come.

![image](https://user-images.githubusercontent.com/67936161/91682614-fcb0d580-eb06-11ea-8e8d-1e72d2a90cd4.png)

3. The list below shows the number of employees that are eligible to participate in the mentorship program broken down by title. 
4. As you can see the number of eligible employees that can participate in the mentorship program is significantly lower than the number of employees that are retiring in the respective roles.

![image](https://user-images.githubusercontent.com/67936161/91683243-f02d7c80-eb08-11ea-8ffb-865a3f79cdbb.png)

## Summary

* According to our analysis Hewlett-Packard will have to prepare to fill 90,398 roles assuming that all employees that are eligible to retire will retire.
* In order to prepare for the upcoming "silver tsunami" Hewlett Packard will be implenting a mentorship program that will let employees who are eligible to retire instead take on a part time role where they train new/existing staff.
* Employees who are eligible to participate in the program are empolyees who were born in the year 1965. In order to derive the number of employees who meet this requirment we wrote the queries below:
``` 
  SELECT emp_no,
  first_name,
  last_name,
  birth_date,
  from_date,
  to_date,
  title
  INTO mentorship_eligibility
  FROM mentorship_eligibility_clean
  ORDER BY to_date DESC, emp_no

```
``` 
SELECT COUNT(emp_no), title
FROM mentorship_eligibility
GROUP BY title
ORDER BY count DESC;

```

* The end result was the below (also referenced in results section above)

![image](https://user-images.githubusercontent.com/67936161/91683243-f02d7c80-eb08-11ea-8ffb-865a3f79cdbb.png)

* Per the results it does not appear that there is enough retirement ready employees to train the next generation of employees.
