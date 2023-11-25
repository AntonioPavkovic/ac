package pavkovic.antonio.ac.dto;


import java.math.BigDecimal;

public interface InstallationCostCalculator {

    BigDecimal calculateInstallationCost(ACInstallationDTO acInstallationDTO);

}
