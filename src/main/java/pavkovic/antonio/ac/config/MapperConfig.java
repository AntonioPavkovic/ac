package pavkovic.antonio.ac.config;

import org.mapstruct.factory.Mappers;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import pavkovic.antonio.ac.mapper.InstallationMapper;

@Configuration
public class MapperConfig {
    @Bean
    public InstallationMapper acInstallationMapper() {
        return Mappers.getMapper(InstallationMapper.class);
    }
}
