<script context="module">
	import { browser, dev } from '$app/env';

	// we don't need any JS on this page, though we'll load
	// it in dev so that we get hot module replacement...
	export const hydrate = dev;

	// ...but if the client-side router is already loaded
	// (i.e. we came here from elsewhere in the app), use it
	export const router = browser;

	// since there's no dynamic data here, we can prerender
	// it so that it gets served as a static asset in prod
	export const prerender = true;
</script>

<svelte:head>
	<title>About</title>
	<meta name="description" content="About this app" />
</svelte:head>

<div class="content">
	<section id="site">
		<h1>About this site - How I deploied it?</h1>
		<p>
			First I bought a cool domain and chose Cloudflare as the DNS provider. One of it's benefit is
			that I cantake advantage of the edge network that comes with Cloudflare and its protection
			features.
		</p>
		<p>
			Then it's time to choose techniques for front-end and back-ends, and then deploy them. From my
			internship experience this is not difficult, I rented a virtual machine <i
				>(pretty low performance beacuse I'm poor)</i
			>
			and set <code>Docker</code> on it.
			<br />
		</p>

		<p>So the general structure is shown in this figure:</p>

		<div style="text-align: center">
			<a href="schema.png" target="_blank" rel="noopener noreferrer">
				<img src="schema.png" alt="The strcture of my site" style="width: 90%;" /></a
			>
		</div>
	</section>

	<secton id="app">
		<h1>About this app</h1>

		<p>
			This is a <a href="https://kit.svelte.dev">SvelteKit</a> app. You can make your own by typing the
			following into your command line and following the prompts:
		</p>

		<pre>npm create svelte@latest</pre>

		<p>
			The page you're looking at is purely static HTML, with no client-side interactivity needed.
			Because of that, we don't need to load any JavaScript. Try viewing the page's source, or
			opening the devtools network panel and reloading.
		</p>

		<p>
			The TODOs page illustrates SvelteKit's data loading and form handling. Try using it with
			JavaScript disabled! (I deleted this shit)
		</p>
	</secton>

	<section id="me">
		<h1>About me</h1>
		<div style="text-align: center">
			<img src="/avatar.png" class="avatar" alt="A cool guy" />
		</div>
		<strong> WIP </strong>
		<br />
		我还没想好😁
		<br />
	</section>
</div>

<style>
	.content {
		width: 100%;
	}

	.avatar {
		width: 23%;
		text-align: center;
		border-radius: 50em;
		border-color: #666666;
		border-width: 2px;
		border-style: solid;
		transition: transform 200ms;
	}

	.avatar:hover {
		transform: scale(1.06);
		z-index: 1;
	}
</style>
