package com.hackaton.prize.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;

@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(of = "id")
@Entity
@Data
@Table(name = "rental")
public class Rental {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;

	private String lesseeName;

  private String lesseeBirthday; //생년월일 YYMMDD

  private String lesseeEmail;

  private String lesseePhoneNumber;
  
	private String lesseeEmail; // 대여자 이메일

	private String lesseePhoneNumber;

	private String lesseeAddress;

	private String localInstitution; // 권역 사무소 (현재 DB 연관 관계 가질필요 없음)

	private String status; // 신청 대기 -> 신청 승인 or 반려 -> 대여중 -> 반납 대기 -> 반납완료

	private LocalDate applied; // 접수등록일

	private LocalDate started; // 대여시작일(희망수령일)

	private LocalDate deadline;// 마감일=대여시작일+3일

	@OneToOne(mappedBy = "rental", fetch = FetchType.LAZY, cascade = CascadeType.DETACH)
	@PrimaryKeyJoinColumn
	private RentalDetail rentalDetail;

	public void setRentalDetail(RentalDetail newRentalDetail) {
		if (newRentalDetail == null) {
			throw new NullPointerException("newRentalDetail NULL!!");
		}
		this.rentalDetail = newRentalDetail;
		newRentalDetail.setRental(this);
	}
}