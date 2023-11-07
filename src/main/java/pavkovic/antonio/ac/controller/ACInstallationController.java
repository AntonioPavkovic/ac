package pavkovic.antonio.ac.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import pavkovic.antonio.ac.dto.ACInstallationDTO;
import pavkovic.antonio.ac.model.ACInstallation;
import pavkovic.antonio.ac.service.ACInstallationService;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/installations")
public class ACInstallationController {

    private final ACInstallationService acInstallationService;

    @PostMapping()
    public ResponseEntity<ACInstallation> createInstallation(@RequestBody ACInstallationDTO acInstallationDTO) {
        ACInstallation createdInstallation = acInstallationService.createACInstallation(acInstallationDTO);

        return new ResponseEntity<>(createdInstallation, HttpStatus.CREATED);
    }
}
