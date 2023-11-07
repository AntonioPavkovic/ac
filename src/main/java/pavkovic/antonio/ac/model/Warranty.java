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
public class Warranty{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private LocalDate warrantyStartDate;
    private LocalDate warrantyEndDate;

    @ManyToOne
    @JoinColumn(name = "installation_id")
    private ACInstallation installation;
}
