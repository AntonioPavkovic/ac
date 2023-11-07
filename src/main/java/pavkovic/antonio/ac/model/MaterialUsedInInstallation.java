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
    private double copperPipe1Diameter;
    private double copperPipe2Diameter;
    private int copperPipe1Length;
    private int copperPipe2Length;
    private int communicationCableLength;
    private int powerSupplyCableLength;
    private int waterDrainHoseLength;

    @OneToOne
    @JoinColumn(name = "installation_id")
    private ACInstallation installation;
}
