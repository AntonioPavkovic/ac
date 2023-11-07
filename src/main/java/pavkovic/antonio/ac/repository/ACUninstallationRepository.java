package pavkovic.antonio.ac.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pavkovic.antonio.ac.model.ACUninstallation;

@Repository
public interface ACUninstallationRepository extends JpaRepository<ACUninstallation, Long> {
}
