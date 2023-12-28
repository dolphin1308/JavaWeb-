package dao;

import bean.NumSource;
import bean.WorkDay;
import util.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class  NumSourceDao {
    public boolean order(String pid, String did, NumSource numSource){//病人id,号源id
        String sql ="insert into recode values(null,?,?,?,?,?,?,?,now(),'成功')";
        Object[] o=new Object[]{pid,numSource.getState(),did,
                numSource.getSerialnumber(),
                numSource.getVisitdate(),
                numSource.getVisitnoon(),
                numSource.getVisittime()};
        return DBUtil.executeUpdate(sql, o);
    }
    public List<NumSource> query(String where, Object[] o){
        WorkDayDao workDayDao=new WorkDayDao();
        List<WorkDay> workDays = workDayDao.query(where, o);
        WorkDay workDay = workDays.get(0);
        int nsnum = Integer.valueOf(workDay.getNsnum());

        List<NumSource> list=new ArrayList<>();
        //String where
        String sql="select id,workdayid,serialnumber,date_format(nstime,'%H:%i'),state from numsource  "+where;
        ResultSet rs=DBUtil.executeQuery(sql,o);
        try {
            while (rs.next()){
                list.add(new NumSource(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.closeAll();
        }
        return list;
    }
    public boolean update(String where, Object[] o){
        String sql="update  numsource "+where ;
        return DBUtil.executeUpdate(sql,o);
    }
}
