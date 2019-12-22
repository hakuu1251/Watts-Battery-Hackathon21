<template>
    <div class="cols-main pt-4">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-xl-12"><div class="block-main mt-md">
                    <div class="title-block">
                        <div class="left-obj d-inline-block">Consumption statistics</div>
                        <div class="right-obj "><img v-if="bool_connection" class="charge-stl" src="../assets/battery_charge.png"><img v-if="bool_connection==false" class="charge-stl" src="../assets/error.png">{{ bool_connection ? parseInt(battery_remaining_capacity*100/1450800) + "%" : "lost connection" }}</div>
                        <statistics class="pt-3"/>
                    </div>
                </div></div>
            </div>
            <div class="row pt-4">
                <div class="col-md-6">
                    <div class="block-main">
                        <div class="title-block">
                            <div class="left-obj d-inline-block"><span>Event Journal</span></div>
                            <div class="right-obj d-inline-block"><span class="mr-1">for</span><select class="select-stl"><option value="0" selected="">20 Dec 2019</option><option value="1">21 Dec 2019</option><option value="2">22 Dec 2019</option></select></div>
                        </div>
                        <div id="style-1" class="overflow-auto" style="height: 541px; padding: 0 20px;">
                            <div class="row">
                                <div class="col">
                                    <a href="#">
                                        <div class="title-block">
                                            <div class="left-err d-inline-block" src="../assets/error_outage.png"><img src="../assets/error_outage.png"><span class="ml-4">Grid Outage<br></span></div>
                                            <div class="right-err d-inline-block" src="../assets/error_outage.png"><span>12:30</span></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <a href="#">
                                        <div class="title-block">
                                            <div class="left-err d-inline-block" src="../assets/error_outage.png"><img src="../assets/error_overload.png"><span class="ml-4">Grid Outage<br></span></div>
                                            <div class="right-err d-inline-block" src="../assets/error_outage.png"><span>12:30</span></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <a href="#">
                                        <div class="title-block">
                                            <div class="left-err d-inline-block" src="../assets/error_outage.png"><img src="../assets/error_tech.png"><span class="ml-4">Grid Outage<br></span></div>
                                            <div class="right-err d-inline-block" src="../assets/error_outage.png"><span>12:30</span></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <a href="#">
                                        <div class="title-block">
                                            <div class="left-err d-inline-block" src="../assets/error_outage.png"><img src="../assets/error_hitemp.png"><span class="ml-4">Grid Outage<br></span></div>
                                            <div class="right-err d-inline-block" src="../assets/error_outage.png"><span>12:30</span></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <a href="#">
                                        <div class="title-block">
                                            <div class="left-err d-inline-block" src="../assets/error_outage.png"><img src="../assets/error_outage.png"><span class="ml-4">Grid Outage<br></span></div>
                                            <div class="right-err d-inline-block" src="../assets/error_outage.png"><span>12:30</span></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <a href="#">
                                        <div class="title-block">
                                            <div class="left-err d-inline-block" src="../assets/error_outage.png"><img src="../assets/error_outage.png"><span class="ml-4">Grid Outage<br></span></div>
                                            <div class="right-err d-inline-block" src="../assets/error_outage.png"><span>12:30</span></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <a href="#">
                                        <div class="title-block">
                                            <div class="left-err d-inline-block" src="../assets/error_outage.png"><img src="../assets/error_outage.png"><span class="ml-4">Grid Outage<br></span></div>
                                            <div class="right-err d-inline-block" src="../assets/error_outage.png"><span>12:30</span></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <a href="#">
                                        <div class="title-block">
                                            <div class="left-err d-inline-block" src="../assets/error_outage.png"><img src="../assets/error_outage.png"><span class="ml-4">Grid Outage<br></span></div>
                                            <div class="right-err d-inline-block" src="../assets/error_outage.png"><span>12:30</span></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <a href="#">
                                        <div class="title-block">
                                            <div class="left-err d-inline-block" src="../assets/error_outage.png"><img src="../assets/error_outage.png"><span class="ml-4">Grid Outage<br></span></div>
                                            <div class="right-err d-inline-block" src="../assets/error_outage.png"><span>12:30</span></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <usage/>
            </div>
        </div>
    </div>
