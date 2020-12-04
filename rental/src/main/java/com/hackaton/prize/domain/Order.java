package com.hackaton.prize.domain;

import lombok.EqualsAndHashCode;
import lombok.Setter;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@EqualsAndHashCode(of = "id")
@Entity
@Setter
@Table(name = "sample")
public class Order {

    @Id
    @GeneratedValue
    private Long id;

    private String title;
}
