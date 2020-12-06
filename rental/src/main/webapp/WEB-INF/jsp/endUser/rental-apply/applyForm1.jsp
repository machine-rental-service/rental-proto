<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/endUser/rental-apply/portalScriptInc.jspf" %>	<!-- UI/UX팀 작업결과물 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<script type="text/javaScript" src="http://code.jquery.com/jquery-latest.js">

    /**
     * document ready
     */
    $(function(){

        $(this).prop("title", $(".page-title-area > .tit").text()+" | <spring:message code='system.title'/>");

        //메뉴 선택 스타일 삭제
        fn_refreshMenuSelectStyle();

        //필수입력항목 미입력시 안내 메세지 숨김처리
        $(".input-warning").hide();

        //결과확인 div 숨김처리
        $(".box-result").hide();

    });

</script>
<form:form name="userInfoVO" commandName="userInfoVO" onSubmit="return false;">
    <!-- page-title-area -->
    <div class="page-title-area">
        <h2 class="tit just-pc">생활공구/농기계 대여신청</h2>
    </div>
    <!--// page-title-area -->


    <div class="join-wrap">

        <ol class="step-list">
            <li class="on">
                <strong>STEP1<span>신청인 정보</span></strong>
            </li>
            <li>
                <strong>STEP2<span>대여 신청</span></strong>
            </li>
        </ol>

        <!-- 기본정보 입력 -->
        <p class="text-area">기본정보 입력</p>
        <p class="float-r req-info"><span class="req">*</span>표시는 필수 입력항목입니다.</p>

        <div id="inputTable" class="row-table">
            <p class="tit-hide">이름, 생년월일, 연락처, 이메일주소 입력</p>
            <table>
                <caption>신청인 정보 입력</caption>
                <colgroup>
                    <col style="width:220px;">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th scope="row">
                        <label for="label_cont01_01" class="label req">이름</label>
                    </th>
                    <td>
                        <div class="input-ex-text w300px">
                            <input type="text" title="이름" placeholder="ex) 김빌림" id="mberNm" name="mberNm" class="input-text w340px" onkeyup="fn_inputKey('4', this);" maxlength="11">
                            <div class="input-util">
                                <p class="input-warning">이름을 입력해주세요</p>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <label for="label_cont01_02" class="label req">생년월일</label>
                    </th>
                    <td>
                        <div class="input-ex-text w300px">
                            <input type="text" title="생년월일 입력" placeholder="" id="applcntBrthdy" name="applcntBrthdy" class="input-text" maxlength="8" onkeyup="fn_inputKey('1', this);">
                            <span class="ex-txt">예) 19990909</span>
                        </div>
                        <div class="input-util">
                            <p class="input-warning">생년월일을 다시 확인해주세요</p>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <label for="inputTelNum" class="label req">연락처1</label>
                    </th>
                    <td>
                        <div class="input-ex-text w300px">
                            <input type="text" title="연락처1 입력" placeholder="ex) 01055558282" id="inputTel1Num" name="telNo" class="input-text w340px" onkeyup="fn_inputKey('1', this);" maxlength="11">
                            <div class="input-util">
                                <p class="input-warning">연락처를 입력해주세요</p>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <label for="inputTelNum" class="label"> 연락처2</label>
                    </th>
                    <td>
                        <div class="input-ex-text w300px">
                            <input type="text" title="연락처2 입력" placeholder="" id="inputTel2Num" name="telNo" class="input-text w340px mb-block" onkeyup="fn_inputKey('1', this);" maxlength="11">
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <label for="label_cont01_03" class="label req">이메일</label>
                    </th>
                    <td>
                        <div class="input-ex-text w300px">
                            <input type="text" title="이메일" placeholder="ex) billim@farm.com" id="mberEmail" name="mberEmail" class="input-text w340px" onkeyup="fn_inputKey('9', this);" maxlength="40">
                            <div class="input-util">
                                <p class="input-warning">이메일을 입력해주세요</p>
                            </div>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="tit-group">
            <h3 class="tit">주소/임대사무소 찾기</h3>
        </div>

        <div class="row-table">
            <p class="tit-hide">주소/임대사무소 찾기</p>

            <table>
                <caption></caption>
                <colgroup>
                    <col style="width:220px;">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th scope="row">
                        <label for="applcntRnAddrName" class="label req">거주지 주소</label>
                    </th>
                    <td>
                        <div class="mt5">
                            <input type="text" title="주소(소재지) 입력" placeholder="ex) 사랑시 고백구 행복동 희망아파트" id="applcntRnAddrName" name="applcntRnAddrName" class="input-text w640px"> <!--readonly="readonly"-->
                        </div>
                        <div class="input-util">
                            <p class="input-warning">주소를 입력해주세요</p>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <label for="applcntRnAddrName" class="label req">권역 임대사무소</label>
                    </th>
                    <td>
                        <div class="input-btn-type word-6 w330px">
                            <input type="text" title="우편번호 입력" placeholder="" id="applcntZipCode2" class="input-text"> <!--readonly="readonly"-->
                            <div class="input-util">
                                <p class="input-warning">사무소를 선택해주세요</p>
                            </div>
                            <a href="javascript:fn_searchAddress('applcnt');" class="button white">사무소 찾기</a>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="button-group a-c">
            <a class="button gray">임시저장</a>
            <a href="javascript:fn_search2();" class="button blue">다음</a>
        </div>
        <!--// 기본정보 입력 -->
    </div>
