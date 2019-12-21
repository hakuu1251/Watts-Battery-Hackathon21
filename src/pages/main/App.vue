<template>
    <div id="app">
        <navadapt/>
        <Nav/>
        <logo/>
        <Main/>
    </div>
</template>

<script>
    import Nav from '../../components/nav.vue'
    import navadapt from '../../components/navadapt.vue'
    import logo from '../../components/logo.vue'
    import Main from '../../components/main.vue'


    export default {
        name: 'app',
        components: {
            Nav, navadapt, logo, Main
        }
    }
</script>

<style>
    @import url('https://fonts.googleapis.com/css?family=Open+Sans&display=swap');
    .main-content {
        margin-left: 50px;
    }
    * {
        margin: 0;
        padding: 0;
        font-family: 'Open Sans', sans-serif;
    }
    .body-stl {
        background-color: #1F2327;
    }
    .apexcharts-menu-item{
        color: black;
        font-family: 'Open Sans', sans-serif;
    }
</style>
