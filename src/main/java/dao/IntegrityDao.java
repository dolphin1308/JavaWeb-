package dao;

import bean.Integrity;
import util.DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class IntegrityDao {
    public boolean insert(Integrity integrity){
        Object[] o=new Object[]{integrity.getPid(),
                integrity.getDname(),
                integrity.getOffice(),
                integrity.getReason(),
                integrity.getScore()};
        String sql="insert into integrity values(null,?,?,?,now(),?,?)";
        return DBUtil.executeUpdate(sql,o);
    }
    public List<Integrity> query(String where,Object[] o) {
        List<Integrity> list=new ArrayList<>();
        String sql="select * from integrity "+where;
        ResultSet rs= DBUtil.executeQuery(sql,o);
        try {
            while (rs.next()){
                list.add(new Integrity(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.closeAll();
        }
        return list;
    }
}
