package spin.rest.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import spin.domain.Hello;
import spin.exception.handler.HelloNotFoundException;
import spin.service.SpinService;

@RestController
@RequestMapping("/spin")
public class SpinRestApi {
    @Autowired
    private SpinService spinService;

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public Hello sayHello() {
        Hello hello = spinService.sayHello();
        if (hello == null) {
            throw new HelloNotFoundException();
        }
        return hello;
    }

    /**
     * json: {"message":"How are you"}
     * @return
     */
    @RequestMapping(value = "/message", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Hello> leaveMessage(@RequestBody Hello hello) {
        Hello savedHello = spinService.leaveMessage(hello);
        ResponseEntity<Hello> responseEntity = new ResponseEntity<Hello>(savedHello, null, HttpStatus.CREATED);
        return responseEntity;
    }
    
    @RequestMapping(value = "/message2", method = RequestMethod.POST, consumes = "application/json")
    public Hello leaveMessage2(@RequestBody Hello hello) {
        return spinService.leaveMessage(hello);
    }
}
