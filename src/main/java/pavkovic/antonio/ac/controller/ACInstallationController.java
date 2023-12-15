package pavkovic.antonio.ac.controller;

import lombok.RequiredArgsConstructor;
import org.apache.coyote.Response;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import pavkovic.antonio.ac.dto.request.ACInstallationRequestDTO;
import pavkovic.antonio.ac.dto.response.ACInstallationResponseDTO;
import pavkovic.antonio.ac.exception.ResponseStatusException;
import pavkovic.antonio.ac.service.ACInstallationService;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/installations")
public class ACInstallationController {
    private final ACInstallationService acInstallationService;

    @GetMapping("/")
    public ResponseEntity<List<ACInstallationResponseDTO>> getAllACInstallations() {
        List<ACInstallationResponseDTO> responseDTOs = acInstallationService.getAllACInstallations();
        return new ResponseEntity<>(responseDTOs, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<ACInstallationResponseDTO> getACInstallationById(@PathVariable("id") Long id) {
        ACInstallationResponseDTO responseDTO = acInstallationService.getACInstallationById(id);
        return new ResponseEntity<>(responseDTO, HttpStatus.OK);
    }

    @PostMapping()
    public ResponseEntity<ACInstallationResponseDTO> createACInstallation(@RequestBody ACInstallationRequestDTO requestDTO) {
        try {
            ACInstallationResponseDTO responseDTO = acInstallationService.createACInstallation(requestDTO);
            return new ResponseEntity<>(responseDTO, HttpStatus.CREATED);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to create an AC installation", e);
        }
    }
}
