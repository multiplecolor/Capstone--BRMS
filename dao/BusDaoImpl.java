package com.revature.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.SQLException;
import com.revature.dao.BusDao;
import com.revature.model.Bus;
import com.revature.config.DatabaseConnection;


public class BusDaoImpl implements BusDao{
	static Connection con = DatabaseConnection.getConnection();
	
	@Override
	public int add(Bus bus) throws SQLException {
		// TODO Auto-generated method stub
		String query = "insert into bus VALUES (?, ?, ?, ?)";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1, bus.getBusId());
		ps.setString(2, bus.getBusRegNum());
		ps.setInt(3, bus.getCapacity() );
		ps.setString(4, bus. getType());
		int n = ps.executeUpdate();
		return n;
//		return 0;
	}

	@Override
	public int delete(String busId) throws SQLException {
		// TODO Auto-generated method stub
		String query = "delete from bus where bus_id =?";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1, busId);
		ps.executeUpdate();
		return 0;
	}

	@Override
	public Bus getBus(String busId) throws SQLException {
		// TODO Auto-generated method stub
		String query = "select * from bus where bus_id= ?";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1, busId);
		//ps.execute();
		
		Bus bus = new Bus();
		ResultSet rs = ps.executeQuery();
        boolean check = false;
        
        while (rs.next()) {
            check = true;
            bus.setBusId(rs.getString(1));
            bus.setBusRegNum(rs.getString(2));
            bus.setCapacity(rs.getInt(3));
            bus.setType(rs.getString(4));
        }
  
        if (check == true) {
            return bus;
        }
        else {
            return null;
	}

		//return null;
	}

	@Override
	public int update(Bus bus ,String BusId) throws SQLException {
		// TODO Auto-generated method stub
		String query = "update bus set  bus_registration_number=?, capcity=?, type=? where bus_id=?";
		PreparedStatement ps  = con.prepareStatement(query);
		//ps.setString(1, bus.getBusId());
		ps.setString(1, bus.getBusRegNum());
		ps.setInt(2, bus.getCapacity());
		ps.setString(3, bus.getType());
		ps.setString(4, BusId);
		ps.executeUpdate();
		return 0;
	}
	}

	
	