package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Advertisement;
import utils.DBConnection;

public class AdvertisementDAO {

    // Hàm lấy tất cả quảng cáo từ database
    public List<Advertisement> getAllAdvertisements() throws Exception {
        List<Advertisement> ads = new ArrayList<>();
        String sql = "SELECT * FROM Advertisements";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Advertisement ad = new Advertisement();
                ad.setAdId(rs.getInt("adId"));
                ad.setUserId(rs.getInt("userId"));
                ad.setPostId(rs.getInt("postId"));
                ad.setCampaignName(rs.getString("campaignName"));
                ad.setStartDate(rs.getDate("startDate"));
                ad.setEndDate(rs.getDate("endDate"));
                ad.setAdContent(rs.getString("adContent"));
                ad.setAdType(rs.getString("adType"));
                ad.setClicksCount(rs.getInt("clicksCount"));
                ad.setViewsCount(rs.getInt("viewsCount"));
                ad.setBudget(rs.getDouble("budget"));
                ad.setStatus(rs.getString("status"));

                ads.add(ad);
            }
        } catch (SQLException e) {
            throw new Exception("Error while fetching advertisements: " + e.getMessage(), e);
        }

        return ads;
    }

    // Hàm thêm quảng cáo vào database
    public boolean addAdvertisement(Advertisement ad) throws Exception {
        String sql = "INSERT INTO Advertisements (userId, postId, campaignName, startDate, endDate, adContent, adType, clicksCount, viewsCount, budget, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, ad.getUserId());
            ps.setInt(2, ad.getPostId());
            ps.setString(3, ad.getCampaignName());
            ps.setDate(4, new java.sql.Date(ad.getStartDate().getTime()));
            ps.setDate(5, new java.sql.Date(ad.getEndDate().getTime()));
            ps.setString(6, ad.getAdContent());
            ps.setString(7, ad.getAdType());
            ps.setInt(8, ad.getClicksCount());
            ps.setInt(9, ad.getViewsCount());
            ps.setDouble(10, ad.getBudget());
            ps.setString(11, ad.getStatus());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while adding advertisement: " + e.getMessage(), e);
        }
    }

    // Hàm cập nhật quảng cáo trong database
    public boolean updateAdvertisement(Advertisement ad) throws Exception {
        String sql = "UPDATE Advertisements SET userId = ?, postId = ?, campaignName = ?, startDate = ?, endDate = ?, adContent = ?, adType = ?, clicksCount = ?, viewsCount = ?, budget = ?, status = ? WHERE adId = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, ad.getUserId());
            ps.setInt(2, ad.getPostId());
            ps.setString(3, ad.getCampaignName());
            ps.setDate(4, new java.sql.Date(ad.getStartDate().getTime()));
            ps.setDate(5, new java.sql.Date(ad.getEndDate().getTime()));
            ps.setString(6, ad.getAdContent());
            ps.setString(7, ad.getAdType());
            ps.setInt(8, ad.getClicksCount());
            ps.setInt(9, ad.getViewsCount());
            ps.setDouble(10, ad.getBudget());
            ps.setString(11, ad.getStatus());
            ps.setInt(12, ad.getAdId());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while updating advertisement: " + e.getMessage(), e);
        }
    }

    // Hàm xóa quảng cáo từ database
    public boolean deleteAdvertisement(int adId) throws Exception {
        String sql = "DELETE FROM Advertisements WHERE adId = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, adId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new Exception("Error while deleting advertisement: " + e.getMessage(), e);
        }
    }

    // Hàm lấy quảng cáo theo ID
    public Advertisement getAdvertisementById(int adId) throws Exception {
        Advertisement ad = null;
        String sql = "SELECT * FROM Advertisements WHERE adId = ?";

        try (Connection conn = new DBConnection().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, adId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                ad = new Advertisement();
                ad.setAdId(rs.getInt("adId"));
                ad.setUserId(rs.getInt("userId"));
                ad.setPostId(rs.getInt("postId"));
                ad.setCampaignName(rs.getString("campaignName"));
                ad.setStartDate(rs.getDate("startDate"));
                ad.setEndDate(rs.getDate("endDate"));
                ad.setAdContent(rs.getString("adContent"));
                ad.setAdType(rs.getString("adType"));
                ad.setClicksCount(rs.getInt("clicksCount"));
                ad.setViewsCount(rs.getInt("viewsCount"));
                ad.setBudget(rs.getDouble("budget"));
                ad.setStatus(rs.getString("status"));
            }
        } catch (SQLException e) {
            throw new Exception("Error while fetching advertisement: " + e.getMessage(), e);
        }

        return ad;
    }
}
