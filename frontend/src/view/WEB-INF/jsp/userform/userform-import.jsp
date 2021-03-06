<%@ page language="java" contentType="text/html; charset=utf-8" errorPage="/error.do" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>

<c:set var="isImportTemplate" value="false"/>
<c:if test="${not empty param.importFromTemplates and param.importFromTemplates}">
	<c:set var="isImportTemplate" value="true"/>
</c:if>

<form method="post" action="<c:url value='/webform/importUserForm.action'/>" enctype="multipart/form-data" data-form="resource">
	<input type="hidden" name="importTemplate" value="${isImportTemplate}"/>

	<div class="tile">
		<div class="tile-header">
			<h2 class="headline">
				<bean:message key="forms.import"/>
			</h2>
		</div>
		<div class="tile-content">
			<div class="tile-content-forms form-vertical">
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-controls">
							<input type="file" name="uploadFile" class="form-control">
						</div>
						<div class="input-group-btn">
							<button type="button" class="btn btn-regular btn-primary" data-form-submit>
								<i class="icon icon-cloud-upload"></i>
								<span class="text">
									<bean:message key="forms.import"/>
								</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
