<template>
    <b-modal id="profile" hide-footer class="modal-stl">
        <img src="../assets/user.png" class="img-mod">
        <span class="id-mod">id: f349j349jfur6u</span>
        <a href="index.html" type="button" class="btn btn-outline-danger">LogOut</a>
    </b-modal>
</template>

<script>
    export default {
        name: "profile"
    }
</script>

<style scoped>
    .btn{
        display: block;
        margin: 20px auto 20px auto;
    }
    .id-mod{
        display: block;
        font-size: 18px;
        text-align: center;
    }
    .modal-dialog {
        margin: 0 auto !important;
        padding-top: 10px;
    }
    .img-mod{
        width: 210px;
        margin: 0 auto;
        display: block;
        padding: 30px 0;
    }
</style>
