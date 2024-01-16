package pavkovic.antonio.ac.dto.request;

import lombok.Getter;
import pavkovic.antonio.ac.dto.response.CustomerResponseDTO;
import pavkovic.antonio.ac.dto.response.MaterialUsedInInstallationResponseDTO;


import java.time.LocalDateTime;

@Getter
public class InstallationRequestDTO {
    private LocalDateTime installationDateTime;
    private String address;
    private String room;
    private String model;
    private CustomerResponseDTO customerDTO;
    private MaterialUsedInInstallationResponseDTO materialUsedInInstallationDTO;
}
