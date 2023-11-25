package pavkovic.antonio.ac.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import pavkovic.antonio.ac.dto.ACInstallationDTO;
import pavkovic.antonio.ac.exception.InstallationNotFoundException;
import pavkovic.antonio.ac.model.ACInstallation;
import pavkovic.antonio.ac.repository.ACInstallationRepository;
import pavkovic.antonio.ac.service.ACInstallationService;

import java.util.Optional;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/installations")
public class ACInstallationController {

    private final ACInstallationService acInstallationService;

    private final ACInstallationRepository repository;
    @GetMapping()
    public void getAllInstallations() {
        repository.findAll();
    }

    @PostMapping()
    public ResponseEntity<ACInstallation> createInstallation(@RequestBody ACInstallationDTO acInstallationDTO) {
        ACInstallation createdInstallation = acInstallationService.createACInstallation(acInstallationDTO);

        return new ResponseEntity<>(createdInstallation, HttpStatus.CREATED);
    }

    @PostMapping("/{installationId}/warranty")
    public ResponseEntity<String> claimWarranty(@PathVariable Long installationId) {

        try {
            acInstallationService.addWarranty(installationId);
            return ResponseEntity.ok("Warranty added successfully!");
        } catch (InstallationNotFoundException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(e.getMessage());
        }
    }
}
