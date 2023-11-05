package pavkovic.antonio.ac.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.LocalDate;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class PaymentPlan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private BigDecimal totalAmount;
    private BigDecimal remainingAmount;
    private BigDecimal installmentAmount;
    private LocalDate dueDate;
    private Integer numberOfInstallments;

    @ManyToOne
    @JoinColumn(name = "installation_id")
    private ACInstallation installation;

}
