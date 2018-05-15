package spin.rest.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import spin.config.MqttOutboundConfig.MyGateway;
import spin.domain.Hello;

@RestController
@RequestMapping("/spin/mqtt")
public class SpinRestMqttApi {
    //@Autowired
    private MyGateway myGateway;
    
    @RequestMapping(
            value="/publish",
            method = RequestMethod.POST,
            consumes="application/json")
    public void mqttPublishTopic(
            @RequestBody Hello hello) {
        myGateway.sendToMqtt(hello.getMessage());
        System.out.println("MQTT publish -> success");
    }
}
