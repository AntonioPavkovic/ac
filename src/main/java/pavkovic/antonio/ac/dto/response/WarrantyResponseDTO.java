package pavkovic.antonio.ac.dto.response;

import java.time.LocalDateTime;

public class WarrantyResponseDTO {

    private LocalDateTime warrantyStartDateTime;
    private LocalDateTime warrantyEndDateTime;

    public WarrantyResponseDTO() {
    }

    public WarrantyResponseDTO(LocalDateTime warrantyStartDateTime, LocalDateTime warrantyEndDateTime) {
        this.warrantyStartDateTime = warrantyStartDateTime;
        this.warrantyEndDateTime = warrantyEndDateTime;
    }

    public LocalDateTime getWarrantyStartDateTime() {
        return warrantyStartDateTime;
    }

    public void setWarrantyStartDateTime(LocalDateTime warrantyStartDateTime) {
        this.warrantyStartDateTime = warrantyStartDateTime;
    }

    public LocalDateTime getWarrantyEndDateTime() {
        return warrantyEndDateTime;
    }

    public void setWarrantyEndDateTime(LocalDateTime warrantyEndDateTime) {
        this.warrantyEndDateTime = warrantyEndDateTime;
    }

}
