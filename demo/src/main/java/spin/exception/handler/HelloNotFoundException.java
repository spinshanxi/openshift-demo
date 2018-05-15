package spin.exception.handler;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND, reason = "Hello Object Not Found")
public class HelloNotFoundException extends RuntimeException {
}
