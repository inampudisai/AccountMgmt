package com.chigurupati.dao.hotel;

import com.chigurupati.dao.hotel.hotelinterface.HotelActionDAO;
import com.chigurupati.hotel.model.HotelAccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

class TodoMapper implements RowMapper<HotelAccount> {
    public HotelAccount mapRow(ResultSet rs, int rowNum) throws SQLException {
        HotelAccount todo = new HotelAccount();
        todo.setBillNo(rs.getInt(1));
        todo.setSelectType(rs.getString(2));
        todo.setSelectDate(rs.getDate(3));
        todo.setTotalAmount(rs.getInt(4));
        return todo;
    }
}

public class SpringJDBCHotel implements HotelActionDAO {

    // private DataSource dataSource;
   // private Map<String, String> printerMap = null;

    private static final String INSERT_TODO_QUERY = "INSERT INTO hotelmgmt(bill_no,type,date,amount,isexpenditure) VALUES(?, ?, ?, ?, ?)";
    public static final String SELECT_ALL_TODOS = "SELECT * FROM TODO";
    @Autowired
    public JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void insertBillNo(HotelAccount bean) {

        jdbcTemplate.update(INSERT_TODO_QUERY, bean.getBillNo(),
                bean.getSelectType(),
                bean.getSelectDate(),
                bean.getTotalAmount(),
                'Y');

    }

    public HotelAccount findByBillNo(String billNo) {
        return null;
    }

    public List<HotelAccount> findAllBills(Date selectDate) {
        return jdbcTemplate.query(SELECT_ALL_TODOS, new TodoMapper());
    }
}
