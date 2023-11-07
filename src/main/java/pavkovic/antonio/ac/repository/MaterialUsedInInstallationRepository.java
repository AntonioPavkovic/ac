package pavkovic.antonio.ac.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pavkovic.antonio.ac.model.MaterialUsedInInstallation;

@Repository
public interface MaterialUsedInInstallationRepository extends JpaRepository<MaterialUsedInInstallation, Long> {
}
