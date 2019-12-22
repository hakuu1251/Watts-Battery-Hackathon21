<template>
    <apexchart type=bar height=350 :options="chartOptions" :series="series" />
</template>

<script>
    import VueApexCharts from 'vue-apexcharts'

    export default {
        name: "usage",
        components:{
            apexchart: VueApexCharts,
        },
        methods:{
            async_comp1:function(){
                let vm = this;
                this.$http
                    .get('/get-energy-usage/WB-4E5436373555029B/?date=2019-12-21%2013:19:55')
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
                series: [{
                    data: [100, 27, 52, 23]
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
    .apexcharts-xaxis-label{
        border-radius: 5px;
    }
</style>
