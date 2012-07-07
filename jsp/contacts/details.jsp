<%@include file="../include.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<content tag="title">Contacts</content>
<content tag="tagline">View contact</content>
<content tag="breadcrumb">
<ul class="breadcrumb">
	<li><a href="${ctx}/">Home</a> <span class="divider">/</span></li>
	<li><a href="${ctx}/">Contacts</a> <span class="divider">/</span></li>
	<li class="active">Details for <c:out
			value='${contact.firstName} ${contact.lastName}' /></li>
</ul>
</content>

<div class="row">
	<p class="span12">
		<a href="${ctx}/contacts/${identifier}/edit" class="btn">Edit Contact</a>

		<a href="${ctx}/contacts/${identifier}/phonenumbers/new"
			class="btn pull-right">Add Phone Number</a>
	</p>
</div>

<div class="row">
	<div class="span6">
        <dl class="dl-horizontal">
            <dt>First Name</dt>
            <dd><c:out value='${contact.firstName}'/></dd>
            <dt>Last Name</dt>
            <dd><c:out value='${contact.lastName}'/></dd>
            <dt>Street</dt>
            <dd><c:out value='${contact.street}'/></dd>
            <dt>City</dt>
            <dd><c:out value='${contact.city}'/></dd>
            <dt>Zip Code</dt>
            <dd><c:out value='${contact.zipCode}'/></dd>
            <dt>Department</dt>
            <dd><c:out value='${contact.department}'/></dd>
        </dl>
	</div>

	<div class="span6">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Phone number</th>
					<th>Type</th>
					<th>&nbsp;</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${contact.phoneNumbers}" var="phoneNumber">
					<tr>
						<td><c:out value='${phoneNumber.phoneNumber}' /></td>
						<td><c:out value='${phoneNumber.phoneNumberType}' /></td>
						<td><a
							href="${ctx}/contacts/${identifier}/phonenumbers/${phoneNumber.phoneNumber}/delete">Remove</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>