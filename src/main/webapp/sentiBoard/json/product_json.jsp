<%@page import="com.util.JdbcUtil"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%
System.out.print("product_json()..."); 
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String pMedium_ctgr_id = request.getParameter("medium_ctgr_id");

int medium_ctgr_id = Integer.parseInt(pMedium_ctgr_id);

String sql = "SELECT b.brand_name, p.pd_name, p.pd_price , img.pd_image_url "
			+ "from product p JOIN product_image img ON p.pd_id = img.pd_id "
			+ "JOIN brand b ON b.brand_id = p.brand_id "
			+ "WHERE medium_ctgr_id = ? ";



JSONObject jsonData = new JSONObject();
JSONArray jsonEmpArray = new JSONArray();

try{
    conn = ConnectionProvider.getConnection();
    pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, medium_ctgr_id);
    rs = pstmt.executeQuery();

    while(rs.next()){       
        String brand_name = rs.getString("brand_name");
        String pd_name = rs.getString("pd_name");
        int pd_price = rs.getInt("pd_price");
        String pd_image_url = rs.getString("pd_image_url");
        
        JSONObject jsonProduct = new JSONObject();
        jsonProduct.put("brand_name", brand_name);
        jsonProduct.put("pd_name", pd_name);
        jsonProduct.put("pd_price", pd_price);
        jsonProduct.put("pd_image_url", pd_image_url);
        jsonProduct.put("medium_ctgr_id", medium_ctgr_id);
       

        jsonEmpArray.add(jsonProduct);
    }

    jsonData.put("Product", jsonEmpArray);

} catch(Exception e){
    e.printStackTrace();
} finally{
    JdbcUtil.close(rs);
    JdbcUtil.close(pstmt);
    JdbcUtil.close(conn);
}

%>
<%= jsonData %>
 