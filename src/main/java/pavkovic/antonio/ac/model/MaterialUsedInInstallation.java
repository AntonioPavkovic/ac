package pavkovic.antonio.ac.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class MaterialUsedInInstallation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private BigDecimal copperPipe1Diameter;
    private BigDecimal copperPipe2Diameter;
    private Integer copperPipe1Length;
    private Integer copperPipe2Length;
    private Integer communicationCableLength;
    private Integer powerSupplyCableLength;
    private Integer waterDrainHoseLength;

    @OneToOne
    @JoinColumn(name = "installation_id")
    private ACInstallation installation;
}
