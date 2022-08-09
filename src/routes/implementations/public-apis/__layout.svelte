<script>
	import { page } from '$app/stores';
	import { fly } from 'svelte/transition';
</script>

{#if $page.url.pathname !== '/implementations/public-apis'}
	<a
		href="/implementations/public-apis"
		sveltekit:prefetch
		in:fly={{ x: 100, duration: 300, delay: 300 }}
		out:fly={{ x: 100, duration: 300, delay: 300 }}
	>
		Back to Implementation - public-apis
	</a>
{/if}

<slot />
