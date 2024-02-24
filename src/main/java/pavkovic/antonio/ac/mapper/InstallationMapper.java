package pavkovic.antonio.ac.mapper;

import org.mapstruct.IterableMapping;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;
import org.springframework.stereotype.Component;
import pavkovic.antonio.ac.dto.request.InstallationRequestDTO;
import pavkovic.antonio.ac.dto.response.InstallationResponseDTO;
import pavkovic.antonio.ac.dto.response.MaterialResponseDTO;
import pavkovic.antonio.ac.model.Installation;
import pavkovic.antonio.ac.model.Material;

import java.util.List;

@Mapper
@Component
public interface InstallationMapper {

    InstallationMapper MAPPER = Mappers.getMapper(InstallationMapper.class);

    Installation toEntity(InstallationRequestDTO requestDTO);

    @Mapping(source = "installation.customer", target = "customerResponseDTO")
    @Mapping(source = "installation.warranty", target = "warrantyResponseDTO")
    @Mapping(source = "installation.materials", target = "materialResponseDTO")
    InstallationResponseDTO toResponseDTO(Installation installation);

}
