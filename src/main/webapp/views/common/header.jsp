<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
  <div class="navbar navbar-dark bg-white shadow-sm">
    <div class="container">
      <a href="#" class="navbar-brand d-flex align-items-center">
        <img src="/assets/image/logo.png" width="220" height="100" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" aria-hidden="true" class="me-2" viewBox="0 0 24 24"></img>
      </a>
      <form action="/freeBoard/list.do" method = "get" >
		<input type = "hidden" name = "cpage" value = "1">
			 <input type="text" style="width: 500px; flex: 0 0 auto;"
				class="form-control" name="search-text" placeholder="검색어를 입력해주세요."
				aria-label="Recipient's username" aria-describedby="button-addon2">
		</form>
    </div>
  </div>

<!-- 
  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        	<form action="/freeBoard/list.do" method = "get">
		<input type = "hidden" name = "cpage" value = "1">
			 <input type="text" style="width: 500px; flex: 0 0 auto;"
				class="form-control" name="search-text" placeholder="검색어를 입력해주세요."
				aria-label="Recipient's username" aria-describedby="button-addon2">
			<button class="btn btn-outline-secondary" type="submit"
				id="button-addon2" style="height: 46px;">검색</button>
		</form>
          <a href="#" class="btn btn-primary my-2">지도</a>
          <a href="#" class="btn btn-secondary my-2"></a>
        
      </div>
    </div>
  </section>
가게번호 메뉴번호 예약번호
4       
 --> 
 
</header>