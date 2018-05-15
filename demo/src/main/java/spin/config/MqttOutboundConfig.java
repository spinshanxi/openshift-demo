package spin.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.integration.annotation.IntegrationComponentScan;
import org.springframework.integration.annotation.MessagingGateway;
import org.springframework.integration.annotation.ServiceActivator;
import org.springframework.integration.channel.DirectChannel;
import org.springframework.integration.mqtt.core.DefaultMqttPahoClientFactory;
import org.springframework.integration.mqtt.core.MqttPahoClientFactory;
import org.springframework.integration.mqtt.outbound.MqttPahoMessageHandler;
import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.MessageHandler;

//@Configuration
//@IntegrationComponentScan
public class MqttOutboundConfig {
    {
        System.out.println("MqttOutboundConfig");
    }
    private final String TOPIC_1 = "spin.mqtt.topic";
    @Bean
    public MqttPahoClientFactory mqttClientFactory() {
        DefaultMqttPahoClientFactory factory = new DefaultMqttPahoClientFactory();
        factory.setServerURIs("tcp://localhost:1883");
        factory.setUserName("admin");
        factory.setPassword("admin");
        return factory;
    }
    
    @Bean
    @ServiceActivator(inputChannel = "mqttOutboundChannel", autoStartup="true")
    public MessageHandler mqttOutbound() {
        MqttPahoMessageHandler messageHandler = new MqttPahoMessageHandler(
                "mqttOutboundClient", mqttClientFactory());
        messageHandler.setAsync(true);
        messageHandler.setDefaultTopic(TOPIC_1);
        return messageHandler;
    }

    @Bean
    public MessageChannel mqttOutboundChannel() {
        DirectChannel dc = new DirectChannel();
        dc.subscribe(mqttOutbound());
        return dc;
    }

    @MessagingGateway(defaultRequestChannel = "mqttOutboundChannel")
    public interface MyGateway {

        void sendToMqtt(String data);

    }
}
