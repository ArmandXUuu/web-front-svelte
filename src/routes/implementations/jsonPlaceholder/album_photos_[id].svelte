<script context="module">
    export async function load({ fetch, params }) {
        let response = await fetch(`https://jsonplaceholder.typicode.com/albums/${params.id}/photos`);
        let data = await response.json();

        if (response.ok) {
            return {
                props: {photos: data}
            }
        }
    }
</script>

<script>
    import PhotoCard from "../../../lib/PhotoCard.svelte";

    export let photos;
    console.log(photos);
</script>

<div class="album-photos-note">
    <p>
        p.s. : The {'{'}JSON{'}'} Placeholder API is broken, it returns invalid images url. So I used alternatively this url to get random photos :
        <br>
        https://source.unsplash.com/random/800x600
    </p>
</div>

<div class="album-photos">
    {#each photos as photo}
        <PhotoCard {photo} />
    {/each}
</div>


<style>
    .album-photos {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        grid-column-gap: 2rem;
        grid-row-gap: 3rem;
        margin-top: 1rem;
    }
</style>