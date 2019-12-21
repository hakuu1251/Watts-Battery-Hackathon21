<template>
    <div class="cols-main pt-4">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-xl-12"><div class="block-main mt-md">
                    <div class="title-block">
                        <div class="left-obj">
                            Consumption statistics
                        </div>
                        <statistics class="pt-3"/>
                    </div>
                </div></div>
            </div>
            <div class="row pt-4">
                <div class="col-md-6">
                    <div class="block-main">
                        <div class="title-block">
                            <div class="left-obj d-inline-block"><span>Event Journal</span></div>
                            <div class="right-obj d-inline-block"><span class="mr-1">for</span><select class="select-stl"><option value="0" selected="">10 Aug 2019</option><option value="1">11 Aug 2019</option><option value="2">12 Aug 2019</option></select></div>
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
                <div class="col-md-6 pb-5"><div class="block-main mt-md">
                    <div class="title-block">
                        <div class="left-obj d-inline-block">
                            Energy usage
                        </div>
                        <div class="right-obj d-inline-block"><span class="mr-1">for</span><select class="select-stl"><option value="0" selected="">10 Aug 2019</option><option value="1">11 Aug 2019</option><option value="2">12 Aug 2019</option></select></div>
                        <usage/>
                        <div class="title-block1">
                            <div class="left-err d-inline-block"><span class="radius-stl" style="border: 4px solid #C6512A;"></span><span class="usage-stl d-inline-block">Total consumption<br></span></div>
                            <div class="right-err d-inline-block"><span>23 kWh<br></span></div>
                        </div>
                        <div class="title-block1">
                            <div class="left-err d-inline-block"><span class="radius-stl" style="border: 4px solid #80AE58;"></span><span class="usage-stl d-inline-block">Battery<br></span></div>
                            <div class="right-err d-inline-block"><span>7 kWh<br></span></div>
                        </div>
                        <div class="title-block1">
                            <div class="left-err d-inline-block"><span class="radius-stl" style="border: 4px solid #F0CC3D;"></span><span class="usage-stl d-inline-block">Solar<br></span></div>
                            <div class="right-err d-inline-block"><span>12 kWh<br></span></div>
                        </div>
                        <div class="title-block1">
                            <div class="left-err d-inline-block"><span class="radius-stl" style="border: 4px solid #5E79A8;"></span><span class="usage-stl d-inline-block">Grid<br></span></div>
                            <div class="right-err d-inline-block"><span>4 kWh<br></span></div>
                        </div>
                    </div>
                </div></div>
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
        background-color: #16191C;
        border-radius: 3px;
    }


</style>
