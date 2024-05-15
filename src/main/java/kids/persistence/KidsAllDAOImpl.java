package kids.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kids.domain.KidsAllDTO;
import com.util.ConnectionProvider;
import com.util.JdbcUtil;
import javax.naming.NamingException;

public class KidsAllDAOImpl implements KidsAllDAO {

    @Override
    public List<KidsAllDTO> getAllProductsByMediumCtgrId(int mediumCtgrId) {
        List<KidsAllDTO> products = new ArrayList<>();
        String sql = "SELECT * FROM products WHERE medium_ctgr_id = ?";

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = ConnectionProvider.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, mediumCtgrId);
            rs = pstmt.executeQuery();
            
            while (rs.next()) {
                KidsAllDTO product = new KidsAllDTO();
                product.setPd_id(rs.getInt("pd_id"));
                product.setPd_name(rs.getString("pd_name"));
                product.setPd_price(rs.getInt("pd_price"));
                product.setPd_info(rs.getString("pd_info"));
                product.setPd_sales_quantity(rs.getInt("pd_sales_quantity"));
                product.setPd_discount_rate(rs.getInt("pd_discount_rate"));
                product.setBrand_id(rs.getInt("brand_id"));
                product.setMain_ctgr_id(rs.getInt("main_ctgr_id"));
                product.setLarge_ctgr_id(rs.getInt("large_ctgr_id"));
                product.setMedium_ctgr_id(rs.getInt("medium_ctgr_id"));
                product.setSmall_ctgr_id(rs.getInt("small_ctgr_id"));

                products.add(product);
            }
        } catch (SQLException | NamingException e) {
            e.printStackTrace();
        } finally {
            JdbcUtil.close(rs);
            JdbcUtil.close(pstmt);
            JdbcUtil.close(conn);
        }

        return products;
    }
}