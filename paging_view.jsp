<!-- pager 추가 -->
            <div class="pager">
               <ul>

                  <li><a href="${pageContext.servletContext.contextPath }/admin/goods?currentPage=${paging.prevPage}">◀</a></li>
					
					<c:forEach 
					begin="${paging.nowStart }" 
					end="${paging.nowEnd }"
					var="index"
					>
					<c:if test="${paging.currentPage eq index }">
						<li class="selected">
						<a href="${pageContext.servletContext.contextPath}/admin/goods?currentPage=${index }">${index }</a>
						</li>
					</c:if>
					<c:if test="${paging.currentPage ne index and paging.endPage >= index}">
						<li class="paging">
						<a href="${pageContext.servletContext.contextPath}/admin/goods?currentPage=${index }">${index }</a>
						</li>
					</c:if>
					<c:if test="${paging.endPage < index }">
						<li class="paging">
					
						<a 
						class="disable-link"
						href="${pageContext.servletContext.contextPath}/admin/goods?currentPage=${paging.endPage }">${index }</a>
						</li>
					</c:if>
					</c:forEach>
            
                     <!-- <li class="selected"><a>1</a></li>
                     <li class="paging"><a>2</a></li>
                     <li class="paging"><a>3</a></li>
                     <li class="paging"><a>4</a></li>
                     <li class="paging"><a>5</a></li> -->
                     

                  <li><a href="${pageContext.servletContext.contextPath }/admin/goods?currentPage=${paging.nextPage}">▶</a></li>
                 
               </ul>
            </div>
            <!-- pager 추가 -->
