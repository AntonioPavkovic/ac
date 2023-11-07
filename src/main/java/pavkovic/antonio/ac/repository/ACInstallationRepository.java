package pavkovic.antonio.ac.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pavkovic.antonio.ac.model.ACInstallation;

@Repository
public interface ACInstallationRepository extends JpaRepository<ACInstallation, Long> {
}
