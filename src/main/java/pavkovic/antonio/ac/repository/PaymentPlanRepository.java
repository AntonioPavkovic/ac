package pavkovic.antonio.ac.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pavkovic.antonio.ac.model.PaymentPlan;

@Repository
public interface PaymentPlanRepository extends JpaRepository<PaymentPlan, Long> {
}
