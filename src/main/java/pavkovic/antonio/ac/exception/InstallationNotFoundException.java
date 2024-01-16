package pavkovic.antonio.ac.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND)
public class InstallationNotFoundException extends RuntimeException {

    public InstallationNotFoundException(String message) {
        super(message);
    }

}
