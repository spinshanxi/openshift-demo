package spin.service;

import spin.domain.Hello;

public interface SpinService {
    Hello sayHello();
    Hello leaveMessage(Hello hello);
}
