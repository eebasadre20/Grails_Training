<%@ page import="com.gtunes.domain.Store" %>



<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="store.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${storeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'albums', 'error')} ">
	<label for="albums">
		<g:message code="store.albums.label" default="Albums" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${storeInstance?.albums?}" var="a">
    <li><g:link controller="album" action="show" id="${a.id}">${a?.title?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="album" action="create" params="['store.id': storeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'album.label', default: 'Album')])}</g:link>
</li>
</ul>

</div>

