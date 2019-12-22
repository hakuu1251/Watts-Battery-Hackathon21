<template>
    <div id="app">
        <singup/>
        <log/>
    </div>
</template>

<script>
    import log from '../../components/log.vue'
    import singup from '../../components/singup.vue'

    export default {
        name: 'app',
        components: {
            log,
            singup
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

    @media (min-width: 590px) {
        .modal-dialog  {
            max-width: 60%;
        }
    }
    .modal-content {
        background-color: #292E33;
        color: white;
    }
    .modal-header{
        border-bottom: 1px solid #33393F;
    }
    .modal-footer{
        border-top: 1px solid #33393F;
    }
</style>
