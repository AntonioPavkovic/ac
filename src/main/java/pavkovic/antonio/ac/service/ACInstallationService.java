package pavkovic.antonio.ac.service;

import lombok.AllArgsConstructor;
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

import java.time.LocalDate;

@Service
@AllArgsConstructor
public class ACInstallationService {

    private final ACInstallationRepository acInstallationRepository;
    private final WarrantyRepository warrantyRepository;
    private CustomerRepository customerRepository;

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

    public void addWarranty(Long installationId) {
        ACInstallation installation = acInstallationRepository.findById(installationId)
                .orElseThrow(() -> new InstallationNotFoundException("Installation not found"));

        if (installation.getWarranty() == null) {
            Warranty warranty = new Warranty();
            warranty.setWarrantyStartDate(installation.getInstallationDate());
            warranty.setWarrantyEndDate(installation.getInstallationDate().plusYears(2));
            warranty.setInstallation(installation);

            warrantyRepository.save(warranty);
        }
    }

}
