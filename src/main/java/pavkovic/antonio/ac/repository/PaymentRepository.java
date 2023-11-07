package pavkovic.antonio.ac.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pavkovic.antonio.ac.model.Payment;

@Repository
public interface PaymentRepository extends JpaRepository<Payment, Long> {
}
