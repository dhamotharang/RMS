<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div id="submenu_TimesheetCategorySearchId_div">
	<div class="submenu_bg">
			<sj:a href="setUpInsertOrUpdateTimesheetCategory.action" targets="submenu_TimesheetCategorySearchId_div" indicator="indicatorSubMenuTimeSheetCategorySearchFormId_div" cssClass="link"><s:text name="MTAddTimeSheetCategory" /></sj:a> |
			<sj:a href="getAllTimeSheetCategory.action" targets="submenu_TimesheetCategorySearchId_div" indicator="indicatorSubMenuTimeSheetCategorySearchFormId_div" cssClass="link"><s:text name="MTViewTimeSheetCategory"/></sj:a> |
			<sj:a href="TimesheetCategorySearch.action" targets="submenu_TimesheetCategorySearchId_div" indicator="indicatorSubMenuTimeSheetCategorySearchFormId_div" cssClass="link"><s:text name="MTSearchTimeSheetCategory"/></sj:a>
		
	</div>
		<br/>
		<img id="indicatorSubMenuTimeSheetCategorySearchFormId_div" src="${pageContext.request.contextPath}/resources/images/indicator.gif" alt="Loading..." style="display:none"/>
	
	<s:if test="#session.USER_NAME==null"><%try{response.sendRedirect("doLogout.action");}catch(Exception e){e.printStackTrace();}%></s:if>
	   
	<jsp:include page="common/messages.jsp" flush="true"/>
	    <s:form action="timesheetCategorySearchResult">
	     <table class="maintable">
	         <tr>
	        	<td align="center" ><table class="formouter">
	         <tr>
	            <td><table class="employeeformiinertable">
	         <tr>
	                <td class="formtitle">
						 <s:text name="label.title.TimesheetCategory.search"/>
	                </td>
	         </tr>
	     	 <tr>
	               <td class="forminner"><table class="tablealign"> 
	     	 
	         <tr><td class="inputtext"><s:text name="label.form.fields.TimesheetCategoryEmp.TimecategorynameList"/></td>
	         	        <td class="employeeinputtd"><s:textfield name="timesheetCategory.name" cssClass="employeeinput"/></td>
	                    <td class="inputerrormessage"></td>
	         	         </tr>
	    </table></td></tr></table></td></tr></table></td></tr></table>
	    		 <br/>
	    <table align="center"> 
	    	     <tr>
	    		    <td>
						<img id="indicatorForSubMenuTimeSheetCategory" src="${pageContext.request.contextPath}/resources/images/indicator.gif" alt="Loading..." style="display:none"/>				    
	    		    	<sj:submit key="button.label.submit" cssClass="submitbutton117" targets="submenu_TimesheetCategorySearchId_div" indicator="indicatorForSubMenuTimeSheetCategory"/>
	    		    </td>
	    	        <td><s:reset key="button.label.reset" cssClass="resetbutton117"/></td>
	    		 </tr>
	    </table> 		  		 
   	</s:form>
</div>