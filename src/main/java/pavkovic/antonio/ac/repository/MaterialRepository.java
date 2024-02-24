package pavkovic.antonio.ac.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pavkovic.antonio.ac.model.Material;

public interface MaterialRepository extends JpaRepository<Material, Long> {
}
