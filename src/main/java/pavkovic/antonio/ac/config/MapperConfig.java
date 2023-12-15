package pavkovic.antonio.ac.config;

import org.mapstruct.factory.Mappers;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import pavkovic.antonio.ac.mapper.ACInstallationMapper;

@Configuration
public class MapperConfig {
    @Bean
    public ACInstallationMapper acInstallationMapper() {
        return Mappers.getMapper(ACInstallationMapper.class);
    }
}
