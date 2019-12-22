<template>
    <div class="col-md-6 pb-5"><div class="block-main mt-md">
        <div class="title-block">
            <div class="left-obj d-inline-block">
                Energy usage
            </div>
            <div class="right-obj d-inline-block"><span class="mr-1">for</span><select class="select-stl"><option value="0" selected="">20 Dec 2019</option><option value="1">21 Dec 2019</option><option value="2">22 Dec 2019</option></select></div>
            <apexchart type=bar height=350 :options="chartOptions" :series="series" />
            <div class="title-block1">
                <div class="left-err d-inline-block"><span class="radius-stl" style="border: 4px solid #C6512A;"></span><span class="usage-stl d-inline-block">Total consumption<br></span></div>
                <div class="right-err d-inline-block"><span>{{ meter_load_from_grid + meter_load_from_solar + meter_load_from_battery }} Wh<br></span></div>
            </div>
            <div class="title-block1">
                <div class="left-err d-inline-block"><span class="radius-stl" style="border: 4px solid #80AE58;"></span><span class="usage-stl d-inline-block">Battery<br></span></div>
                <div class="right-err d-inline-block"><span>{{ meter_load_from_battery }} Wh<br></span></div>
            </div>
            <div class="title-block1">
                <div class="left-err d-inline-block"><span class="radius-stl" style="border: 4px solid #F0CC3D;"></span><span class="usage-stl d-inline-block">Solar<br></span></div>
                <div class="right-err d-inline-block"><span>{{ meter_load_from_solar }} Wh<br></span></div>
            </div>
            <div class="title-block1">
                <div class="left-err d-inline-block"><span class="radius-stl" style="border: 4px solid #5E79A8;"></span><span class="usage-stl d-inline-block">Grid<br></span></div>
                <div class="right-err d-inline-block"><span>{{ meter_load_from_grid }} Wh<br></span></div>
            </div>
        </div>
    </div></div>
</template>

<script>
    import VueApexCharts from 'vue-apexcharts'
    import Vue from 'vue'
    import BootstrapVue from 'bootstrap-vue'

    import 'bootstrap/dist/css/bootstrap.css'
    import 'bootstrap-vue/dist/bootstrap-vue.css'

    Vue.use(BootstrapVue)

// This imports all the layout components such as <b-container>, <b-row>, <b-col>:
    import { LayoutPlugin } from 'bootstrap-vue'
    Vue.use(LayoutPlugin)

    export default {

        name: "usage",
        components:{
            apexchart: VueApexCharts,
        },
        methods:{
            async_comp1:function(){
                let vm = this;
                this.$http
                    .get('/wats/get-statistic-day/WB-4E5436373555029B/')
                    .then(function (response) {
                        vm.series = response.data;
                    });
                setTimeout(function () {
                    vm.async_comp1();
                }, 10000);
            }
        },
        created: function(){
            this.async_comp1();
        },
        data: function () {
            return{
                meter_load_from_grid: 2740.44,
                meter_load_from_solar: 0.0,
                meter_load_from_battery: 3.69,
                series: [{
                    data: [100, 1.78, 0, 98.22]
                }],
                chartOptions: {
                    stroke: {
                        show: true,
                        colors: '#fff',
                        width: 1,
                    },
                    plotOptions: {
                        bar: {
                            distributed: true,
                            horizontal: true,
                            dataLabels: {
                                position: 'bottom'
                            },
                        }
                    },
                    colors: ['#C6512A','#80AE58','#F0CC3D','#5E79A8'
                    ],
                    dataLabels: {
                        enabled: false,
                        formatter: function(value){
                            return value + "%";
                        },
                        textAnchor: 'right',
                        style: {
                            fontSize: '14px',
                            fontFamily: 'Open Sans',
                        },
                    },
                    xaxis: {
                        max: 100,
                        categories: ['Total consumption', 'Battery', 'Solar', 'Grid'
                        ],
                        labels: {
                            style: {
                                colors: '#8e8da4',
                                cssClass: 'apexcharts-xaxis-label'
                            },
                            formatter: function(value){
                                return value + "%";
                            },
                        },
                    },
                    yaxis: {
                        labels: {
                            show: false,
                            formatter: function(value){
                                return value + "%";
                            },
                        }
                    },
                    tooltip: {
                        show: false,
                        theme: 'light',
                        x: {
                            show: true
                        },
                        y: {
                            title: {
                                formatter: function () {
                                    return ''
                                }
                            }
                        },
                        style: {
                            fontSize: '12px',
                            fontFamily: 'Open Sans',
                        },
                    },
                    legend: {
                        show: false
                    },
                }
            }
        }
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
    .apexcharts-xaxis-label{
        border-radius: 5px;
    }
</style>
