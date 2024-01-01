package pavkovic.antonio.ac.service;

import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
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

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
public class ACInstallationService {
    private final ACInstallationRepository acInstallationRepository;
    private final ACInstallationMapper acInstallationMapper;

    @Autowired
    public ACInstallationService (ACInstallationRepository acInstallationRepository, ACInstallationMapper acInstallationMapper) {
        this.acInstallationRepository = acInstallationRepository;
        this.acInstallationMapper = acInstallationMapper;
    }

    public ACInstallationResponseDTO createACInstallation(ACInstallationRequestDTO requestDTO) {
        ACInstallation acInstallation = acInstallationMapper.toEntity(requestDTO);
        ACInstallation savedInstallation = acInstallationRepository.save(acInstallation);
        return acInstallationMapper.toResponseDTO(savedInstallation);
    }

    public List<ACInstallationResponseDTO> getAllACInstallations(Integer pageNum, Integer pageSize, String sortBy) {
        Pageable paging = PageRequest.of(pageNum, pageSize, Sort.by(sortBy));

        Page<ACInstallation> acInstallations = acInstallationRepository.findAll(paging);

        if (acInstallations.hasContent()) {
            return acInstallations.stream()
                    .map(acInstallationMapper::toResponseDTO)
                    .collect(Collectors.toList());
        } else {
            return new ArrayList<>();
        }
    }

    public ACInstallationResponseDTO getACInstallationById(Long id) {
        ACInstallation acInstallation = acInstallationRepository.findById(id)
                .orElseThrow(() -> new ACInstallationNotFoundException("Installation with the id: "+ id +" was not found!"));

        return acInstallationMapper.toResponseDTO(acInstallation);
    }
}