</form:form>

<script type="text/javascript">

    /**
     *  입력항목 체크
     */
    function fn_validation(){

        //필수입력항목 미입력시 안내 메세지 숨김처리
        $(".input-warning").hide();

        //이름
        if(fn_empty($("#mberNm").val())){
            $("#mberNm").next(".input-util").find(".input-warning").show();
            $("#mberNm").focus();
            return false;
        }

        //이메일 주소
        if(fn_empty($("#mberEmail").val())){
            $("#mberEmail").next(".input-util").find(".input-warning").show();
            $("#mberEmail").focus();
            return false;
        }else{
            //이메일 형식 확인
            var regExp = fn_regExp("email");
            if ( !regExp.test($("#mberEmail").val()) ) {
                $("#mberEmail").next(".input-util").find(".input-warning").show();
                $("#mberEmail").focus();
                return false;
            }
        }

        return true;
    }

    /**
     * 값이 null인지 확인
     * param  : str - 텍스트
     * return  : 공백인지 여부
     */
    function fn_empty(str) {

        if(str == undefined){
            return true;
        }

        if(str == "" || str.length <= 0 ){
            return true;
        }
        return false;
    }

    /**
     * 정규식 반환
     * param  : gubun - 1 ip 형식, 2 url 형식
     * return  : regExp - 정규식
     */
    function fn_regExp(gubun) {
        var regExp

        //ip형식
        if(gubun == "ip"){
            regExp = /^(1|2)?\d?\d([.](1|2)?\d?\d){3}$/;
        }
        //url형식
        else if(gubun == "url"){
            regExp = /^(http(s)?\:\/\/)?((\w+)[.])+(asia|biz|cc|cn|com|de|eu|in|info|jobs|jp|kr|mobi|mx|name|net|nz|org|travel|tv|tw|uk|us)(\/(\w*))*$/i;
        }
        //공백여부
        else if(gubun == "empty"){
            regExp = /\s/g;
        }
        //숫자만
        else if(gubun == "num"){
            regExp =  /^[0-9]+$/;
        }
        //이메일 체크 정규식
        else if(gubun == "email"){
            regExp =  /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
        }
        //핸드폰번호 정규식
        else if(gubun == "mbtl"){
            regExp =  /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
        }
        //일반 전화번호 정규식
        else if(gubun == "tel"){
            regExp =  /^\d{2,3}-?\d{3,4}-?\d{4}$/;
        }
        //특수문자(공백포함) 정규식
        else if(gubun == "notText"){
            regExp =  /^[0-9a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣]+$/;
        }
        //아이디 정규식 (4~20자리, 영문/숫자 조합, 특수문자 -_만 허용, 첫글자 영문)
        else if(gubun == "id"){
            regExp = /^[a-z]+[a-z0-9_-]{3,19}$/g;
        }
        //비밀번호 정규식 (9~20자리, 영문/숫자/특수문자 필수 포함)
        else if(gubun == "password"){
            regExp = /^.*(?=^.{9,20}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=*]).*$/;
            //특수문자 불가능
        } else if(gubun == "notSc"){
            regExp =  /[\{\}\[\]\/?;:|\)*~`^\-_+<>@\#$%&\\\=\(\'\"]/gi
            //생년월일 체크 정규식
        } else if(gubun == "birthday"){
            regExp = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
            //YYYY-MM-DD 날짜 형식(하이픈 포함)
        } else if(gubun == "hyphenYYYYMMDD"){
            regExp = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/;
        }

        return regExp;
    }

    /**
     * 가입확인 버튼 클릭
     * 취약점 진단 이후 버전
     */
    function fn_search2() {
        $(".box-result").hide();

        //입력 항목 확인
        if(!fn_validation()) return;

        loadingStop("inputTable");

        if(confirm("다음 페이지로 넘어가시겠습니까?")){
            $("#userInfoVO").attr("onSubmit","");
            $("#userInfoVO").attr("action", "<c:url value='/apply2'/>").submit();
        }

    }

    /**
     * 가입확인 버튼 클릭
     */
    function fn_search(){

        //결과 확인 div 초기화
        $(".box-result").hide();

        //입력 항목 확인
        if(!fn_validation()) return;

        loadingStart("inputTable");

        $.ajax({
            type:"POST",
            url: "<c:url value='/uim/cmm/selectSbscrbAt.json'/>",
            data : $("#userInfoVO").serialize(),
            dataType : "json",
            success: function(result){

                if (result.status){
                    if(result.foundResult){
                        //기관회원인 경우
                        if(result.insttMberTf){
                            $(".insttMber-result").show();
                        }else{
                            $(".indvdlMber-result").show();
                        }
                    }else{
                        if(confirm("회원 정보가 없습니다. 회원 가입을 계속 진행하시겠습니까?")){
                            $("#userInfoVO").attr("onSubmit","");
                            $("#userInfoVO").attr("action", "<c:url value='/uim/mss/mberStipulationFormView.do'/>").submit();
                        }
                    }
                }
                else{
                    alert("<spring:message code='cmm.fail.process.msg' arguments='가입확인' />");
                    $(".box-result").hide();
                }

                loadingStop("inputTable");
            },
            error: function(xhr, status, error){
                alert("<spring:message code='cmm.fail.process.msg' arguments='가입확인' />");
                $(".box-result").hide();
                loadingStop("inputTable");
            }
        });

    }

    //주소검색 팝업 호출
    function fn_searchAddress(type){

        $('#adresType').val(type)
        $.ajax({
            data : {}
            , url : '/tcs/dor/selectAdresListPopupView.do'
            , type : 'post'
            , dataType : 'html'
            , success : function(html){
                $("#layer_search_address").empty();
                $("#layer_search_address").append(html);
                $('#layer_search_address').modal(open);

                $('#inputPopAdres').focus();
            }
            , error : function(error){
                alert('팝업 호출에 실패하였습니다.');
            }
        })
    }

    // //주소검색 팝업 콜백
    // function fn_callbackSelectAdres(adresObj){
    // 	var type = $('#adresType').val();
    // 	$('#'+type+'ZipCode').val(adresObj.zipNo);
    // 	$('#'+type+'RnAddrName').val(adresObj.adres);
    // 	$('#'+type+'AddrDetail').focus();
    // }

    /**
     * input 입력 제한
     * param  : gubun - 1 숫자만 입력, 2 - 한글만 입력 3- 한글만 입력불가
     * param  : obj - 적용 객체
     */
    function fn_inputKey(gubun , obj) {
        //숫자만 입력 가능
        if(gubun == '1'){
            obj.value = obj.value.replace(/[^0-9]/g,'');
        }
        //한글만 입력 가능
        else if(gubun == '2'){
            obj.value = obj.value.replace(/[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣|\s]/g,'');
        }
        //한글만 입력 불가능
        else if(gubun == '3'){
            obj.value = obj.value.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣|\s]/g,'');
        }
        else if(gubun == 'ip'){
            obj.value = obj.value.replace(/[^0-9.]/g,'');
        }
        //한글, 영문 입력가능
        else if(gubun == '4'){
            var reg = /[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣|a-z|A-Z|\s]/g;
            if(reg.test(obj.value)){
                obj.value = obj.value.replace(/[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣|a-z|A-Z|\s]/g,'');
            }
        }
        // 한글, 특수문자 입력 불가능 (-_만 허용)
        else if(gubun == '5'){
            obj.value = obj.value.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣|\{\}\[\]\/?.,;:|\)*~`!^\+<>@\#$%&\\\=\(\'\"\s]/g,'');
        }
        //숫자, - 만 입력 가능(전화번호/팩스번호 데이터 등)
        else if(gubun == '6'){
            obj.value = obj.value.replace(/[^0-9-]/g,'');
        }
        //영문,숫자 입력가능(코드성데이터)
        else if(gubun == '7'){
            obj.value = obj.value.replace(/[^0-9a-zA-Z]/g,'');
        }
        //영문만 입력가능
        else if(gubun == '8'){
            obj.value = obj.value.replace(/[0-9]|[^\!-z]/gi,'');
        }
        // 한글, 특수문자 입력 불가능 (-_@.만 허용) - 이메일 데이터
        else if(gubun == '9'){
            obj.value = obj.value.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣|\{\}\[\]\/?,;:|\)*~`!^\+<>\#$%&\\\=\(\'\"\s]/g,'');
        }
    }

</script>