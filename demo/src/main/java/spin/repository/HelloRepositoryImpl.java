package spin.repository;

import java.util.Date;

import org.springframework.stereotype.Component;

import spin.domain.Hello;

@Component
public class HelloRepositoryImpl implements HelloRepository {

    @Override
    public Hello getHello() {
        Hello hello = new Hello();
        hello.setMessage("Hello I'am Spin");
        hello.setTime(new Date());
        return hello;
    }

    @Override
    public Hello saveHello(Hello hello) {
        Hello savedHello = new Hello();
        savedHello.setMessage(hello.getMessage());
        savedHello.setTime(new Date());
        return savedHello;
    }
}