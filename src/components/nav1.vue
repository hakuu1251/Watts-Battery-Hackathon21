<template>
    <b-navbar toggleable="lg" type="dark" variant="dark" class="nav-disp">
        <img src="../assets/watts_battery_white_logo.png" class="d-inline-block align-top mt-1" alt="">

        <b-navbar-toggle target="nav-collapse"/>

        <b-collapse id="nav-collapse" is-nav>
            <b-navbar-nav>
                <b-nav-item href="#">Settings</b-nav-item>
                <b-nav-item href="index.html">SingOut</b-nav-item>
            </b-navbar-nav>
        </b-collapse>
    </b-navbar>
</template>

<script>
    import Vue from 'vue'
    import BootstrapVue from 'bootstrap-vue'

    import 'bootstrap/dist/css/bootstrap.css'
    import 'bootstrap-vue/dist/bootstrap-vue.css'

    Vue.use(BootstrapVue)

    // This imports all the layout components such as <b-container>, <b-row>, <b-col>:
    import { LayoutPlugin } from 'bootstrap-vue'
    Vue.use(LayoutPlugin)

    // This imports <b-modal> as well as the v-b-modal directive as a plugin:
    import { ModalPlugin } from 'bootstrap-vue'
    Vue.use(ModalPlugin)

    // This imports <b-card> along with all the <b-card-*> sub-components as a plugin:
    import { CardPlugin } from 'bootstrap-vue'
    Vue.use(CardPlugin)

    // This imports directive v-b-scrollspy as a plugin:
    import { VBScrollspyPlugin } from 'bootstrap-vue'
    Vue.use(VBScrollspyPlugin)

    // This imports the dropdown and table plugins
    import { DropdownPlugin, TablePlugin } from 'bootstrap-vue'
    Vue.use(DropdownPlugin)
    Vue.use(TablePlugin)

    export default {
        name: "Nav1"
    }
</script>

<style scoped>
    @media (min-width: 590px) {
        .nav-disp {
            display: none;
        }
    }
</style>
