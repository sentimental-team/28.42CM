<%@page import="com.util.JdbcUtil"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String pdName = request.getParameter("pd_name");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String sql = "SELECT brand_name, pd_name, pd_price, pd_image_url, p.pd_id " +
             "FROM product p " +
             "JOIN brand b ON p.brand_Id = b.brand_Id " +
             "JOIN product_image i ON p.pd_id = i.pd_id " +
             "WHERE p.pd_name LIKE ?";

JSONArray jsonProductArray = new JSONArray();

try {
    conn = ConnectionProvider.getConnection();
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, "%" + pdName + "%");
    rs = pstmt.executeQuery();

    while (rs.next()) {
        String brand_name = rs.getString("brand_name");
        String pd_name = rs.getString("pd_name");
        int pd_price = rs.getInt("pd_price");
        String pd_image_url = rs.getString("pd_image_url");
        int pd_id = rs.getInt("pd_id");

        JSONObject jsonProduct = new JSONObject();
        jsonProduct.put("brand_name", brand_name);
        jsonProduct.put("pd_name", pd_name);
        jsonProduct.put("pd_price", pd_price);
        jsonProduct.put("pd_image_url", pd_image_url);
        jsonProduct.put("pd_id", pd_id);

        jsonProductArray.add(jsonProduct);
    }

} catch (Exception e) {
    e.printStackTrace();
} finally {
    JdbcUtil.close(rs);
    JdbcUtil.close(pstmt);
    JdbcUtil.close(conn);
}

out.print(jsonProductArray);
%>
