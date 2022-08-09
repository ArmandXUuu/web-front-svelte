<script>
    export let photo;
</script>

<div class="photo-card">
    <a href="{photo.url}">
        <!--<img src="{photo.thumbnailUrl}" alt="{photo.title}">-->
        <img class:photo src="https://source.unsplash.com/random/800x600" alt="{photo.title}">
    </a>
    <div class="photo-title">
        {photo.title}
    </div>
</div>

<style>
    .photo {
        width: 100%;
    }
    .photo-title {
        padding-top: 6px;
        text-align: center;
        font-family: "Courier New",serif;
    }
</style>