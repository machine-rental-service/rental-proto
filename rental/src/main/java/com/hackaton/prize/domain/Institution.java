package com.hackaton.prize.domain;

import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Entity;
import javax.persistence.Id;

@EqualsAndHashCode(of = "id")
@Entity
@Data
public class Institution {

    @Id
    private Long id;

    private String name;

    private String phoneNumber;

    private String address;
    
    private String product; //생활공구 또는 농기계

    private int tractor; //트랙터

    private int cultivator; // 경운기

    private int farmMaster; //관리기

    private int undergroundCropExtractor; //땅속작물수확기

    private int thresher; //탈곡기

    private int sower; //자주형 종파기

    private int ricePlantingMachine; //이앙 작업기

    private int riceHarvester; //벼 수확기

}
