package spin.jms.mqtt;

import org.eclipse.paho.client.mqttv3.MqttConnectOptions;

public class MqttUtils {
    public static MqttConnectOptions getDefaultConfig() {

        MqttConnectOptions options = new MqttConnectOptions();
        options.setCleanSession(true);
        options.setKeepAliveInterval(180);
        options.setMqttVersion(MqttConnectOptions.MQTT_VERSION_3_1_1);
        options.setUserName("spin");
        options.setPassword("spin".toCharArray());
        options.setWill(
                "will/topic",
                "message".getBytes(),
                1,
                true);
        return options;
    }
}
