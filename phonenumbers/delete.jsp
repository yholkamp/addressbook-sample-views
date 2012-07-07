<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<content tag="title">Contacts</content>
<content tag="tagline">Delete phone number for contact</content>
<content tag="breadcrumb">
    <ul class="breadcrumb">
        <li><a href="${ctx}/">Home</a> <span class="divider">/</span></li>
        <li><a href="${ctx}/">Contacts</a> <span class="divider">/</span></li>
        <li><a href="${ctx}/contacts/${contact.identifier}"><c:out value='${contact.firstName} ${contact.lastName}'/></a> <span class="divider">/</span></li>
        <li class="active">Confirm deletion of phone number</li>
    </ul>
</content>

<form:form commandName="phoneNumber">
    <form:errors path="*" cssClass="errorBox"/>
    <form:hidden path="phoneNumber"/>
    <p>Are you sure?</p>
    <input type="submit" name="submit" value="Delete" class="btn btn-danger"/> <a href="/" class="btn">Cancel</a>
</form:form>