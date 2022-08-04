<script context="module">
    export async function load({ fetch }) {
        const resp = await fetch(`https://foodish-api.herokuapp.com/api/`);
        const resp_json = await resp.json()
        return {
            props: {
                data: resp_json
            }
        }
    }
</script>


<script>
    export let data;
</script>

<h1>
    TEST {data}
</h1>
