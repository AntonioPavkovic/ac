package pavkovic.antonio.ac.mapper;

import org.mapstruct.Mapper;
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

    ACInstallationResponseDTO toResponseDTO(ACInstallation acInstallation);

}
