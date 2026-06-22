namespace com.btp_be_demo;

using com.btp_be_demo as empdb from '../db/employee-dbmodel';

service EmployeeService {
    entity Employees as select from empdb.EMPLOYEE;
    entity Departments as select from empdb.DEPARTMENT;
}