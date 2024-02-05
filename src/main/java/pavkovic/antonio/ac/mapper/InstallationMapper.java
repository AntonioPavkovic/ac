package pavkovic.antonio.ac.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;
import org.springframework.stereotype.Component;
import pavkovic.antonio.ac.dto.request.InstallationRequestDTO;
import pavkovic.antonio.ac.dto.response.InstallationResponseDTO;
import pavkovic.antonio.ac.model.Installation;

@Mapper
@Component
public interface InstallationMapper {

    InstallationMapper MAPPER = Mappers.getMapper(InstallationMapper.class);

    Installation toEntity(InstallationRequestDTO requestDTO);

    @Mapping(source = "customer.lastName", target = "customerDTO.lastName")
    @Mapping(source = "customer.phoneNumber", target = "customerDTO.phoneNumber")
    @Mapping(source = "customer.email", target = "customerDTO.email")

    @Mapping(source = "warranty.warrantyStartDateTime", target = "warrantyDTO.warrantyStartDateTime")
    @Mapping(source = "warranty.warrantyEndDateTime", target = "warrantyDTO.warrantyEndDateTime")

    @Mapping(source = "materialUsedInInstallation.copperPipe1Diameter", target = "materialUsedInInstallationDTO.copperPipe1Diameter")
    @Mapping(source = "materialUsedInInstallation.copperPipe2Diameter", target = "materialUsedInInstallationDTO.copperPipe2Diameter")
    @Mapping(source = "materialUsedInInstallation.copperPipe1Length", target = "materialUsedInInstallationDTO.copperPipe1Length")
    @Mapping(source = "materialUsedInInstallation.copperPipe2Length", target = "materialUsedInInstallationDTO.copperPipe2Length")
    @Mapping(source = "materialUsedInInstallation.communicationCableLength", target = "materialUsedInInstallationDTO.communicationCableLength")
    @Mapping(source = "materialUsedInInstallation.powerSupplyCableLength", target = "materialUsedInInstallationDTO.powerSupplyCableLength")
    @Mapping(source = "materialUsedInInstallation.waterDrainHoseLength", target = "materialUsedInInstallationDTO.waterDrainHoseLength")
    InstallationResponseDTO toResponseDTO(Installation installation);

}
