package pavkovic.antonio.ac.dto;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
public class ACInstallationDTO {

    private LocalDate installationDate;

    private String address;

    private String room;

    private String model;

    private Long customerId;

}
