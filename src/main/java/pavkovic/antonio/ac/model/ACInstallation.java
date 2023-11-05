package pavkovic.antonio.ac.model;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ACInstallation {

    private Long id;
    private Date installationDate;
    private String address;
    private String room;
    private String model;

    @ManyToOne
    @JoinColumn(name = "customer_id")
    private Customer customer;

}
