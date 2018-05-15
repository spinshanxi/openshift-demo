package spin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import spin.domain.Hello;
import spin.exception.handler.HelloNotFoundException;
import spin.repository.HelloRepository;

@Component
public class SpinServiceImpl implements SpinService {

    @Autowired
    private HelloRepository helloRepository;

    @Override
    public Hello sayHello() {
        Hello hello = helloRepository.getHello();
        if (hello == null) {
            throw new HelloNotFoundException();
        }
        return hello;
    }

    @Override
    public Hello leaveMessage(Hello hello) {
        Hello savedHello = helloRepository.saveHello(hello);
        if (savedHello == null) {
            throw new HelloNotFoundException();
        }
        return savedHello;
    }
}