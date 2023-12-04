package pavkovic.antonio.ac.service;

import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import pavkovic.antonio.ac.dto.ACInstallationDTO;
import pavkovic.antonio.ac.exception.CustomerNotFoundException;
import pavkovic.antonio.ac.exception.InstallationNotFoundException;
import pavkovic.antonio.ac.model.ACInstallation;
import pavkovic.antonio.ac.model.Customer;
import pavkovic.antonio.ac.model.Warranty;
import pavkovic.antonio.ac.repository.ACInstallationRepository;
import pavkovic.antonio.ac.repository.CustomerRepository;
import pavkovic.antonio.ac.repository.WarrantyRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@AllArgsConstructor
public class ACInstallationService {

    private final ACInstallationRepository acInstallationRepository;
    private final WarrantyRepository warrantyRepository;
    private CustomerRepository customerRepository;

    public List<ACInstallation> getAllInstallations(Integer pageNum, Integer pageSize, String sortBy) {
        Pageable paging = PageRequest.of(pageNum, pageSize, Sort.by(sortBy));
        Page<ACInstallation> pagedResult = acInstallationRepository.findAll(paging);

        if (pagedResult.hasContent()) {
            return pagedResult.getContent();
        } else {
            return new ArrayList<>();
        }
    }

    public ACInstallation getInstallationById(Long id) throws InstallationNotFoundException {
        Optional<ACInstallation> acInstallation = acInstallationRepository.findById(id);

        if (acInstallation.isPresent()) {
            return acInstallation.get();
        } else {
            throw new InstallationNotFoundException("Installation with the id: " + id + " was not found!");
        }
    }

    public ACInstallation createACInstallation(ACInstallationDTO acInstallationDTO) {
        ACInstallation installation = new ACInstallation();
        installation.setInstallationDate(acInstallationDTO.getInstallationDate());
        installation.setAddress(acInstallationDTO.getAddress());
        installation.setRoom(acInstallationDTO.getRoom());
        installation.setModel(acInstallationDTO.getModel());

        Customer customer = customerRepository.findById(acInstallationDTO.getCustomerId())
                .orElseThrow(() -> new CustomerNotFoundException("Customer not found"));

        installation.setCustomer(customer);
        return acInstallationRepository.save(installation);
    }

}
