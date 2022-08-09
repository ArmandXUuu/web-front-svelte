<script>
	import { fly } from 'svelte/transition';

	const title = 'Public APIs';
</script>

<svelte:head>
	<title>{title}</title>
</svelte:head>

<div class="content" in:fly={{ x: -100, duration: 300, delay: 300 }}>
	<h1>{title}</h1>
	<p>
		Here I will try to implemente some fun APIs from this repo GitHub :
		<a href="https://github.com/public-apis/public-apis" target="_blank">public-apis/public-apis</a>
	</p>
	<p>
		Which is <em>A collective list of free APIs for use in software and web development</em>
	</p>

	<h2>
		<a href="./public-apis/Foodish" sveltekit:prefetch>
			<code>Foodish</code>
		</a>
	</h2>
	<p>
		GitHub repo :
		<a href="https://github.com/surhud004/Foodish#readme" target="_blank">
			<code>surhud004/Foodish</code>
		</a>
		<br />
		"A Node.js/Express.js REST API to GET a random picture of food dishes."
	</p>
	<h2>What else ? (WIP)</h2>
	<p>...</p>
	<br /><br /><br /><br />
	<p style="font-size: 0.9rem">
		* Perhaps you might have noticed, I applied some animations on this page and its sub-pages --
		the transitions between pages.
		<br />
		I found it hard to tune and it's difficult to get to perfect, and I think it's frustrating to add
		the <code>in:fly=...</code>
		and <code>out:fly=...</code> everywhere, so how can I do it easily ?
	</p>
</div>

<style>
	h2 a code {
		font-size: inherit;
	}
	p code {
		font-size: inherit;
	}
</style>
