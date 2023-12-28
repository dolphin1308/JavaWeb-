package dao;

import bean.Spot;
import util.DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SpotDao {
    public boolean insert(Spot spot){
        Object[] o=new Object[]{spot.getAccount(),
                spot.getPassword(),
                spot.getDname(),
                spot.getFee(),
                spot.getAge(),
                spot.getOffice(),
                spot.getRoom(),
                spot.getCareer(),
                spot.getDescription(),
                spot.getPicpath()};
        String sql="insert into spot values(null,?,?,?,?,?,?,?,?,?,?)";
        return DBUtil.executeUpdate(sql,o);
    }
    public List<Spot> query(String where, Object[] o){
        List<Spot> spots =new ArrayList<>();
        String sql="select * from spot "+where;
        ResultSet rs=DBUtil.executeQuery(sql,o);
        try {
            while (rs.next()){
                spots.add(new Spot(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.closeAll();
        }
        return spots;
    }

    public int getSpotCount(String where, Object[] o){
        String sql="select count(*) from spot "+where;
        return DBUtil.getCount(sql,o);
    }
    public boolean update(String set, Object[] o){

        String sql="update spot "+set;
        return DBUtil.executeUpdate(sql,o);

    }
}
