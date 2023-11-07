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
public class Payment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private LocalDate paymentDate;
    private BigDecimal amount;
    private String currency;
    private String paymentMethod;
    private int installmentNumber;

    @ManyToOne
    @JoinColumn(name = "installation_id")
    private ACInstallation installation;
}
