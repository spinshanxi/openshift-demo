package spin.rest.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import spin.domain.Hello;
import spin.jms.pub.JmsPublisher;

@RestController
@RequestMapping("/spin/jms")
public class SpinRestJmsApi {
    //@Autowired
    private JmsPublisher jmsPublisher;
    
    @RequestMapping(
            value="/send",
            method = RequestMethod.POST,
            consumes="application/json")
    public void jsmSendTopic(
            @RequestBody Hello hello) {
        jmsPublisher.publish(hello);
        System.out.println("JMS publish -> success");
    }
}
