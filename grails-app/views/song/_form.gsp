<%@ page import="com.gtunes.domain.Song" %>



<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="song.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${songInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'artist', 'error')} required">
	<label for="artist">
		<g:message code="song.artist.label" default="Artist" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="artist" required="" value="${songInstance?.artist}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'albums', 'error')} required">
	<label for="albums">
		<g:message code="song.albums.label" default="Albums" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="albums" name="albums.id" from="${com.gtunes.domain.Album.list()}" optionValue="title" optionKey="id" required="" value="${songInstance?.albums?.id}" class="many-to-one"/>
</div>

