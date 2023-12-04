package pavkovic.antonio.ac.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "ac_servicing")
public class ACServicing {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "service_date")
    private LocalDate serviceDate;

    @Column(name = "service_description")
    private String serviceDescription;

    @ManyToOne
    @JoinColumn(name = "installation_id")
    private ACInstallation installation;
}
