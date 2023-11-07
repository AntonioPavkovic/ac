package pavkovic.antonio.ac.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pavkovic.antonio.ac.model.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
}
