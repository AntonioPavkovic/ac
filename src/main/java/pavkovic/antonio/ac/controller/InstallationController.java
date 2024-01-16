package pavkovic.antonio.ac.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import pavkovic.antonio.ac.dto.request.InstallationRequestDTO;
import pavkovic.antonio.ac.dto.response.InstallationResponseDTO;
import pavkovic.antonio.ac.exception.ResponseStatusException;
import pavkovic.antonio.ac.service.InstallationService;

import java.util.List;

@RestController
@RequestMapping("/api/v1/installations")
public class InstallationController {

    private final InstallationService acInstallationService;

    @Autowired
    public InstallationController(InstallationService acInstallationService) {
        this.acInstallationService = acInstallationService;
    }

    @GetMapping()
    public ResponseEntity<List<InstallationResponseDTO>> getAllACInstallations(
            @RequestParam(defaultValue = "0") Integer pageNum,
            @RequestParam(defaultValue = "10") Integer pageSize,
            @RequestParam(defaultValue = "id") String sortBy
    ) {

        List<InstallationResponseDTO> acInstallationResponseDTOs = acInstallationService.getAllACInstallations(pageNum, pageSize, sortBy);
        return new ResponseEntity<>(acInstallationResponseDTOs, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<InstallationResponseDTO> getACInstallationById(@PathVariable("id") Long id) {
        InstallationResponseDTO responseDTO = acInstallationService.getACInstallationById(id);
        return new ResponseEntity<>(responseDTO, HttpStatus.OK);
    }

    @PostMapping()
    public ResponseEntity<InstallationResponseDTO> createACInstallation(@RequestBody InstallationRequestDTO requestDTO) {
        try {
            InstallationResponseDTO responseDTO = acInstallationService.createACInstallation(requestDTO);
            return new ResponseEntity<>(responseDTO, HttpStatus.CREATED);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to create an AC installation", e);
        }
    }
}
