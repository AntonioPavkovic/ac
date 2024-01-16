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
@Table(name = "installation")
public class Installation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "installation_date_time")
    private LocalDateTime installationDateTime;

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

    @OneToOne(mappedBy = "installation", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private MaterialUsedInInstallation materialUsedInInstallation;
}
