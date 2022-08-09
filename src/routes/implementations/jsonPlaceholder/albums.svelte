<script context="module">
    export async function load({ fetch }) {
        let response = await fetch("https://jsonplaceholder.typicode.com/albums");
        let body = await response.json();

        if (response.ok) {
            return {
                props: {albums: body}
            }
        }
    }
</script>

<script>
    export let albums;
    console.log(albums);
</script>



<div>
    Click on album title to see photos
    <ul>
        {#each albums as album}
            <li>
                <a href="./album_photos_{album.id}">{album.title}</a>

            </li>
        {/each}
    </ul>
</div>