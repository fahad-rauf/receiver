package com.sample.kafka.stream;

import org.springframework.cloud.stream.annotation.Input;
import org.springframework.messaging.SubscribableChannel;

public interface HelloWorldChannelDefinitions {

    @Input("helloWorld")
    SubscribableChannel helloWorld();
}
