package pavkovic.antonio.ac.dto.response;


import java.time.LocalDate;


public class WarrantyResponseDTO {
    private LocalDate warrantyStartDate;
    private LocalDate warrantyEndDate;

    public LocalDate getWarrantyStartDate() {
        return warrantyStartDate;
    }

    public void setWarrantyStartDate(LocalDate warrantyStartDate) {
        this.warrantyStartDate = warrantyStartDate;
    }

    public LocalDate getWarrantyEndDate() {
        return warrantyEndDate;
    }

    public void setWarrantyEndDate(LocalDate warrantyEndDate) {
        this.warrantyEndDate = warrantyEndDate;
    }

    public WarrantyResponseDTO() {
    }

    public WarrantyResponseDTO(LocalDate warrantyStartDate, LocalDate warrantyEndDate) {
        this.warrantyStartDate = warrantyStartDate;
        this.warrantyEndDate = warrantyEndDate;
    }
}
