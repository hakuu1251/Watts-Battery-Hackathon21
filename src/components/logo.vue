<template>
    <div class="container pt-4 logo-main">
        <img src="../assets/watts_battery_white_logo.png">
    </div>
</template>

<script>
    export default {
        name: "logo"
    }
</script>

<style scoped>
    @media (min-width: 840px) {
        .logo-main {
            margin-left: 120px;
        }
    }
    @media (max-width: 840px) {
        .logo-main {
            text-align: center;
        }
    }
</style>
