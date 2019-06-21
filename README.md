### currunt_page : 현재 페이지
### list_size : 페이지 리스트 크기
### page_contents_size : 한 페이지에 들어가는 글 갯수

==============================================

#### list_num = ceil(current_page/list_size) 
// 페이지 리스트 순서

==============================================

#### next_page = 1 + list_size * list_num    
// 현재 페이지 리스트의 다음 페이지 (다음 페이지 리스트의 첫번째 페이지)

==============================================
#### prev_page = (double)currunt_page/list_size < 1 ? 1 : next_page-list_size-1 
// 현재 페이지 리스트의 이전 페이지 (이전 페이지 리스트의 마지막 페이지)
==============================================

#### start_listnum = list_size * list_num - list_size + 1 
// 첫번째 페이지번호
==============================================

#### last_listnum = start_listnum +list_size - 1
// 마지막 페이지번호
==============================================


#### start_content = current_page * page_contents_size - page_contents_size + 1 
// 컨텐츠 시작
==============================================
