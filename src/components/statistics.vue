<template>
    <div>
        <apexchart type=area class="" height=450 :options="chartOptions" :series="series" />
    </div>
</template>


<script>

    import VueApexCharts from 'vue-apexcharts'

    export default {
        name: 'statistics',
        components: {
            apexchart: VueApexCharts,
        },
        methods:{
            async_comp:function(){
                let vm = this;
                this.$http
                    .get('/wats/get-report/WB-4E5436373555029B/?date=2019-12-21%2013:19:55')
                    .then(function (response) {
                        vm.series = response.data;
                    });
                setTimeout(function () {
                    vm.async_comp();
                }, 5000);
            }
        },
        created: function(){
            this.async_comp();
        },
        data: function () {
            return {
                series: [{
                    name: 'Battery',
                    data: [{x: '05/06/2014', y: 7}, {x: '05/08/2014', y: 9}, {x: '05/12/2014', y: 4}]
                }, {
                    name: 'Solar',
                    data: [{x: '05/06/2014', y: 0}, {x: '05/08/2014', y: 5}, {x: '05/12/2014', y: 14}]
                }, {
                    name: 'Grid',
                    data: [{x: '05/06/2014', y: 8}, {x: '05/08/2014', y: 12}, {x: '05/12/2014', y: 10}],
                }],
                chartOptions: {
                    dataLabels: {
                        enabled: false
                    },
                    stroke: {
                        curve: 'straight',
                    },
                    colors: ['#80ae58','#f0cc3d','#5e79a8'
                    ],
                    xaxis: {
                        categories:["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                        labels: {
                            style: {
                                colors: '#8e8da4',
                            },
                            datetimeFormatter:{
                                month: "MMM yyyy"
                            }
                        },
                        type: "datetime",
                        axisBorder: {
                            show: false
                        },
                        axisTicks: {
                            show: false
                        },
                    },
                    yaxis: {
                        tickAmount: 5,
                        floating: false,
                        labels: {
                            formatter: function(value){
                                return value + " Wh";
                            },
                            style: {
                                color: '#8e8da4',
                            },
                            offsetY: -7,
                            offsetX: 0,
                        },
                        axisBorder: {
                            show: false,
                        },
                        axisTicks: {
                            show: false
                        }
                    },
                    fill: {
                        opacity: 1,
                    },
                    tooltip: {
                        fixed: {
                            enabled: false,
                            position: 'topRight'
                        },
                        x: {
                            show: false,
                            format: 'dd MMM',
                            formatter: undefined,
                        },
                        style: {
                            fontSize: '12px',
                            fontFamily: 'Open Sans',
                        },
                    },
                    grid: {
                        yaxis: {
                            lines: {
                                offsetX: -20
                            }
                        },
                        padding: {
                            left: 20,
                            right: 20
                        },
                    },
                    legend: {
                        show: false,
                    }
                }

            }
        }
    };
</script>
<style>
    @import url('https://fonts.googleapis.com/css?family=Open+Sans&display=swap');
    .apexcharts-tooltip {
        color: #8e8da4;
    }
</style>
