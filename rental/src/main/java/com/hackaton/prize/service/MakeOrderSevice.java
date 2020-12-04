package com.hackaton.prize.service;

import com.hackaton.prize.domain.Order;
import com.hackaton.prize.infrastructure.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MakeOrderSevice {

    @Autowired
    OrderRepository orderRepository;

    public void make() {
        Order sampleOrder = new Order();
        sampleOrder.setTitle("sampleInstance");
        orderRepository.save(sampleOrder);
    }


}
