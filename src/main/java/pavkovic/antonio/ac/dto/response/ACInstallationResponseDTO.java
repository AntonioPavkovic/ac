package pavkovic.antonio.ac.dto.response;

import lombok.Getter;

import java.time.LocalDate;

@Getter
public class ACInstallationResponseDTO {
    private Long id;
    private LocalDate installationDate;
    private String address;
    private String room;
    private String model;
    private CustomerDTO customerResponseDTO;
    private WarrantyResponseDTO warrantyResponseDTO;
    private MaterialUsedInInstallationDTO materialUsedInInstallationDTO;
}
