package pavkovic.antonio.ac.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import pavkovic.antonio.ac.dto.ACInstallationDTO;
import pavkovic.antonio.ac.exception.InstallationNotFoundException;
import pavkovic.antonio.ac.model.ACInstallation;
import pavkovic.antonio.ac.service.ACInstallationService;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/installations")
public class ACInstallationController {

    private final ACInstallationService acInstallationService;

    @GetMapping()
    public ResponseEntity<List<ACInstallation>> getAllInstallations(
            @RequestParam(defaultValue = "0") Integer pageNum,
            @RequestParam(defaultValue = "10") Integer pageSize,
            @RequestParam(defaultValue = "id") String sortBy
    ) {

        List<ACInstallation> acInstallations = acInstallationService.getAllInstallations(pageNum, pageSize, sortBy);

        return new ResponseEntity<>(acInstallations, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<ACInstallation> getInstallationById(@PathVariable("id") Long id) {
        ACInstallation acInstallation = acInstallationService.getInstallationById(id);

        return new ResponseEntity<>(acInstallation, HttpStatus.OK);
    }

    @PostMapping()
    public ResponseEntity<ACInstallation> createInstallation(@RequestBody ACInstallationDTO acInstallationDTO) {
        ACInstallation createdInstallation = acInstallationService.createACInstallation(acInstallationDTO);

        return new ResponseEntity<>(createdInstallation, HttpStatus.CREATED);
    }

}
