package com.hackaton.prize.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "rental_detail")
public class RentalDetail {//연관관계 JPA로 자동참조

    @Id
    @Column(name ="rental_id")
    private Long id;

    @OneToOne
    @MapsId
    @JoinColumn(name = "rental_id")
    private Rental rental;

    private int tractor; //트랙터

    private int cultivator; // 경운기

    private int farmMaster; //관리기

    private int undergroundCropExtractor; //땅속작물수확기

    private int thresher; //탈곡기

    private int sower; //자주형 종파기

    private int ricePlantingMachine; //이앙 작업기

    private int riceHarvester; //벼 수확기

    private String otherToolsRequest; // 추가 생활공구 요청 한줄글

    private LocalDate staffApproved; //직원승인일

    private String staffComment; // <- 담당 공무원(직원) 코멘트

}
