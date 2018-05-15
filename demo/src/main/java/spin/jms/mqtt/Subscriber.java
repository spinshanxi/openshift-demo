package spin.jms.mqtt;

import org.eclipse.paho.client.mqttv3.IMqttDeliveryToken;
import org.eclipse.paho.client.mqttv3.MqttCallback;
import org.eclipse.paho.client.mqttv3.MqttClient;
import org.eclipse.paho.client.mqttv3.MqttMessage;

public class Subscriber {
    public static void main(String s[]) {
        try {
            MqttClient mqttClient = new MqttClient(
                    "tcp://localhost:1883",
                    "Subscriber-client");
            mqttClient.setCallback(new MqttCallback() {
                @Override
                public void connectionLost(Throwable throwable) {
                    //Called when connection is lost.
                    throwable.printStackTrace();
                }
                @Override
                public void messageArrived(String topic, MqttMessage mqttMessage) throws Exception {
                    System.out.println("Topic: " + topic);
                    System.out.println(new String(mqttMessage. getPayload()));
                    System.out.println("QoS: " + mqttMessage. getQos());
                    System.out.println("Retained: " + mqttMessage. isRetained());
                }
                @Override
                public void deliveryComplete(final IMqttDeliveryToken iMqttDeliveryToken) {
                    //When message delivery was complete
                    System.out.println("message delivery complete");
                }
            });
            mqttClient.connect(MqttUtils.getDefaultConfig());
            mqttClient.subscribe("mqtt.paho.topic", 2);
            
        }catch(Exception e) {
            e.printStackTrace();
        }
    }
}
