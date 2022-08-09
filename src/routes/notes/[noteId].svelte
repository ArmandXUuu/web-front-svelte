<script>
	import { page } from '$app/stores';

	const noteId = $page.params.noteId;
</script>

<h2>
	This is the page for [noteId] : {noteId}
</h2>

<br />
<p>
	Then an API <code>GET</code> request :
</p>

<pre>
    GET http://api_route/note/{noteId}
    return jsonObject:
        {'{'}
            "noteId": {noteId},
            "noteContent": "Lorem ipsum dolor sit amet, mea id illum torquatos. Tollit bonorum no est, eum ei nibh disputando, summo repudiare...",
            "lastModified": 1659484032,
            ...
        {'}'}
</pre>

<p>The API is not ready.</p>
