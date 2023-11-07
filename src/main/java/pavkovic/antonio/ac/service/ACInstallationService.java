package pavkovic.antonio.ac.service;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import pavkovic.antonio.ac.dto.ACInstallationDTO;
import pavkovic.antonio.ac.model.ACInstallation;
import pavkovic.antonio.ac.repository.ACInstallationRepository;

@Service
@AllArgsConstructor
public class ACInstallationService {

    private final ACInstallationRepository acInstallationRepository;


    public ACInstallation createACInstallation(ACInstallationDTO acInstallationDTO) {

        ACInstallation installation = new ACInstallation();
        installation.setInstallationDate(acInstallationDTO.getInstallationDate());
        installation.setAddress(acInstallationDTO.getAddress());
        installation.setRoom(acInstallationDTO.getRoom());
        installation.setModel(acInstallationDTO.getModel());

        return acInstallationRepository.save(installation);
    }

}
