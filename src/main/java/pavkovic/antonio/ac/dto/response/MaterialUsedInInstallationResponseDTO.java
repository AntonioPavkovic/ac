package pavkovic.antonio.ac.dto.response;

public class MaterialUsedInInstallationResponseDTO {
    private double copperPipe1Diameter;
    private double copperPipe2Diameter;
    private double copperPipe1Length;
    private double copperPipe2Length;
    private double communicationCableLength;
    private double powerSupplyCableLength;
    private double waterDrainHoseLength;

    public MaterialUsedInInstallationResponseDTO() {
    }

    public MaterialUsedInInstallationResponseDTO(double copperPipe1Diameter, double copperPipe2Diameter, double copperPipe1Length, double copperPipe2Length, double communicationCableLength, double powerSupplyCableLength, double waterDrainHoseLength) {
        this.copperPipe1Diameter = copperPipe1Diameter;
        this.copperPipe2Diameter = copperPipe2Diameter;
        this.copperPipe1Length = copperPipe1Length;
        this.copperPipe2Length = copperPipe2Length;
        this.communicationCableLength = communicationCableLength;
        this.powerSupplyCableLength = powerSupplyCableLength;
        this.waterDrainHoseLength = waterDrainHoseLength;
    }

    public double getCopperPipe1Diameter() {
        return copperPipe1Diameter;
    }

    public void setCopperPipe1Diameter(double copperPipe1Diameter) {
        this.copperPipe1Diameter = copperPipe1Diameter;
    }

    public double getCopperPipe2Diameter() {
        return copperPipe2Diameter;
    }

    public void setCopperPipe2Diameter(double copperPipe2Diameter) {
        this.copperPipe2Diameter = copperPipe2Diameter;
    }

    public double getCopperPipe1Length() {
        return copperPipe1Length;
    }

    public void setCopperPipe1Length(double copperPipe1Length) {
        this.copperPipe1Length = copperPipe1Length;
    }

    public double getCopperPipe2Length() {
        return copperPipe2Length;
    }

    public void setCopperPipe2Length(double copperPipe2Length) {
        this.copperPipe2Length = copperPipe2Length;
    }

    public double getCommunicationCableLength() {
        return communicationCableLength;
    }

    public void setCommunicationCableLength(double communicationCableLength) {
        this.communicationCableLength = communicationCableLength;
    }

    public double getPowerSupplyCableLength() {
        return powerSupplyCableLength;
    }

    public void setPowerSupplyCableLength(double powerSupplyCableLength) {
        this.powerSupplyCableLength = powerSupplyCableLength;
    }

    public double getWaterDrainHoseLength() {
        return waterDrainHoseLength;
    }

    public void setWaterDrainHoseLength(double waterDrainHoseLength) {
        this.waterDrainHoseLength = waterDrainHoseLength;
    }
}
