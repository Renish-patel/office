package com.swarck.JDBCtemplate;

import org.springframework.jdbc.core.JdbcTemplate;

public class EmployeeDao {
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public int saveEmp(Employee e) {
		String query = "insert into employee values('" + e.getId() + "','" + e.getName() + "','" + e.getSalary() + "')";

		return jdbcTemplate.update(query);
	}

	public int updateEmp(Employee e) {
		String query = "update employee set name='" + e.getName() + "',salary='" + e.getSalary() + "' where id='"
				+ e.getId() + "' ";
		return jdbcTemplate.update(query);

	}
	
	public int deleteEmp(Employee e) {
		String query ="delete from employee where id='"+e.getId()+"' ";  
	    return jdbcTemplate.update(query);  	
	}

}
