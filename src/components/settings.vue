<template>
    <b-modal id="settings" hide-footer class="modal-stl">
        <div class="custom-control custom-switch">
            <input type="checkbox" class="custom-control-input" id="customSwitch1" v-model="toggle">
            <label class="custom-control-label" for="customSwitch1">Light mode</label>
        </div>
    </b-modal>
</template>

<script>
    export default {
        name: "settings",
    }
</script>

<style scoped>

</style>
