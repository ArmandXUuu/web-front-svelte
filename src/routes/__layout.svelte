<script>
	import Header from '$lib/header/Header.svelte';
	import '../app.css';
</script>

<Header />

<main>
	<slot />
</main>

<footer>
	<p style="padding: 1rem 0 0 0;">
		Welcome to the personal website of <a
			href="https://www.linkedin.com/in/ziyi-xu-armand"
			target="_blank">Ziyi XU</a
		>
		<br />
		This site is <em>Work In Progress</em>
	</p>
</footer>

<style>
	main {
		flex: 1;
		display: flex;
		flex-direction: column;
		padding: 1rem;
		width: 100%;
		height: 100%;
		max-width: 1024px;
		margin: 0 auto;
		box-sizing: border-box;
	}

	footer {
		display: block;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		width: 100%;
		font-size: 13px;
		margin: 2rem 0 0 0;
	}

	footer a {
		font-weight: bold;
	}

	@media (min-width: 480px) {
		footer {
			padding: 0 0;
		}
	}

	p {
		text-align: center;
	}
</style>
