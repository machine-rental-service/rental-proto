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

import java.time.LocalDateTime;

@Service
public class MakeRentalService {

    private final String defaultStatus = "승인 대기중"; //TO DO: 상태 enum값으로 정리

    private final RentalRepository rentalRepository;

    private final InstitutionRepository institutionRepository;

    public MakeRentalService(RentalRepository rentalRepository, InstitutionRepository institutionRepository) {
        this.rentalRepository = rentalRepository;
        this.institutionRepository = institutionRepository;
    }

    public Institution getInstitutionInformation(String name){
        Institution target = institutionRepository.findTop1ByName(name);
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
                .applied(LocalDateTime.now().toLocalDate())
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
                .staffComment(LocalDateTime.now().toString()).build();

        rental.setRentalDetail(detail);
        rentalRepository.save(rental);
        String idNumber = rental.getId().toString();
        return idNumber;
    }
}