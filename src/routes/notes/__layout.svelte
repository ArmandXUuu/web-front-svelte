<script>
	import { page } from '$app/stores';
</script>

{#if $page.url.pathname !== '/notes'}
	<a href="/notes" sveltekit:prefetch> Back to Note list </a>
{/if}
<slot />
