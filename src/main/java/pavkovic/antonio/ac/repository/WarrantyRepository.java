package pavkovic.antonio.ac.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pavkovic.antonio.ac.model.Warranty;

@Repository
public interface WarrantyRepository extends JpaRepository<Warranty, Long> {
}
