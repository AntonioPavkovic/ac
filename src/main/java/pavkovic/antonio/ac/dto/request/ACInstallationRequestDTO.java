package pavkovic.antonio.ac.dto.request;

import lombok.Getter;
import pavkovic.antonio.ac.dto.response.CustomerResponseDTO;
import pavkovic.antonio.ac.dto.response.MaterialUsedInInstallationResponseDTO;

import java.time.LocalDate;

@Getter
public class ACInstallationRequestDTO {
    private LocalDate installationDate;
    private String address;
    private String room;
    private String model;
    private CustomerResponseDTO customerDTO;
    private MaterialUsedInInstallationResponseDTO materialUsedInInstallationDTO;
}
