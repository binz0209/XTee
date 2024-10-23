package service;

import dao.AuditLogDAO;
import model.AuditLog;

import java.util.List;

public class AuditLogService {
    private AuditLogDAO auditLogDAO;

    public AuditLogService() {
        auditLogDAO = new AuditLogDAO();
    }

    // Lấy tất cả bản ghi kiểm tra
    public List<AuditLog> getAllAuditLogs() throws Exception {
        return auditLogDAO.getAllAuditLogs();
    }

    // Thêm bản ghi kiểm tra mới
    public boolean addAuditLog(AuditLog log) throws Exception {
        // Có thể thêm kiểm tra hợp lệ ở đây
        return auditLogDAO.addAuditLog(log);
    }

    // Xóa bản ghi kiểm tra theo ID
    public boolean deleteAuditLog(int logId) throws Exception {
        return auditLogDAO.deleteAuditLog(logId);
    }

    // Lấy bản ghi kiểm tra theo ID
    public AuditLog getAuditLogById(int logId) throws Exception {
        return auditLogDAO.getAuditLogById(logId);
    }
}
