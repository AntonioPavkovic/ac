package pavkovic.antonio.ac.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


import java.time.LocalDateTime;


@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "payment_plan", uniqueConstraints = {
        @UniqueConstraint(columnNames = {"total_amount", "due_date_time"})
})
public class PaymentPlan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true)
    private Long id;

    @Column(name = "total_amount")
    private double totalAmount;

    @Column(name = "remaining_amount")
    private double remainingAmount;

    @Column(name = "installment_amount")
    private double installmentAmount;

    @Column(name = "due_date_time")
    private LocalDateTime dueDateTime;

    @Column(name = "number_of_installments")
    private int numberOfInstallments;

    @ManyToOne
    @JoinColumn(name = "installation_id")
    private Installation installation;

}
