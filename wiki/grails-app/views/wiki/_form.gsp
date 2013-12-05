<%@ page import="io.withmate.wiki.Wiki" %>



<div class="fieldcontain ${hasErrors(bean: wikiInstance, field: 'title', 'error')} ">
    <label for="title">
        <g:message code="wiki.title.label" default="Title"/>

    </label>
    <g:textField name="title" value="${wikiInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: wikiInstance, field: 'rev', 'error')} required">
    <label for="rev">
        <g:message code="wiki.rev.label" default="Rev"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="rev" type="number" value="${wikiInstance.rev}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: wikiInstance, field: 'email', 'error')} required">
    <label for="email">
        <g:message code="wiki.email.label" default="Email"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="email" name="email" required="" value="${wikiInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: wikiInstance, field: 'contentUrl', 'error')} required">
    <label for="contentUrl">
        <g:message code="wiki.contentUrl.label" default="Content Url"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="contentUrl" required="" value="${wikiInstance?.contentUrl}"/>
</div>

