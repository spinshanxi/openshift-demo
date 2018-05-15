package spin.config;

import javax.jms.ConnectionFactory;
import javax.jms.Topic;

import org.apache.activemq.command.ActiveMQTopic;
import org.apache.activemq.spring.ActiveMQConnectionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jms.annotation.EnableJms;
import org.springframework.jms.config.DefaultJmsListenerContainerFactory;
import org.springframework.jms.core.JmsTemplate;

import spin.jms.sub.JmsSubscriber;

//@Configuration
//@EnableJms
public class JmsConfig {
    {
        System.out.println("JmsConfig");
    }
    private final String BROKER_URL = "tcp://localhost:61616";
    private final String BROKER_USERNAME = "admin";
    private final String BROKER_PASSWORD = "admin";

    @Bean
    public ConnectionFactory connectionFactory() {
        ActiveMQConnectionFactory amqcf = new ActiveMQConnectionFactory();
        amqcf.setBrokerURL(BROKER_URL);
        amqcf.setCloseTimeout(10);
        amqcf.setPassword(BROKER_PASSWORD);
        amqcf.setUserName(BROKER_USERNAME);
        return amqcf;
    }

    @Bean
    public Topic spinJmsTopic() {
        return new ActiveMQTopic("spin.jms.topic");
    }

    @Bean
    public JmsTemplate jmsTemplate(ConnectionFactory connectionFactory) {
        JmsTemplate jt = new JmsTemplate();
        jt.setConnectionFactory(connectionFactory);
        jt.setDefaultDestination(spinJmsTopic());
        jt.setPubSubDomain(true);
        return jt;
    }

    @Bean
    public JmsSubscriber jmsSubscriber() {
        return new JmsSubscriber();
    }
    
    @Bean
    public DefaultJmsListenerContainerFactory jmsListenerContainerFactory() {
        DefaultJmsListenerContainerFactory factory = new DefaultJmsListenerContainerFactory();
        factory.setConnectionFactory(connectionFactory());
        factory.setConcurrency("1-1");
        factory.setPubSubDomain(true); // for topic
        return factory;
    }
}
