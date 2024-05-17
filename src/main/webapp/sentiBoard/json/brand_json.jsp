<%@page import="com.util.JdbcUtil"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
 System.out.print("brand_name_json()...");
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;


String sql = " SELECT brand_id, brand_name "
			+" FROM brand " 
			+" ORDER BY brand_name";


JSONObject jsonData = new JSONObject();
JSONArray jsonEmpArray = new JSONArray();

try{
    conn = ConnectionProvider.getConnection();
    pstmt = conn.prepareStatement(sql);
    rs = pstmt.executeQuery();

    while(rs.next()){
        int brandId = rs.getInt("brand_id");
        String brandName = rs.getString("brand_name");
        

        JSONObject jsonBrand = new JSONObject();
        jsonBrand.put("brandId", brandId);
        jsonBrand.put("brandName", brandName);
       

        jsonEmpArray.add(jsonBrand);
    }

    jsonData.put("brand", jsonEmpArray);

} catch(Exception e){
    e.printStackTrace();
} finally{
    JdbcUtil.close(rs);
    JdbcUtil.close(pstmt);
    JdbcUtil.close(conn);
}

%>
<%= jsonData %>