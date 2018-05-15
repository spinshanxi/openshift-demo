package spin.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.integration.annotation.ServiceActivator;
import org.springframework.integration.channel.DirectChannel;
import org.springframework.integration.core.MessageProducer;
import org.springframework.integration.mqtt.inbound.MqttPahoMessageDrivenChannelAdapter;
import org.springframework.integration.mqtt.support.DefaultPahoMessageConverter;
import org.springframework.messaging.Message;
import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.MessageHandler;
import org.springframework.messaging.MessagingException;
import org.springframework.scheduling.concurrent.ThreadPoolTaskScheduler;

//@Configuration
public class MqttInboundConfig {
    {
        System.out.println("MqttInboundConfig");
    }
    private final String BROKER_URL = "tcp://localhost:1883";
    private final String CLIENT_ID = "mqttInboundClient";
    private final String TOPIC_1 = "spin.mqtt.topic";

    @Bean
    public MessageChannel mqttInputChannel() {
        DirectChannel dc = new DirectChannel();
        dc.subscribe(mqttInbound());
        return dc;
    }

    @Bean
    public MessageProducer inbound() {
        MqttPahoMessageDrivenChannelAdapter adapter = new MqttPahoMessageDrivenChannelAdapter(BROKER_URL, CLIENT_ID, TOPIC_1);
        adapter.setCompletionTimeout(5000);
        adapter.setConverter(new DefaultPahoMessageConverter());
        adapter.setQos(1);
        adapter.setOutputChannel(mqttInputChannel());
        ThreadPoolTaskScheduler taskScheduler = new ThreadPoolTaskScheduler();
        taskScheduler.initialize();
        adapter.setTaskScheduler(taskScheduler);
        return adapter;
    }

    @Bean
    @ServiceActivator(inputChannel = "mqttInputChannel")
    public MessageHandler mqttInbound() {
        return new MessageHandler() {
            @Override
            public void handleMessage(Message<?> message) throws MessagingException {
                System.out.println("Received MQTT topic: "+message.getPayload());
            }
        };
    }
}
