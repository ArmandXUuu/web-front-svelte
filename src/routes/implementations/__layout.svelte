<script>
	import { page } from '$app/stores';
	import { fly } from 'svelte/transition';
	console.log($page)

</script>


<div class="bread-crumbs">
	<span>
		<a href="/implementations">Implementations</a>
	</span>
	{#if $page.url.pathname !== "/implementations"}
		/
		<span>
			<a href="{$page.url.pathname}">{($page.url.pathname).split("/").slice(-1)}</a>
		</span>
	{/if}
</div>
<!--{#if $page.url.pathname !== '/implementations'}
	<a
		href="/implementations"
		sveltekit:prefetch
		in:fly={{ x: 100, duration: 300, delay: 300 }}
		out:fly={{ x: 100, duration: 300, delay: 300 }}
	>
		Back to Implementation list
	</a>
{/if}-->

<slot />
