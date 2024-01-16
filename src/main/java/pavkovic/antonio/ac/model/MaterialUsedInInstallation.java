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
@Table(name = "material_used_in_installation")
public class MaterialUsedInInstallation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "copper_pipe1_diameter")
    private double copperPipe1Diameter;

    @Column(name = "copper_pipe2_diameter")
    private double copperPipe2Diameter;

    @Column(name = "copper_pipe1_length")
    private double copperPipe1Length;

    @Column(name = "copper_pipe2_length")
    private double copperPipe2Length;

    @Column(name = "communication_cable_length")
    private double communicationCableLength;

    @Column(name = "power_supply_cable_length")
    private double powerSupplyCableLength;

    @Column(name = "water_drain_hose_length")
    private double waterDrainHoseLength;

    @OneToOne
    @JoinColumn(name = "installation_id")
    private Installation installation;
}
