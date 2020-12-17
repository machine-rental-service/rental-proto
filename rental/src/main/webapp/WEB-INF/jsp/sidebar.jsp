<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

	<!-- Sidebar - Brand -->
	<a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
		<div class="sidebar-brand-icon rotate-n-15">
			<i class="fas fa-tools"></i>
		</div>
		<div class="sidebar-brand-text mx-3">
			공공장비<br> 온라인센터
		</div>
	</a>

	<!-- Divider -->
	<hr class="sidebar-divider my-0">

	<!-- Nav Item - Dashboard -->
	<li class="nav-item">
		<a class="nav-link" href="/">
			<i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard(일반 메인으로)</span>
		</a>
	</li>

	<!-- Divider -->
	<hr class="sidebar-divider">

	<!-- Heading -->
	<div class="sidebar-heading">일반인 모드</div>
	<li class="nav-item">
		<a class="nav-link" href="/apply/step1">
			<i class="fas fa-fw fa-chart-area"></i> <span>대여 신청</span>
		</a>
	</li>

	<li class="nav-item">
		<a class="nav-link" href="/rentalCheckList?email=">
			<i class="fas fa-fw fa-table"></i> <span>내 신청 확인</span>
		</a>
	</li>
	
	<hr class="sidebar-divider d-none d-md-block">
	
	<div class="sidebar-heading">공무원 모드</div>
	<li class="nav-item">
		<a class="nav-link" href="/admin/list">
			<i class="fas fa-fw fa-table"></i> <span>대여 신청 조회</span>
		</a>
	</li>
	<!-- Divider -->


	<!-- Sidebar Toggler (Sidebar) -->
	<div class="text-center d-none d-md-inline">
		<button class="rounded-circle border-0" id="sidebarToggle"></button>
	</div>

</ul>