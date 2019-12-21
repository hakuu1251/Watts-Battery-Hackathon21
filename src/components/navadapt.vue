<template>
    <div class="nav-disp">
        <b-navbar toggleable="lg" type="dark" variant="dark">
            <img src="../assets/watts_battery_white_logo.png" class="d-inline-block align-top mt-1" alt="">

            <b-navbar-toggle target="nav-collapse"/>

            <b-collapse id="nav-collapse" is-nav>
                <b-navbar-nav>
                    <b-nav-item href="#">Settings</b-nav-item>
                    <b-nav-item href="index.html">SingOut</b-nav-item>
                </b-navbar-nav>
            </b-collapse>
        </b-navbar>
    </div>
</template>

<script>
    export default {
        name: "navadapt"
    }
</script>

<style scoped>
    .nav-disp {
        display: none;
    }
    @media (max-width: 590px) {
        .nav-disp {
            display: block;
        }
    }
</style>
