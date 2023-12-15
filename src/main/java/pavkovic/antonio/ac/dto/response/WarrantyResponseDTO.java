package pavkovic.antonio.ac.dto.response;

import lombok.Getter;

import java.time.LocalDate;

@Getter
public class WarrantyResponseDTO {
    private LocalDate warrantyStartDate;
    private LocalDate warrantyEndDate;
}
