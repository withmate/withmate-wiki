<%@ page import="io.withmate.wiki.Wiki" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'wiki.label', default: 'Wiki')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-wiki" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-wiki" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list wiki">

        <g:if test="${wikiInstance?.title}">
            <li class="fieldcontain">
                <span id="title-label" class="property-label"><g:message code="wiki.title.label"
                                                                         default="Title"/></span>

                <span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${wikiInstance}"
                                                                                         field="title"/></span>

            </li>
        </g:if>

        <g:if test="${wikiInstance?.rev}">
            <li class="fieldcontain">
                <span id="rev-label" class="property-label"><g:message code="wiki.rev.label" default="Rev"/></span>

                <span class="property-value" aria-labelledby="rev-label"><g:fieldValue bean="${wikiInstance}"
                                                                                       field="rev"/></span>

            </li>
        </g:if>

        <g:if test="${wikiInstance?.email}">
            <li class="fieldcontain">
                <span id="email-label" class="property-label"><g:message code="wiki.email.label"
                                                                         default="Email"/></span>

                <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${wikiInstance}"
                                                                                         field="email"/></span>

            </li>
        </g:if>

        <g:if test="${wikiInstance?.contentUrl}">
            <li class="fieldcontain">
                <span id="contentUrl-label" class="property-label"><g:message code="wiki.contentUrl.label"
                                                                              default="Content Url"/></span>

                <span class="property-value" aria-labelledby="contentUrl-label"><g:fieldValue bean="${wikiInstance}"
                                                                                              field="contentUrl"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: wikiInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${wikiInstance}"><g:message code="default.button.edit.label"
                                                                                     default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
