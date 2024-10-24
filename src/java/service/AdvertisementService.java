package service;

import java.util.List;
import model.Advertisement;
import dao.AdvertisementDAO;

public class AdvertisementService {
    private AdvertisementDAO advertisementDAO;

    public AdvertisementService() {
        this.advertisementDAO = new AdvertisementDAO();
    }

    // Lấy tất cả quảng cáo
    public List<Advertisement> getAllAdvertisements() throws Exception {
        return advertisementDAO.getAllAdvertisements();
    }

    // Thêm quảng cáo mới
    public boolean addAdvertisement(Advertisement ad) throws Exception {
        // Có thể thêm các quy tắc nghiệp vụ hoặc kiểm tra dữ liệu ở đây
        return advertisementDAO.addAdvertisement(ad);
    }

    // Cập nhật quảng cáo
    public boolean updateAdvertisement(Advertisement ad) throws Exception {
        // Có thể thêm các quy tắc nghiệp vụ hoặc kiểm tra dữ liệu ở đây
        return advertisementDAO.updateAdvertisement(ad);
    }

    // Xóa quảng cáo
    public boolean deleteAdvertisement(int adId) throws Exception {
        // Có thể kiểm tra quảng cáo có tồn tại hay không ở đây
        return advertisementDAO.deleteAdvertisement(adId);
    }

    // Lấy quảng cáo theo ID
    public Advertisement getAdvertisementById(int adId) throws Exception {
        return advertisementDAO.getAdvertisementById(adId);
    }
}
