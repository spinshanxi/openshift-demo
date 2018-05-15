package spin.jms.pub;

import spin.domain.Hello;

public interface JmsPublisher {
    void publish(Hello hello);
}
