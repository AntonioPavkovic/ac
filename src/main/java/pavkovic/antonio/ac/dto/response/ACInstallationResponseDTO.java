package pavkovic.antonio.ac.dto.response;



import java.time.LocalDate;


public class ACInstallationResponseDTO {
    private Long id;
    private LocalDate installationDate;
    private String address;
    private String room;
    private String model;
    private CustomerResponseDTO customerResponseDTO;
    private WarrantyResponseDTO warrantyResponseDTO;
    private MaterialUsedInInstallationResponseDTO materialUsedInInstallationDTO;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDate getInstallationDate() {
        return installationDate;
    }

    public void setInstallationDate(LocalDate installationDate) {
        this.installationDate = installationDate;
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

    public MaterialUsedInInstallationResponseDTO getMaterialUsedInInstallationDTO() {
        return materialUsedInInstallationDTO;
    }

    public void setMaterialUsedInInstallationDTO(MaterialUsedInInstallationResponseDTO materialUsedInInstallationDTO) {
        this.materialUsedInInstallationDTO = materialUsedInInstallationDTO;
    }

    public ACInstallationResponseDTO() {
    }

    public ACInstallationResponseDTO(Long id, LocalDate installationDate, String address, String room, String model, CustomerResponseDTO customerResponseDTO, WarrantyResponseDTO warrantyResponseDTO, MaterialUsedInInstallationResponseDTO materialUsedInInstallationDTO) {
        this.id = id;
        this.installationDate = installationDate;
        this.address = address;
        this.room = room;
        this.model = model;
        this.customerResponseDTO = customerResponseDTO;
        this.warrantyResponseDTO = warrantyResponseDTO;
        this.materialUsedInInstallationDTO = materialUsedInInstallationDTO;
    }
}
