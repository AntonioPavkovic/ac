package pavkovic.antonio.ac.dto.request;

import lombok.Getter;
import pavkovic.antonio.ac.dto.response.CustomerDTO;
import pavkovic.antonio.ac.dto.response.MaterialUsedInInstallationDTO;

import java.time.LocalDate;

@Getter
public class ACInstallationRequestDTO {
    private LocalDate installationDate;
    private String address;
    private String room;
    private String model;
    private CustomerDTO customerDTO;
    private MaterialUsedInInstallationDTO materialUsedInInstallationDTO;
}
