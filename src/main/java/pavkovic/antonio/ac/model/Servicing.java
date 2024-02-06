package pavkovic.antonio.ac.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "servicing")
public class Servicing {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true)
    private Long id;

    @Column(name = "service_date_time")
    private LocalDateTime serviceDateTime;

    @Column(name = "service_description")
    private String serviceDescription;


    /*
     * TODO
     * razmisliti o ideji da umjesto vezanja servisiranja klime na montazu nego na kupca
     * (sto ako nas zovne kupac, kome nismo radili klimu, za servis)
     * */

    @ManyToOne
    @JoinColumn(name = "installation_id")
    private Installation installation;
}
