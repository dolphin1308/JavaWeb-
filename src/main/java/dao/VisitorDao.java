package dao;

import bean.Visitor;
import util.DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class VisitorDao {
    public boolean update(String set, Object[] o){

        String sql="update visitor "+set;
        return DBUtil.executeUpdate(sql,o);

    }
    public boolean insert(Visitor visitor){
        String sql="insert into visitor values(null,?,?,?,?,?)";
        return DBUtil.executeUpdate(sql,new Object[]{visitor.getAccount(),
                visitor.getEmail(),
                visitor.getPassword(),
                visitor.getName(),
                visitor.getIntegrity()});
    }
    public List<Visitor> query(String clounm, String where){
        List<Visitor> lists=new ArrayList<>();
        String sql="select * from visitor where "+clounm+"=?";
        ResultSet rs=DBUtil.executeQuery(sql,new Object[]{where});
        try {
            while (rs.next()){
                lists.add(new Visitor(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.closeAll();
        }
        return lists;
    }
    public ArrayList<HashMap<String, String>> patientList(String did){
        String sql="select visitor.pid, visitor.name as pname,recode.ordertime,recode.state, recode.rid,recode.serialnumber,recode.visitdate,recode.visitnoon,recode.visittime " +
                "from recode,visitor where " +
                "recode.did=? and recode.pid=visitor.pid " +
                "order by ordertime desc";
        ArrayList<HashMap<String, String>> list = DBUtil.getHashmap(sql, new Object[]{did});
        return list;
    }
}
