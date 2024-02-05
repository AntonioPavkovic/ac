package pavkovic.antonio.ac.dto.response;

import java.time.LocalDateTime;


public class InstallationResponseDTO {
    private Long id;
    private LocalDateTime installationDateTime;
    private String address;
    private String room;
    private String model;
    private CustomerDTO customerDTO;
    private WarrantyDTO warrantyDTO;
    private MaterialUsedInInstallationDTO materialUsedInInstallationDTO;

    public InstallationResponseDTO() {
    }

    public InstallationResponseDTO(Long id, LocalDateTime installationDateTime, String address, String room, String model, CustomerDTO customerDTO, WarrantyDTO warrantyDTO, MaterialUsedInInstallationDTO materialUsedInInstallationDTO) {
        this.id = id;
        this.installationDateTime = installationDateTime;
        this.address = address;
        this.room = room;
        this.model = model;
        this.customerDTO = customerDTO;
        this.warrantyDTO = warrantyDTO;
        this.materialUsedInInstallationDTO = materialUsedInInstallationDTO;
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

    public CustomerDTO getcustomerDTO() {
        return customerDTO;
    }

    public void setCustomerDTO(CustomerDTO customerDTO) {
        this.customerDTO = customerDTO;
    }

    public WarrantyDTO getWarrantyDTO() {
        return warrantyDTO;
    }

    public void setWarrantyDTO(WarrantyDTO warrantyDTO) {
        this.warrantyDTO = warrantyDTO;
    }

    public MaterialUsedInInstallationDTO getMaterialUsedInInstallationDTO() {
        return materialUsedInInstallationDTO;
    }

    public void setMaterialUsedInInstallationDTO(MaterialUsedInInstallationDTO materialUsedInInstallationDTO) {
        this.materialUsedInInstallationDTO = materialUsedInInstallationDTO;
    }
}
