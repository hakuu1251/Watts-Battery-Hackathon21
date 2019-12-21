<template>
    <div id="app">
        <log />
    </div>
</template>

<script>
    import log from '../../components/log.vue'

    export default {
        name: 'app',
        components: {
            log
        },
    }

</script>

<style>
    @import url('https://fonts.googleapis.com/css?family=Open+Sans&display=swap');
    * {
        margin: 0;
        padding: 0;
        font-family: 'Open Sans', sans-serif;
    }
    .body-stl {
        background-color: #1F2327;
    }
</style>
