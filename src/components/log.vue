<template>
    <div class="container">
        <form class="log-form"><img class="logo-form" src="../assets/watts_battery_white_logo.png">
            <input class="form-control inp-form" type="text" placeholder="Email or id">
            <input class="form-control inp-form mt-3" type="password" placeholder="Password">
            <a class="btn btn-secondary btn-style mt-3 d-block" href="main.html">Let me in!</a>
            <a href="#singup" v-b-modal="'singup'" class="singup pt-2 d-block">SingUp</a>
        </form>
    </div>
</template>

<script>

    export default {
        name: "log",
    }
</script>

<style scoped>
    .singup{
        color: #495057;
        font-size: 14px;
    }
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

    .main-content {
        margin-left: 50px;
    }

    .block-main {
        background-color: #ffffff;
        box-shadow: 0 0 10px rgba(0,0,0,0.5);
    }

    .logo {
        display: flex;
        height: 32px;
    }

    .imp-stl {
        display: flex;
    }

    .log-form {
        min-width: 320px;
        margin: 0 auto;
        text-align: center;
        margin-top: 10%;
    }

    .logo-form {
        margin-bottom: 10%;
    }

    .inp-form {
        max-width: 320px;
        margin: 0 auto;
        border: 1px solid #FFFFFF;
        box-sizing: border-box;
        border-radius: 6px;
        background-color: rgba(0,0,0,0);
        font-size: 14px;
        line-height: 19px;
    }

    .btn-style {
        background: #FFCD34;
        margin: 0 auto;
        border: 1px solid #FFFFFF;
        box-sizing: border-box;
        border-radius: 6px;
        width: 211px;
        height: 37px;
        left: 616px;
        top: 552px;
    }

    .cols-main {
        padding: 0px 40px 0px 120px;
        color: white;
    }

    .block-main {
        background: #292E33;
        box-shadow: 0px 1px 4px rgba(0, 0, 0, 0.2);
        border-radius: 5px;
    }
</style>
