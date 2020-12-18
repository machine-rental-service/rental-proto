package com.hackaton.prize.service;

import com.hackaton.prize.domain.Institution;
import com.hackaton.prize.domain.Rental;
import com.hackaton.prize.domain.RentalDetail;
import com.hackaton.prize.domain.dto.RentalDetailDto;
import com.hackaton.prize.domain.dto.RentalDto;
import com.hackaton.prize.infrastructure.repository.InstitutionRepository;
import com.hackaton.prize.infrastructure.repository.RentalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;

@Service
public class MakeRentalService {

    @Autowired
    RentalRepository rentalRepository;

    @Autowired
    InstitutionRepository institutionRepository;

    String defaultStatus = "승인 대기중";
    String whiteSpace = " ";

    public void makeDummy() {
        Rental sampleRental = new Rental();

        RentalDetail sampleDetail = new RentalDetail();
        sampleDetail.setStaffComment("detail comment");

        sampleRental.setRentalDetail(sampleDetail);
        rentalRepository.save(sampleRental);
    }

    public Institution getInstitutionInformation(String name){
        Institution target = institutionRepository.findTop1ByName(name);
        return target;
    }

    public String merge(RentalDetailDto detailDto, RentalDto rentalDto) {
        LocalDateTime servertime = LocalDateTime.now();
        int currentHour = servertime.getHour();

        Rental rental = Rental.builder()
                .lesseeName(rentalDto.getLesseeName())
                .lesseeBirthday(rentalDto.getLesseeBirthday())
                .lesseeEmail(rentalDto.getLesseeEmail())
                .lesseePhoneNumber(rentalDto.getLesseePhoneNumber())
                .lesseeAddress(rentalDto.getLesseeAddress())
                .localInstitution(rentalDto.getLocalInstitution())
                .started(detailDto.getStarted())
                .applied(LocalDateTime.now().toLocalDate())
                .deadline(detailDto.getStarted().plusDays(3))
                .status(defaultStatus).build();

        if (currentHour < 14) { //14시간 시차라, 13시 59분이전일때 하루늦게 처리되는 localDate 이슈
            rental.setApplied(rental.getApplied().plusDays(1));//접수일
            rental.setStarted(rental.getStarted().plusDays(1));//희망예정일
            rental.setDeadline(rental.getDeadline().plusDays(1));//마감일
        }

        RentalDetail detail = RentalDetail.builder()
                .rental(rental)
                .tractor(detailDto.getTractor())
                .cultivator(detailDto.getCultivator())
                .farmMaster(detailDto.getFarmMaster())
                .undergroundCropExtractor(detailDto.getUndergroundCropExtractor())
                .thresher(detailDto.getThresher())
                .sower(detailDto.getSower())
                .ricePlantingMachine(detailDto.getRicePlantingMachine())
                .riceHarvester(detailDto.getRiceHarvester())
                .otherToolsRequest(detailDto.getOtherToolsRequest())
                .staffComment(LocalDateTime.now().toString()).build();

        rental.setRentalDetail(detail);
        rentalRepository.save(rental);
        String idNumber = rental.getId().toString();

        return idNumber;
    }
}