use mydb;

-- Q1 FINISHED
select count(JobRole) as numFreq, JobRole
from Job_Details
where BusinessTravel = "Travel_Frequently"
group by JobRole;

#################################################

-- Q2 FINISHED
select avg(E2.DistanceFromHome) as avgDist, Department
from Job_Details J1 join EmployeeDetails E1 on J1.JobID = E1.Job_Details_JobID
join employee_Relationship E2 on E2.RelatioshipID = E1.employee_Relationship_RelatioshipID
group by Department;

#################################################

-- Q3 FINISHED
select count(E1.EmployeeID) as employeeCount
from Job_Details J1 join EmployeeDetails E1 on J1.JobID = E1.Job_Details_JobID
join employee_Relationship E2 on E1.employee_Relationship_RelatioshipID = E2.RelatioshipID
where EducationField = "Marketing" and Department = "Human Resources";

#################################################

-- Q4 FINISHED
select avg(JobSatisfaction) as avgJob, avg(EnvironmentSatisfaction) as avgEnv, Department
from employee_Relationship E1 join EmployeeDetails E2 on E1.RelatioshipID = E2.employee_Relationship_RelatioshipID
join Job_Details J1 on J1.JobID = E2.Job_Details_JobID
group by Department;

##################################################

-- Q5 FINISHED
select avg(monthlyincome) as avgInc, Department
from Employee_chargeability E1 join EmployeeDetails E2 on E1.ChargeabilityID = E2.Employee_chargeability_ChargeabilityID
join Job_Details J1 on J1.JobID = E2.Job_Details_JobID
where E2.EducationField = "Life Sciences"
group by Department;

###################################################

-- Q6 FINISHED
select avg(YearsSinceLastPromotion) as avgLP, MaritalStatus
from employee_Performance E1 join EmployeeDetails E2 on E1.PerformanceID = E2.employee_Performance_PerformanceID
join Job_Details J1 on J1.JobID = E2.Job_Details_JobID
where Department = "Research & Development" and gender = "Female"
group by MaritalStatus