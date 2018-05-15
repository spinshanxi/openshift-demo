package spin.jms.mqtt;

import org.eclipse.paho.client.mqttv3.MqttClient;

public class Publisher {
    public static void main(String s[]) {
        try {
            MqttClient mqttClient = new MqttClient(
                    "tcp://localhost:1883",
                    "Publisher-client");
            mqttClient.connect(MqttUtils.getDefaultConfig());
            mqttClient.publish(
                    "mqtt.paho.topic",
                    "Hello spin".getBytes(),
                    2,
                    false);
            mqttClient.disconnect();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
