package pavkovic.antonio.ac;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "pavkovic.antonio.ac.mapper")
public class AcApplication {

	public static void main(String[] args) {
		SpringApplication.run(AcApplication.class, args);
	}

}
