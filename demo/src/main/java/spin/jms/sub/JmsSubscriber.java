package spin.jms.sub;

import org.springframework.jms.annotation.JmsListener;

import spin.domain.Hello;

public class JmsSubscriber {
    @JmsListener(destination = "spin.jms.topic")
    public void listenSpinJmsTopic(Hello hello) {
        System.out.println("Received JMS topic: "+hello.getMessage());
    }
}
