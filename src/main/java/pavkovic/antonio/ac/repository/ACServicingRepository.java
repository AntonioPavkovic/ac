package pavkovic.antonio.ac.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pavkovic.antonio.ac.model.ACServicing;

@Repository
public interface ACServicingRepository extends JpaRepository<ACServicing, Long> {
}
