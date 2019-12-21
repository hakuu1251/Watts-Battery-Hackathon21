<template>
    <div class="nav-left">
        <a href="#"><img src="../assets/user.png" class="nav-obj"></a>
        <a href="#"><img src="../assets/settings.png" class="nav-obj pt-4"></a>
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
</style>
