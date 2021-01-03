

|PagingFrontUtil.java 의 변수|역할|예시|
|:------|---|------|
|**currunt_page**|<pre>현재 페이지</pre>|<pre> 페이징 모습이 "< 1 **2** 3 4 5 >" 인 경우 현재 페이지는 2</pre>|
|**list_size**|<pre>페이지 리스트 크기</pre>| <pre> 페이징 모습이 "< 1 2 3 4 5 >" 인 경우 페이지 리스트 크기는 5</pre> |
|**page_contents_size**|<pre>한 페이지에 들어가는 글 갯수</pre>||
|**list_num** = ceil(current_page/list_size)|<pre>페이지 리스트 순서</pre>|<pre> "< 1 2 3 4 5 >" 이면 페이지 리스트 순서는 1번째, "< 6 7 8 9 10 >" 이면 페이지 리스트 순서는 2번째</pre>|
|**nowStart** = (list_num * list_size) - list_size + 1|<pre>현재 페이지 리스트의 시작 페이지</pre>|<pre>"< 6 7 8 9 10 >" 이면 현재 페이지 리스트의 시작 페이지는 6</pre>|
|**nowEnd** = list_num * list_size|<pre>현재 페이지 리스트의 마지막 페이지</pre>|"< 6 7 8 9 10 >" 이면 현재 페이지 리스트의  페이지는 10|
|**next_page** = 1 + list_size * list_num|<pre>현재 페이지 리스트의 다음 페이지 (다음 페이지 리스트의 첫번째 페이지)</pre>|<pre> 현재 페이지리스트가 "< 6 7 8 9 10 >" 이면 다음 페이지는 11 </pre>|
|**prev_page** = (double)currunt_page/list_size < 1 ? 1 : next_page-list_size-1|<pre>현재 페이지 리스트의 이전 페이지 (이전 페이지 리스트의 마지막 페이지)</pre>|<pre> 현재 페이지리스트가 "< 11 12 13 14 15 >" 이면 이전 페이지는 10 </pre>|
|**start_listnum** = list_size * list_num - list_size + 1|<pre>첫번째 페이지번호</pre>||
|**last_listnum** = start_listnum +list_size - 1|<pre>마지막 페이지번호</pre>||
|**start_content** = current_page * page_contents_size - page_contents_size + 1|<pre>컨텐츠 시작 인덱스</pre>||

# 사용법

## view 노출방법
> PagingFrontUtil.java 의 getPagingVariable 함수의 리턴값을 paging_view.jsp 와 같이 뷰에 노출시켜주면 됩니다.
>> https://github.com/skok1025/Board_Paging_Variable/blob/master/paging_view.jsp

## DB 에서 정보 가져오기 (SELECT 쿼리)
> <code>LIMIT #{page_contents_size} OFFSET #{start_content}</code>
>> #{start_content = "컨텐츠 시작 인덱스"} 인덱스부터 #{page_contents_size = "한 페이지에 들어가는 글 갯수"} 개의 정보를 가져온다. 
>> https://github.com/skok1025/Board_Paging_Variable/blob/master/db_mybatis.xml
