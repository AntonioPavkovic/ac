package pavkovic.antonio.ac.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pavkovic.antonio.ac.model.Installation;

public interface InstallationRepository extends JpaRepository<Installation, Long> {
}
