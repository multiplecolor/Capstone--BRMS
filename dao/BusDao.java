package com.revature.dao;
import java.sql.SQLException;
import java.util.List;
import com.revature.model.Bus;

public interface BusDao {
	
	public int add(Bus bus) throws SQLException;

	public int delete(String busId) throws SQLException;

	public Bus getBus(String busId) throws SQLException;

	public int update(Bus bus,String busId ) throws SQLException;
}





