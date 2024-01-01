package pavkovic.antonio.ac.controller;

import lombok.RequiredArgsConstructor;
import org.apache.coyote.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import pavkovic.antonio.ac.dto.request.ACInstallationRequestDTO;
import pavkovic.antonio.ac.dto.response.ACInstallationResponseDTO;
import pavkovic.antonio.ac.exception.ResponseStatusException;
import pavkovic.antonio.ac.service.ACInstallationService;

import java.util.List;

@RestController
@RequestMapping("/api/v1/installations")
public class ACInstallationController {

    private final ACInstallationService acInstallationService;

    @Autowired
    public ACInstallationController(ACInstallationService acInstallationService) {
        this.acInstallationService = acInstallationService;
    }

    @GetMapping()
    public ResponseEntity<List<ACInstallationResponseDTO>> getAllACInstallations(
            @RequestParam(defaultValue = "0") Integer pageNum,
            @RequestParam(defaultValue = "10") Integer pageSize,
            @RequestParam(defaultValue = "id") String sortBy
    ) {

        List<ACInstallationResponseDTO> acInstallationResponseDTOs = acInstallationService.getAllACInstallations(pageNum, pageSize, sortBy);
        return new ResponseEntity<>(acInstallationResponseDTOs, HttpStatus.OK);
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
