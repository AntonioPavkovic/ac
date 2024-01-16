package pavkovic.antonio.ac.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import pavkovic.antonio.ac.dto.request.InstallationRequestDTO;
import pavkovic.antonio.ac.dto.response.InstallationResponseDTO;
import pavkovic.antonio.ac.exception.InstallationNotFoundException;
import pavkovic.antonio.ac.mapper.InstallationMapper;
import pavkovic.antonio.ac.model.Installation;
import pavkovic.antonio.ac.repository.InstallationRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class InstallationService {
    private final InstallationRepository acInstallationRepository;
    private final InstallationMapper acInstallationMapper;

    @Autowired
    public InstallationService (InstallationRepository acInstallationRepository, InstallationMapper acInstallationMapper) {
        this.acInstallationRepository = acInstallationRepository;
        this.acInstallationMapper = acInstallationMapper;
    }

    public InstallationResponseDTO createACInstallation(InstallationRequestDTO requestDTO) {
        Installation acInstallation = acInstallationMapper.toEntity(requestDTO);
        Installation savedInstallation = acInstallationRepository.save(acInstallation);
        return acInstallationMapper.toResponseDTO(savedInstallation);
    }

    public List<InstallationResponseDTO> getAllACInstallations(Integer pageNum, Integer pageSize, String sortBy) {
        Pageable paging = PageRequest.of(pageNum, pageSize, Sort.by(sortBy));

        Page<Installation> acInstallations = acInstallationRepository.findAll(paging);

        if (acInstallations.hasContent()) {
            return acInstallations.stream()
                    .map(acInstallationMapper::toResponseDTO)
                    .collect(Collectors.toList());
        } else {
            return new ArrayList<>();
        }
    }

    public InstallationResponseDTO getACInstallationById(Long id) {
        Installation acInstallation = acInstallationRepository.findById(id)
                .orElseThrow(() -> new InstallationNotFoundException("Installation with the id: "+ id +" was not found!"));

        return acInstallationMapper.toResponseDTO(acInstallation);
    }
}
