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
        Institution target = institutionRepository.findByName(name);
        return target;
    }

    public String merge(RentalDetailDto detailDto, RentalDto rentalDto) {
        Rental rental = Rental.builder()
                .lesseeName(rentalDto.getLesseeName())
                .lesseeBirthday(rentalDto.getLesseeBirthday())
                .lesseeEmail(rentalDto.getLesseeEmail())
                .lesseePhoneNumber(rentalDto.getLesseePhoneNumber())
                .lesseeAddress(rentalDto.getLesseeAddress())
                .localInstitution(rentalDto.getLocalInstitution())
                .started(detailDto.getStarted())
                .applied(LocalDate.now(ZoneId.of("Asia/Seoul")))
                .deadline(detailDto.getStarted().plusDays(3))
                .status(defaultStatus).build();

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
                .staffComment(whiteSpace).build();

        rental.setRentalDetail(detail);
        rentalRepository.save(rental);
        String idNumber = rental.getId().toString();

        return idNumber;
    }
}