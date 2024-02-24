package pavkovic.antonio.ac.dto.response;

import pavkovic.antonio.ac.model.Material;

import java.time.LocalDateTime;
import java.util.List;

public class InstallationResponseDTO {

    private Long id;
    private LocalDateTime installationDateTime;
    private String address;
    private String room;
    private String model;
    private CustomerResponseDTO customerResponseDTO;
    private WarrantyResponseDTO warrantyResponseDTO;
    private List<MaterialResponseDTO> materialResponseDTO;

    public InstallationResponseDTO() {
    }

    public InstallationResponseDTO(Long id, LocalDateTime installationDateTime, String address, String room, String model, CustomerResponseDTO customerResponseDTO, WarrantyResponseDTO warrantyResponseDTO, List<MaterialResponseDTO> materialResponseDTO) {
        this.id = id;
        this.installationDateTime = installationDateTime;
        this.address = address;
        this.room = room;
        this.model = model;
        this.customerResponseDTO = customerResponseDTO;
        this.warrantyResponseDTO = warrantyResponseDTO;
        this.materialResponseDTO = materialResponseDTO;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDateTime getInstallationDateTime() {
        return installationDateTime;
    }

    public void setInstallationDateTime(LocalDateTime installationDateTime) {
        this.installationDateTime = installationDateTime;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public CustomerResponseDTO getCustomerResponseDTO() {
        return customerResponseDTO;
    }

    public void setCustomerResponseDTO(CustomerResponseDTO customerResponseDTO) {
        this.customerResponseDTO = customerResponseDTO;
    }

    public WarrantyResponseDTO getWarrantyResponseDTO() {
        return warrantyResponseDTO;
    }

    public void setWarrantyResponseDTO(WarrantyResponseDTO warrantyResponseDTO) {
        this.warrantyResponseDTO = warrantyResponseDTO;
    }

    public List<MaterialResponseDTO> getMaterialResponseDTO() {
        return materialResponseDTO;
    }

    public void setMaterialResponseDTO(List<MaterialResponseDTO> materialResponseDTO) {
        this.materialResponseDTO = materialResponseDTO;
    }
}
