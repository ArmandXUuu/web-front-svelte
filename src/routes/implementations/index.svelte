<script>
	export const implementationCategories = [
		{
			subPath: 'lusha',
			displayName: 'Lusha API'
		},
		{
			subPath: 'public-apis',
			displayName: 'public-apis'
		},
		{
			subPath: 'jsonPlaceholder',
			displayName: '{JSON} Placeholder'
		}
	];
</script>


{#each implementationCategories as cat}
	<h1>
		<a href="/implementations/{cat.subPath}">{cat.displayName}</a>
	</h1>
{/each}
