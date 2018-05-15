package spin.repository;

import spin.domain.Hello;

public interface HelloRepository {
    Hello getHello();

    Hello saveHello(Hello hello);
}
