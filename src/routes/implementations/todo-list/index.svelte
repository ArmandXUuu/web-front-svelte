<script context="module">
	//export const prerender = true;

	export async function load({ fetch }) {
		let resp = await fetch('/api/todo');
		let todos = await resp.json();

		if (resp.ok) {
			return {
				props: {
					todos: todos
				}
			};
		}

		const { message } = await resp.json();
		return {
			error: new Error(message)
		};
	}
</script>

<script>
	export let todos;
</script>

<div class="content">
	主要关注API，endpints。 所以前端的部件全部是复制的。 TODO：前端按钮，梳理一下乱七八糟的东西。
</div>

<div class="content">
	<form action="/api/todo" method="post">
		<input type="text" name="text_test" />
	</form>
</div>

{#each todos as todo}
	<h1>
		{todo.text}
	</h1>
{/each}
