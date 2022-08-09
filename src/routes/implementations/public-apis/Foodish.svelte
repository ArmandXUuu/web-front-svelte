<script context="module">
	export async function load({ fetch }) {
		const resp = await fetch(`https://foodish-api.herokuapp.com/api/`);
		const resp_json = await resp.json();
		return {
			props: {
				data: resp_json
			}
		};
	}
</script>

<script>
	export let data;
	import { fly } from 'svelte/transition';
</script>

<div
	class="content"
	in:fly={{ x: 100, duration: 300, delay: 0 }}
	out:fly={{ x: 100, duration: 300, delay: 0 }}
>
	<h1><code>Foodish</code> API</h1>

	<div class="text">
		<p>
			Base URL for endpoints : <code>https://foodish-api.herokuapp.com/</code>.
			<br />
			I used an simple endpoint <code>GET /api/</code> who returns a random food dish from random category
			and display it in page.
		</p>
		<p>Response of this page:</p>
		<pre style="position: relative">
            {JSON.stringify(data)}
        </pre>
	</div>

	<div class="image-holder" in:fly={{ y: 50, duration: 500, delay: 600 }}>
		<img src={data.image} alt="Picture from foodish-api - a random food dish photo" />
	</div>

	<br />

	<div class="button" style="text-align: center">
		<button onClick="document.location.reload()"> Refresh this page </button>
	</div>
</div>

<style>
	h1 code {
		font-size: inherit;
	}
	img {
		width: 40%;
		border-radius: 10px;
		box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.2);
	}
	.image-holder {
		text-align: center;
	}
</style>
