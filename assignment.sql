--How many people work in the Sales department?
select
    count(*) as people_in_sales
from
    employee e
join
    department d
on
    e.department = d.id
where
    d.dept_name = 'Sales';


--List the names of all employees assigned to the 'Plan Christmas party' project.
select
    e.emp_name as employees_planning_christmas_party
from
    employee e
join
    employee_project ep
on
    e.id = ep.emp_id
join
    project p
on
    ep.project_id = p.id
where
    p.project_name = 'Plan christmas party';


--List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project.
select
    e.emp_name as warehouse_employees_watching_paint_dry
from
    employee e
join
    department d
on
    e.department = d.id
join
    employee_project ep
on
    e.id = ep.emp_id
join
    project p
on
    ep.project_id = p.id
where
    d.dept_name = 'Warehouse'
and
    p.project_name = 'Watch paint dry';


--Which projects are the Sales department employees assigned to?
select
    e.emp_name as sales_employees,
    p.project_name as project
from
    employee e
join
    department d
on
    e.department = d.id
join
    employee_project ep
on
    e.id = ep.emp_id
join
    project p
on
    ep.project_id = p.id
where
    d.dept_name = 'Sales';


--List only the managers that are assigned to the 'Watch paint dry' project.
select
    e.emp_name as managers_assigned_to_watch_paint_dry
from
    employee e
join
    department d
on
    e.department = d.id
join
    employee_project ep
on
    e.id = ep.emp_id
join
    project p
on
    ep.project_id = p.id
where
    e.id = d.manager
and
    p.project_name = 'Watch paint dry';