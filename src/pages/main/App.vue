<template>
    <div id="app">
        <Nav1/>
        <Nav/>
        <profile/>
        <logo/>
        <Main/>
        <settings/>
    </div>
</template>

<script>
    import Nav from '../../components/nav.vue'
    import Nav1 from '../../components/nav1.vue'
    import logo from '../../components/logo.vue'
    import Main from '../../components/main.vue'
    import profile from '../../components/profile.vue'
    import settings from '../../components/settings.vue'

    export default {
        name: 'app',
        components: {
            Nav,
            Nav1,
            logo,
            Main,
            profile,
            settings
        }
    }
</script>

<style>
    @import url('https://fonts.googleapis.com/css?family=Open+Sans&display=swap');
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
