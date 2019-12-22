<template>
    <div class="nav-left">
        <a href="#profile" v-b-modal="'profile'"><img src="../assets/user.png" class="nav-obj"></a>
        <a href="#settings" v-b-modal="'settings'"><img src="../assets/settings.png" class="nav-obj pt-4"></a>
        <!--modals-->
    </div>
</template>

<script>
    export default {
        name: "nav"
    }
</script>

<style scoped>

    .nav-left {
        width: 80px;
        height: 100%;
        position: fixed;
        display: inline-table;
        background-color: #16191C;
    }

    .nav-obj {
        display: flex;
        width: 40px;
        margin: 0 auto;
        margin-top: 20px;
    }

    @media (max-width: 590px) {
        .nav-left {
            display: none;
        }
    }
</style>
