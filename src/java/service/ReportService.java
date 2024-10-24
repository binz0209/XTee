package service;

import java.util.List;

import dao.ReportDAO;
import model.Report;

public class ReportService {

    private ReportDAO reportDAO;

    public ReportService() {
        reportDAO = new ReportDAO();
    }

    // Tạo một báo cáo mới
    public boolean createReport(Report report) throws Exception {
        return reportDAO.createReport(report);
    }

    // Lấy tất cả báo cáo
    public List<Report> getAllReports() throws Exception {
        return reportDAO.getAllReports();
    }

    // Xóa một báo cáo
    public boolean deleteReport(int reportId) throws Exception {
        return reportDAO.deleteReport(reportId);
    }

    // Cập nhật trạng thái của một báo cáo
    public boolean updateReportStatus(int reportId, String status) throws Exception {
        return reportDAO.updateReportStatus(reportId, status);
    }
    
}
