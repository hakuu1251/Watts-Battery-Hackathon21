<template>
    <b-modal id="profile" hide-footer class="modal-stl">
        <img src="../assets/user.png" class="img-mod">
        <span class="id-mod mb-4">id: WB-4E5436373555029B</span>
        <span>Economy</span>
        <div style="border-top: 1px solid #33393F; border-bottom: 1px solid #33393F; padding: 10px 0; margin-top: 10px">
            <div class="row">
                <div class="col">
                    <span class="saving-stl">Saving: <strong>{{ data_value + "€" }} / {{ max + "€" }}</strong></span>
                    <b-progress :max="max" height="2rem">
                        <b-progress-bar :value="data_value">
                        </b-progress-bar>
                    </b-progress>
                </div>
                <div class="col" style="margin-top: auto;">
                    <span class="saving-stl">Target</span>
                    <form>
                        <input type="number" class="form-control" placeholder="€" style="height: 2rem;" v-model="max">
                    </form>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col d-block">
                    <span v-if="data_profit > 0" class="radius-stl" style="border: 8px solid rgb(128, 174, 88)"></span><span v-if="data_profit < 0" class="radius-stl" style="border: 8px solid rgb(198, 81, 42)"></span><span v-if="data_profit == 0" class="radius-stl" style="border: 8px solid rgb(240, 204, 61)"></span>
                    <span class="ml-4 prof-stl">Profit: {{ data_profit + "€" }}</span>
                </div>
            </div>
        </div>
        <a href="index.html" type="button" class="btn btn-outline-danger">LogOut</a>
    </b-modal>
</template>

<script>
    export default {
        name: "profile",
        methods:{
            saving:function(){
                let vm = this;
                this.$http
                    .get('/wats/get-economy-profile/WB-4E5436373555029B/?date=2019-12-21%2013:19:55')
                    .then(function (response) {
                        vm = response.data;
                    });
                setTimeout(function () {
                    vm.saving();
                }, 5000);
            }
        },
        data() {
            return {
                max:'',
                data_saving:'',
                data_value: 40,
                data_profit: 10
            }
        }
    }
</script>

<style scoped>
    .saving-stl{
        color: #748AA1;
        font-size: 14px;
    }
    .prof-stl {
        font-size: 14px;
        color: #748AA1;
        padding-bottom: 11px;
    }
    .radius-stl {
        border-radius: 100%;
        position: absolute;
        width: 15px;
        height: 15px;
        margin-top: 4px;
    }
    .btn{
        display: block;
        margin: 20px auto 5px auto;
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
        padding: 10px 0;
    }
</style>
