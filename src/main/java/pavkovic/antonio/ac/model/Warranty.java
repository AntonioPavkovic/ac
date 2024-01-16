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
@Table(name = "warranty")
public class Warranty{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "warranty_start_date_time")
    private LocalDateTime warrantyStartDateTime;

    @Column(name = "warranty_end_date_time")
    private LocalDateTime warrantyEndDateTime;

    @OneToOne
    @JoinColumn(name = "installation_id", referencedColumnName = "id")
    private Installation installation;
}