</template>

<script>
    import statistics from './statistics.vue'
    import usage from './usage.vue'
    export default {
        name: 'main',
        components: {
            statistics, usage
        },
        methods:{
            connection:function(){
                let vm = this;
                this.$http
                    .get('/wats/get-bool-connection/WB-4E5436373555029B/?date=2019-12-21%2013:19:55')
                    .then(function (response) {
                        vm = response.data;
                    });
                setTimeout(function () {
                    vm.connection();
                }, 5000);
            },
            charge:function(){
                let vm = this;
                this.$http
                    .get('/wats/get-energy-usage/WB-4E5436373555029B/?date=2019-12-21%2013:19:55')
                    .then(function (response) {
                        vm = response.data;
                    });
                setTimeout(function () {
                    vm.charge();
                }, 5000);
            },
            async_comp1:function(){
                let vm = this;
                this.$http
                    .get('/wats/get-energy-usage/WB-4E5436373555029B/?date=2019-12-21%2013:19:55')
                    .then(function (response) {
                        vm = response.data;
                    });
                setTimeout(function () {
                    vm.async_comp1();
                }, 5000);
            }
        },
        created: function(){
            this.async_comp1();
        },
        data:function () {
            return{
                meter_load_from_grid: 17,
                meter_load_from_solar: 7,
                meter_load_from_battery: 228,
                bool_connection: true,
                battery_remaining_capacity: 1446575
            }
        },
    }
</script>

<style scoped>

    @media (max-width: 768px) {
        .mt-md {
            margin-top: 25px;
        }
    }

    @media (min-width: 1200px) {
        .container {
            max-width: 100%;
        }
    }

    @media (max-width: 765px) {
        .media-pt {
            margin-top: 25px;
        }
    }

    @media (max-width: 590px) {
        .cols-main {
            padding: 0px !important;
        }
    }

    .usage-stl {
        margin-left: 35px;
        margin-top: 2px;
    }

    .radius-stl {
        border-radius: 100%;
        position: absolute;
        width: 20px;
        height: 20px;
    }

    .left-obj {
        font-style: normal;
        font-weight: normal;
        font-size: 20px;
    }

    .right-obj {
        float: right;
        font-size: 14px;
        color: #748AA1;
        margin-top: 5px;
    }

    .title-block {
        padding: 20px;
        margin: auto;
    }

    .title-block1 {
        padding: 10px 20px;
        margin: auto;
    }

    .select-stl {
        background-color: rgba(0,0,0,0);
        color: white;
        border: none;
    }

    #style-1::-webkit-scrollbar-track {
        -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
        border-radius: 10px;
        background-color: rgba(0,0,0,0);
    }

    #style-1::-webkit-scrollbar {
        width: 12px;
        background-color: rgba(0,0,0,0);
    }

    #style-1::-webkit-scrollbar-thumb {
        border-radius: 10px;
        -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
        background-color: #555;
    }

    .select-stl:focus {
        background-color: #16191C;
    }

    .left-err {
        font-size: 14px;
        line-height: 16px;
    }

    .right-err {
        font-size: 14px;
        line-height: 16px;
        float: right;
        margin-top: 5px;
        font-weight: 600;
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

    .body-stl {
        background-color: #1F2327;
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
        width: 400px;
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

    .overflow-auto .row {
        border-bottom: 1px solid #33393F;
    }

    .row a {
        color: white;
    }

    .col:hover {
        transition: 0.5s;
        background-color: rgba(22,25,28,0.5);
        border-radius: 3px;
    }

    .charge-stl {
        background-size: cover;
        width: 20px;
    }
</style>
