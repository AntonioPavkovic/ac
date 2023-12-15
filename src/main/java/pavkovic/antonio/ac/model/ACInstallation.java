package pavkovic.antonio.ac.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
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
@Table(name = "ac_installation")
public class ACInstallation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "installation_date")
    private LocalDate installationDate;

    @Column(name = "address")
    private String address;

    @Column(name = "room")
    private String room;

    @Column(name = "model")
    private String model;

    @ManyToOne
    @JoinColumn(name = "customer_id")
    private Customer customer;

    @OneToOne(mappedBy = "installation", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Warranty warranty;
}
