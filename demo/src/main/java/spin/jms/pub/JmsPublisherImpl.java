package spin.jms.pub;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsOperations;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.stereotype.Component;

import spin.domain.Hello;

//@Component
public class JmsPublisherImpl implements JmsPublisher {
    private JmsTemplate jmsTemplate;
    
    @Autowired
    public JmsPublisherImpl(JmsTemplate jmsTemplate) {
        this.jmsTemplate = jmsTemplate;
    }
    @Override
    public void publish(Hello hello) {
        jmsTemplate.convertAndSend(hello);
    }

}
