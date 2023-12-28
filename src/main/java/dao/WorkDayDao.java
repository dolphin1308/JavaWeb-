package dao;

import bean.WorkDay;
import util.DBUtil;
import util.Util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class WorkDayDao {
    public boolean insert(WorkDay workDay) {
        Object[] o = new Object[]{
                workDay.getDid(),
                workDay.getWorktime(),
                workDay.getAmpm(),
                workDay.getNsnum(),
                workDay.getState()
        };
        String sql = "insert into workday values(null,?,?,?,?,?)";
        return DBUtil.executeUpdate(sql, o);
    }

    public List<WorkDay> query(String where, Object[] o) {
        List<WorkDay> workDays = new ArrayList<>();
        String sql = "select wid,did,worktime,ampm,nsnum,state from workday  " + where;
        ResultSet rs = DBUtil.executeQuery(sql, o);
        try {
            while (rs.next()) {
                workDays.add(new WorkDay(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeAll();
        }
        return workDays;
    }
    public List<WorkDay> queryWorkday1(String id) {
        List<WorkDay> workDays = new ArrayList<>();
        String sql = "select id,doctorid,date_format(worktime,'%m-%d') as worktime,ampm,ordernum,orderednum,state,fee  from workday " +
                " where worktime>=now() and doctorid=? order by worktime asc";
        Object[] o = new Object[]{id};
        ResultSet rs=null;
        try {
                rs= DBUtil.executeQuery(sql, o);
                while (rs.next()) {
                    workDays.add(new WorkDay(rs.getString(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6)));
                }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeAll();
        }
        return workDays;
    }
   public boolean update(String set, Object[] o){
        String sql="update workday "+set;
        return DBUtil.executeUpdate(sql,o);
   }

}
