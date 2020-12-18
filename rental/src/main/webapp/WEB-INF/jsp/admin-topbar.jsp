<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

	<!-- Sidebar Toggle (Topbar) -->
	<form class="form-inline">
		<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
			<i class="fa fa-bars"></i>
		</button>
	</form>

	<!-- Topbar Search -->
	<form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
		<div class="input-group">
			<div class="input-group-append">
				<p class="form-control bg-light small" style="margin-top: 0.8rem">공무원 모드 시험 운영중</p>
			</div>
		</div>
	</form>

	<!-- Topbar Navbar -->
	<ul class="navbar-nav ml-auto">

		<!-- Nav Item - Search Dropdown (Visible Only XS) -->
		<li class="nav-item dropdown no-arrow d-sm-none">
			<a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<i class="fas fa-search fa-fw"></i>
			</a>
			<!-- Dropdown - Messages -->
			<div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
				<form class="form-inline mr-auto w-100 navbar-search">
					<div class="input-group">
						<input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
						<div class="input-group-append">
							<button class="btn btn-primary" type="button">
								<i class="fas fa-search fa-sm"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
		</li>

		<!-- Nav Item - Alerts -->
		<li class="nav-item dropdown no-arrow mx-1">
			<a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<i class="fas fa-bell fa-fw"></i>
				<!-- Counter - Alerts -->
				<span class="badge badge-danger badge-counter">3+</span>
			</a>
			<!-- Dropdown - Alerts -->
			<div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
				<h6 class="dropdown-header" style="font-size: 1rem">알림 센터</h6>
				<a class="dropdown-item d-flex align-items-center" href="#">
					<div class="mr-3">
						<div class="icon-circle bg-primary">
							<i class="fas fa-file-alt text-white"></i>
						</div>
					</div>
					<div>
						<div class="small text-gray-500">2012-12-18</div>
						<span class="font-weight-bold">인증 모드 이용 시, 새로운 알림이 표시됩니다.</span>
					</div>
				</a>
				<a class="dropdown-item d-flex align-items-center" href="#">
					<div class="mr-3">
						<div class="icon-circle bg-success">
							<i class="fas fa-donate text-white"></i>
						</div>
					</div>
					<div>
						<div class="small text-gray-500">2020-12-17</div>
						공공장비온라인센터에서는 표준화된 장비대여 관리가 가능합니다.
					</div>
				</a>
				<a class="dropdown-item d-flex align-items-center" href="#">
					<div class="mr-3">
						<div class="icon-circle bg-warning">
							<i class="fas fa-exclamation-triangle text-white"></i>
						</div>
					</div>
					<div>
						<div class="small text-gray-500">2020-12-16</div>
						기본 대여일은 3일입니다.<br>연장 시 관리자와 상의해주세요.
					</div>
				</a>
				<a class="dropdown-item text-center small text-gray-500" href="#">모든 알림 보기</a>
			</div>
		</li>

		<!-- Nav Item - Messages -->
		<li class="nav-item dropdown no-arrow mx-1">
			<a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<i class="fas fa-envelope fa-fw"></i>
				<!-- Counter - Messages -->
				<span class="badge badge-danger badge-counter">7</span>
			</a>
			<!-- Dropdown - Messages -->
			<div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
				<h6 class="dropdown-header" style="font-size: 1rem">쪽지 보관함</h6>
				<a class="dropdown-item d-flex align-items-center" href="#">
					<div class="dropdown-list-image mr-3">
						<img class="rounded-circle" src="../img/undraw_profile_1.svg" alt="">
						<div class="status-indicator bg-success"></div>
					</div>
					<div class="font-weight-bold">
						<div class="text-truncate">안녕하세요. 해진사입니다.</div>
						<div class="small text-gray-500">해진사 · 58m</div>
					</div>
				</a>
				<a class="dropdown-item d-flex align-items-center" href="#">
					<div class="dropdown-list-image mr-3">
						<img class="rounded-circle" src="../img/undraw_profile_2.svg" alt="">
						<div class="status-indicator"></div>
					</div>
					<div>
						<div class="text-truncate">현재 최고관리자 모드 이용중입니다.</div>
						<div class="small text-gray-500">해진사2 · 1d</div>
					</div>
				</a>
				<a class="dropdown-item d-flex align-items-center" href="#">
					<div class="dropdown-list-image mr-3">
						<img class="rounded-circle" src="../img/undraw_profile_3.svg" alt="">
						<div class="status-indicator bg-warning"></div>
					</div>
					<div>
						<div class="text-truncate">쪽지 이용을 위해서는 인증이 필요합니다.</div>
						<div class="small text-gray-500">해진사3 · 2d</div>
					</div>
				</a>
				<a class="dropdown-item d-flex align-items-center" href="#">
					<div class="dropdown-list-image mr-3">
						<img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
						<div class="status-indicator bg-success"></div>
					</div>
					<div>
						<div class="text-truncate">가입을 부탁드립니다. (미지원 기능) </div>
						<div class="small text-gray-500">최고관리자 · 2w</div>
					</div>
				</a>
				<a class="dropdown-item text-center small text-gray-500" href="#">모든 쪽지 확인하기</a>
			</div>
		</li>


		<div class="topbar-divider d-none d-sm-block"></div>

		<!-- Nav Item - User Information -->
		<li class="nav-item dropdown no-arrow">
			<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="mr-2 d-none d-lg-inline text-gray-600 small">최고 관리자 접속중</span>
				<img class="img-profile rounded-circle" src="../img/undraw_profile.svg">
			</a>
			<!-- Dropdown - User Information -->
			<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
				<a class="dropdown-item" href="#">
					<i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> 프로필
				</a>
				<a class="dropdown-item" href="#">
					<i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> 설정
				</a>
				<a class="dropdown-item" href="#">
					<i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> 활동기록
				</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
					<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i> 로그인(미지원)
				</a>
			</div>
		</li>

	</ul>

</nav>