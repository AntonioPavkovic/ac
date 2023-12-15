package pavkovic.antonio.ac.service;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import pavkovic.antonio.ac.dto.request.ACInstallationRequestDTO;
import pavkovic.antonio.ac.dto.response.ACInstallationResponseDTO;
import pavkovic.antonio.ac.exception.ACInstallationNotFoundException;
import pavkovic.antonio.ac.mapper.ACInstallationMapper;
import pavkovic.antonio.ac.model.ACInstallation;
import pavkovic.antonio.ac.repository.ACInstallationRepository;

import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class ACInstallationService {
    private final ACInstallationRepository acInstallationRepository;
    private final ACInstallationMapper acInstallationMapper;

    public ACInstallationResponseDTO createACInstallation(ACInstallationRequestDTO requestDTO) {
        ACInstallation acInstallation = acInstallationMapper.toEntity(requestDTO);
        ACInstallation savedInstallation = acInstallationRepository.save(acInstallation);
        return acInstallationMapper.toResponseDTO(savedInstallation);
    }

    public List<ACInstallationResponseDTO> getAllACInstallations() {
        List<ACInstallation> acInstallations = acInstallationRepository.findAll();

        return acInstallations.stream()
                .map(acInstallationMapper::toResponseDTO)
                .collect(Collectors.toList());
    }

    public ACInstallationResponseDTO getACInstallationById(Long id) {
        ACInstallation acInstallation = acInstallationRepository.findById(id)
                .orElseThrow(() -> new ACInstallationNotFoundException("Installation with the id: "+ id +" was not found!"));

        return acInstallationMapper.toResponseDTO(acInstallation);
    }
}
