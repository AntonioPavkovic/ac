package pavkovic.antonio.ac.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;
import org.springframework.stereotype.Component;
import pavkovic.antonio.ac.dto.request.ACInstallationRequestDTO;
import pavkovic.antonio.ac.dto.response.ACInstallationResponseDTO;
import pavkovic.antonio.ac.model.ACInstallation;

@Mapper
@Component
public interface ACInstallationMapper {

    ACInstallationMapper MAPPER = Mappers.getMapper(ACInstallationMapper.class);

    ACInstallation toEntity(ACInstallationRequestDTO requestDTO);

    @Mapping(source = "customer.lastName", target = "customerResponseDTO.firstName")
    @Mapping(source = "customer.phoneNumber", target = "customerResponseDTO.phoneNumber")
    @Mapping(source = "customer.email", target = "customerResponseDTO.email")

    @Mapping(source = "warranty.warrantyStartDate", target = "warrantyResponseDTO.warrantyStartDate")
    @Mapping(source = "warranty.warrantyEndDate", target = "warrantyResponseDTO.warrantyEndDate")

    @Mapping(source = "materialUsedInInstallation.copperPipe1Diameter", target = "materialUsedInInstallationDTO.copperPipe1Diameter")
    @Mapping(source = "materialUsedInInstallation.copperPipe2Diameter", target = "materialUsedInInstallationDTO.copperPipe2Diameter")
    @Mapping(source = "materialUsedInInstallation.copperPipe1Length", target = "materialUsedInInstallationDTO.copperPipe1Length")
    @Mapping(source = "materialUsedInInstallation.copperPipe2Length", target = "materialUsedInInstallationDTO.copperPipe2Length")
    @Mapping(source = "materialUsedInInstallation.communicationCableLength", target = "materialUsedInInstallationDTO.communicationCableLength")
    @Mapping(source = "materialUsedInInstallation.powerSupplyCableLength", target = "materialUsedInInstallationDTO.powerSupplyCableLength")
    @Mapping(source = "materialUsedInInstallation.waterDrainHoseLength", target = "materialUsedInInstallationDTO.waterDrainHoseLength")
    ACInstallationResponseDTO toResponseDTO(ACInstallation acInstallation);

}
