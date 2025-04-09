<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>


<title>Nutrition Planner</title>

<jsp:include page="Admincss.jsp"></jsp:include>

</head>
<body>
 
  <jsp:include page="AdminHeader.jsp"></jsp:include>
  <jsp:include page="AdminSidebar.jsp"></jsp:include>
  
  <!-- -Main content -->
  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">
             <!--  
                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li> 

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>
                -->

                <div class="card-body">
                  <h5 class="card-title">Sales <span>| Today</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>145</h6>
                      <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">
 <!-- - -->
                

                <div class="card-body">
                  <h5 class="card-title">Revenue <span>| This Month</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>$3,264</h6>
                      <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card customers-card">

                

                <div class="card-body">
                  <h5 class="card-title">Customers <span>| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>1244</h6>
                      <span class="text-danger small pt-1 fw-bold">12%</span> 
                      <span class="text-muted small pt-2 ps-1">decrease</span>

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->

            <!-- reports -->
            <div class="col-12">
              <div class="card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Reports <span>/Today</span></h5>

                  <!-- Line Chart -->
                  <div id="reportsChart" style="min-height: 365px;" class="apexcharts-tooltip-active"><div id="apexchartsin1kn46s" class="apexcharts-canvas apexchartsin1kn46s apexcharts-theme-" style="width: 725px; height: 350px;"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" class="apexcharts-svg apexcharts-zoomable hovering-zoom" xmlns:data="ApexChartsNS" transform="translate(0, 0)" width="725" height="350"><foreignObject x="0" y="0" width="725" height="350"><div class="apexcharts-legend apexcharts-align-center apx-legend-position-bottom" xmlns="http://www.w3.org/1999/xhtml" style="right: 0px; position: absolute; left: 0px; top: 325px; max-height: 175px;"><div class="apexcharts-legend-series" rel="1" seriesname="Sales" data:collapsed="false" style="margin: 4px 5px;"><span class="apexcharts-legend-marker" rel="1" data:collapsed="false" style="height: 16px; width: 16px; left: 0px; top: 0px;"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"><path d="M 0, 0 
           m -7, 0 
           a 7,7 0 1,0 14,0 
           a 7,7 0 1,0 -14,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="1" stroke-dasharray="0" cx="0" cy="0" shape="circle" class="apexcharts-legend-marker apexcharts-marker apexcharts-marker-circle" style="transform: translate(50%, 50%);"></path></svg></span><span class="apexcharts-legend-text" rel="1" i="0" data:default-text="Sales" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Sales</span></div><div class="apexcharts-legend-series" rel="2" seriesname="Revenue" data:collapsed="false" style="margin: 4px 5px;"><span class="apexcharts-legend-marker" rel="2" data:collapsed="false" style="height: 16px; width: 16px; left: 0px; top: 0px;"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"><path d="M 0, 0 
           m -7, 0 
           a 7,7 0 1,0 14,0 
           a 7,7 0 1,0 -14,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="1" stroke-dasharray="0" cx="0" cy="0" shape="circle" class="apexcharts-legend-marker apexcharts-marker apexcharts-marker-circle" style="transform: translate(50%, 50%);"></path></svg></span><span class="apexcharts-legend-text" rel="2" i="1" data:default-text="Revenue" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Revenue</span></div><div class="apexcharts-legend-series" rel="3" seriesname="Customers" data:collapsed="false" style="margin: 4px 5px;"><span class="apexcharts-legend-marker" rel="3" data:collapsed="false" style="height: 16px; width: 16px; left: 0px; top: 0px;"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"><path d="M 0, 0 
           m -7, 0 
           a 7,7 0 1,0 14,0 
           a 7,7 0 1,0 -14,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="1" stroke-dasharray="0" cx="0" cy="0" shape="circle" class="apexcharts-legend-marker apexcharts-marker apexcharts-marker-circle" style="transform: translate(50%, 50%);"></path></svg></span><span class="apexcharts-legend-text" rel="3" i="2" data:default-text="Customers" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Customers</span></div></div><style type="text/css">
      .apexcharts-flip-y {
        transform: scaleY(-1) translateY(-100%);
        transform-origin: top;
        transform-box: fill-box;
      }
      .apexcharts-flip-x {
        transform: scaleX(-1);
        transform-origin: center;
        transform-box: fill-box;
      }
      .apexcharts-legend {
        display: flex;
        overflow: auto;
        padding: 0 10px;
      }
      .apexcharts-legend.apexcharts-legend-group-horizontal {
        flex-direction: column;
      }
      .apexcharts-legend-group {
        display: flex;
      }
      .apexcharts-legend-group-vertical {
        flex-direction: column-reverse;
      }
      .apexcharts-legend.apx-legend-position-bottom, .apexcharts-legend.apx-legend-position-top {
        flex-wrap: wrap
      }
      .apexcharts-legend.apx-legend-position-right, .apexcharts-legend.apx-legend-position-left {
        flex-direction: column;
        bottom: 0;
      }
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-left, .apexcharts-legend.apx-legend-position-top.apexcharts-align-left, .apexcharts-legend.apx-legend-position-right, .apexcharts-legend.apx-legend-position-left {
        justify-content: flex-start;
        align-items: flex-start;
      }
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-center, .apexcharts-legend.apx-legend-position-top.apexcharts-align-center {
        justify-content: center;
        align-items: center;
      }
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-right, .apexcharts-legend.apx-legend-position-top.apexcharts-align-right {
        justify-content: flex-end;
        align-items: flex-end;
      }
      .apexcharts-legend-series {
        cursor: pointer;
        line-height: normal;
        display: flex;
        align-items: center;
      }
      .apexcharts-legend-text {
        position: relative;
        font-size: 14px;
      }
      .apexcharts-legend-text *, .apexcharts-legend-marker * {
        pointer-events: none;
      }
      .apexcharts-legend-marker {
        position: relative;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        margin-right: 1px;
      }

      .apexcharts-legend-series.apexcharts-no-click {
        cursor: auto;
      }
      .apexcharts-legend .apexcharts-hidden-zero-series, .apexcharts-legend .apexcharts-hidden-null-series {
        display: none !important;
      }
      .apexcharts-inactive-legend {
        opacity: 0.45;
      }

    </style></foreignObject><rect width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)"></g><g class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)"></g><g class="apexcharts-yaxis" rel="0" transform="translate(15.635351181030273, 0)"><g class="apexcharts-yaxis-texts-g"><text x="20" y="33.666666666666664" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>100</tspan><title>100</title></text><text x="20" y="86.60266657511393" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>80</tspan><title>80</title></text><text x="20" y="139.5386664835612" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>60</tspan><title>60</title></text><text x="20" y="192.47466639200846" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>40</tspan><title>40</title></text><text x="20" y="245.41066630045572" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>20</tspan><title>20</title></text><text x="20" y="298.346666208903" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>0</tspan><title>0</title></text></g></g><g class="apexcharts-inner apexcharts-graphical" transform="translate(45.63535118103027, 30)"><defs><clipPath id="gridRectMaskin1kn46s"><rect width="675.3646488189697" height="270.6799995422363" x="-3" y="-3" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectBarMaskin1kn46s"><rect width="675.3646488189697" height="270.6799995422363" x="-3" y="-3" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectMarkerMaskin1kn46s"><rect width="689.3646488189697" height="284.6799995422363" x="-10" y="-10" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskin1kn46s"></clipPath><clipPath id="nonForecastMaskin1kn46s"></clipPath><linearGradient x1="0" y1="0" x2="0" y2="1" id="SvgjsLinearGradient1012"><stop stop-opacity="0.3" stop-color="rgba(65,84,241,0.3)" offset="0"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient><linearGradient x1="0" y1="0" x2="0" y2="1" id="SvgjsLinearGradient1013"><stop stop-opacity="0.3" stop-color="rgba(46,202,106,0.3)" offset="0"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient><linearGradient x1="0" y1="0" x2="0" y2="1" id="SvgjsLinearGradient1014"><stop stop-opacity="0.3" stop-color="rgba(255,119,29,0.3)" offset="0"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient></defs><line x1="609.9127914602171" y1="0" x2="609.9127914602171" y2="264.6799995422363" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs apexcharts-active" x="609.9127914602171" y="0" width="1" height="264.6799995422363" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><line x1="0" y1="264.6799995422363" x2="0" y2="270.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="110.98414390185765" y1="264.6799995422363" x2="110.98414390185765" y2="270.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="221.9682878037153" y1="264.6799995422363" x2="221.9682878037153" y2="270.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="332.95243170557296" y1="264.6799995422363" x2="332.95243170557296" y2="270.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="443.9365756074306" y1="264.6799995422363" x2="443.9365756074306" y2="270.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="554.9207195092882" y1="264.6799995422363" x2="554.9207195092882" y2="270.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><g class="apexcharts-grid"><g class="apexcharts-gridlines-horizontal"><line x1="0" y1="52.935999908447265" x2="669.3646488189697" y2="52.935999908447265" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line x1="0" y1="105.87199981689453" x2="669.3646488189697" y2="105.87199981689453" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line x1="0" y1="158.8079997253418" x2="669.3646488189697" y2="158.8079997253418" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line x1="0" y1="211.74399963378906" x2="669.3646488189697" y2="211.74399963378906" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g class="apexcharts-gridlines-vertical"></g><line x1="0" y1="264.6799995422363" x2="669.3646488189697" y2="264.6799995422363" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line x1="0" y1="1" x2="0" y2="264.6799995422363" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g class="apexcharts-grid-borders"><line x1="0" y1="0" x2="669.3646488189697" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line x1="0" y1="264.6799995422363" x2="669.3646488189697" y2="264.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line x1="0" y1="264.6799995422363" x2="669.3646488189697" y2="264.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt"></line></g><g class="apexcharts-area-series apexcharts-plot-series"><g class="apexcharts-series" zIndex="0" seriesName="Sales" data:longestSeries="true" rel="1" data:realIndex="0"><path d="M0 182.62919968414306C58.26667554847526 182.62919968414306 108.20954030431122 158.8079997253418 166.47621585278648 158.8079997253418C205.32066621843666 158.8079997253418 238.615909388994 190.56959967041016 277.4603597546442 190.56959967041016C316.30481012029435 190.56959967041016 349.60005329085163 129.6931997756958 388.4445036565018 129.6931997756958C427.288954022152 129.6931997756958 460.58419719270927 153.51439973449706 499.42864755835944 153.51439973449706C538.2730979240097 153.51439973449706 571.5683410945669 47.642399917602546 610.4127914602171 47.642399917602546C649.2572418258674 47.642399917602546 682.5524849964246 116.459199798584 721.3969353620748 116.459199798584C721.3969353620748 116.459199798584 721.3969353620748 116.459199798584 721.3969353620748 264.6799995422363L0 264.6799995422363L0 182.62919968414306C0 182.62919968414306 0 182.62919968414306 0 182.62919968414306 " fill="url(#SvgjsLinearGradient1012)" fill-opacity="1" stroke="none" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskin1kn46s)" pathTo="M 0 182.62919968414306C 58.26667554847526 182.62919968414306 108.20954030431122 158.8079997253418 166.47621585278648 158.8079997253418C 205.32066621843666 158.8079997253418 238.615909388994 190.56959967041016 277.4603597546442 190.56959967041016C 316.30481012029435 190.56959967041016 349.60005329085163 129.6931997756958 388.4445036565018 129.6931997756958C 427.288954022152 129.6931997756958 460.58419719270927 153.51439973449706 499.42864755835944 153.51439973449706C 538.2730979240097 153.51439973449706 571.5683410945669 47.642399917602546 610.4127914602171 47.642399917602546C 649.2572418258674 47.642399917602546 682.5524849964246 116.459199798584 721.3969353620748 116.459199798584C 721.3969353620748 116.459199798584 721.3969353620748 116.459199798584 721.3969353620748 264.6799995422363 L 0 264.6799995422363z" pathFrom="M -274.0469517220612 182.62919968414306C -148.22510349888879 182.62919968414306 -40.37780502188386 158.8079997253418 85.44404320128854 158.8079997253418C 169.32527535007011 158.8079997253418 241.2234743347401 190.56959967041016 325.1047064835217 190.56959967041016C 408.98593863230326 190.56959967041016 480.88413761697325 129.6931997756958 564.7653697657548 129.6931997756958C 648.6466019145364 129.6931997756958 720.5448008992064 153.51439973449706 804.426033047988 153.51439973449706C 888.3072651967695 153.51439973449706 960.2054641814395 47.642399917602546 1044.0866963302212 47.642399917602546C 1127.967928479003 47.642399917602546 1199.8661274636727 116.459199798584 1283.7473596124544 116.459199798584C 1283.7473596124544 116.459199798584 1283.7473596124544 116.459199798584 1283.7473596124544 264.6799995422363 L -274.0469517220612 264.6799995422363zz"></path><path d="M0 182.62919968414306C58.26667554847526 182.62919968414306 108.20954030431122 158.8079997253418 166.47621585278648 158.8079997253418C205.32066621843666 158.8079997253418 238.615909388994 190.56959967041016 277.4603597546442 190.56959967041016C316.30481012029435 190.56959967041016 349.60005329085163 129.6931997756958 388.4445036565018 129.6931997756958C427.288954022152 129.6931997756958 460.58419719270927 153.51439973449706 499.42864755835944 153.51439973449706C538.2730979240097 153.51439973449706 571.5683410945669 47.642399917602546 610.4127914602171 47.642399917602546C649.2572418258674 47.642399917602546 682.5524849964246 116.459199798584 721.3969353620748 116.459199798584 " fill="none" fill-opacity="1" stroke="#4154f1" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskin1kn46s)" pathTo="M 0 182.62919968414306C 58.26667554847526 182.62919968414306 108.20954030431122 158.8079997253418 166.47621585278648 158.8079997253418C 205.32066621843666 158.8079997253418 238.615909388994 190.56959967041016 277.4603597546442 190.56959967041016C 316.30481012029435 190.56959967041016 349.60005329085163 129.6931997756958 388.4445036565018 129.6931997756958C 427.288954022152 129.6931997756958 460.58419719270927 153.51439973449706 499.42864755835944 153.51439973449706C 538.2730979240097 153.51439973449706 571.5683410945669 47.642399917602546 610.4127914602171 47.642399917602546C 649.2572418258674 47.642399917602546 682.5524849964246 116.459199798584 721.3969353620748 116.459199798584" pathFrom="M -274.0469517220612 182.62919968414306C -148.22510349888879 182.62919968414306 -40.37780502188386 158.8079997253418 85.44404320128854 158.8079997253418C 169.32527535007011 158.8079997253418 241.2234743347401 190.56959967041016 325.1047064835217 190.56959967041016C 408.98593863230326 190.56959967041016 480.88413761697325 129.6931997756958 564.7653697657548 129.6931997756958C 648.6466019145364 129.6931997756958 720.5448008992064 153.51439973449706 804.426033047988 153.51439973449706C 888.3072651967695 153.51439973449706 960.2054641814395 47.642399917602546 1044.0866963302212 47.642399917602546C 1127.967928479003 47.642399917602546 1199.8661274636727 116.459199798584 1283.7473596124544 116.459199798584" fill-rule="evenodd"></path><g class="apexcharts-series-markers-wrap apexcharts-hidden-element-shown" data:realIndex="0"><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 0, 182.62919968414306 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="0" cy="182.62919968414306" shape="circle" class="apexcharts-marker no-pointer-events wv63rbpbpg" rel="0" j="0" index="0" default-marker-size="4"></path><path d="M 166.47621585278648, 158.8079997253418 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="166.47621585278648" cy="158.8079997253418" shape="circle" class="apexcharts-marker no-pointer-events w1myvssq4" rel="1" j="1" index="0" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 277.4603597546442, 190.56959967041016 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="277.4603597546442" cy="190.56959967041016" shape="circle" class="apexcharts-marker no-pointer-events worfcnhiu" rel="2" j="2" index="0" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 388.4445036565018, 129.6931997756958 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="388.4445036565018" cy="129.6931997756958" shape="circle" class="apexcharts-marker no-pointer-events wu1g3ob1rl" rel="3" j="3" index="0" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 499.42864755835944, 153.51439973449706 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="499.42864755835944" cy="153.51439973449706" shape="circle" class="apexcharts-marker no-pointer-events wq95q7r5v" rel="4" j="4" index="0" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 610.4127914602171, 47.642399917602546 
           m -10, 0 
           a 10,10 0 1,0 20,0 
           a 10,10 0 1,0 -20,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="610.4127914602171" cy="47.642399917602546" shape="circle" class="apexcharts-marker no-pointer-events wsfm18dnp" rel="5" j="5" index="0" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 721.3969353620748, 116.459199798584 
           m -0, 0 
           a 0,0 0 1,0 0,0 
           a 0,0 0 1,0 -0,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="721.3969353620748" cy="116.459199798584" shape="circle" class="apexcharts-marker no-pointer-events wfkrgcq01" rel="6" j="6" index="0" default-marker-size="0"></path></g></g></g><g class="apexcharts-series" zIndex="1" seriesName="Revenue" data:longestSeries="true" rel="2" data:realIndex="1"><path d="M0 235.56519959259032C58.26667554847526 235.56519959259032 108.20954030431122 179.9823996887207 166.47621585278648 179.9823996887207C205.32066621843666 179.9823996887207 238.615909388994 145.57399974823 277.4603597546442 145.57399974823C316.30481012029435 145.57399974823 349.60005329085163 179.9823996887207 388.4445036565018 179.9823996887207C427.288954022152 179.9823996887207 460.58419719270927 174.68879969787596 499.42864755835944 174.68879969787596C538.2730979240097 174.68879969787596 571.5683410945669 127.04639978027345 610.4127914602171 127.04639978027345C649.2572418258674 127.04639978027345 682.5524849964246 156.16119972991942 721.3969353620748 156.16119972991942C721.3969353620748 156.16119972991942 721.3969353620748 156.16119972991942 721.3969353620748 264.6799995422363L0 264.6799995422363L0 235.56519959259032C0 235.56519959259032 0 235.56519959259032 0 235.56519959259032 " fill="url(#SvgjsLinearGradient1013)" fill-opacity="1" stroke="none" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="1" clip-path="url(#gridRectMaskin1kn46s)" pathTo="M 0 235.56519959259032C 58.26667554847526 235.56519959259032 108.20954030431122 179.9823996887207 166.47621585278648 179.9823996887207C 205.32066621843666 179.9823996887207 238.615909388994 145.57399974823 277.4603597546442 145.57399974823C 316.30481012029435 145.57399974823 349.60005329085163 179.9823996887207 388.4445036565018 179.9823996887207C 427.288954022152 179.9823996887207 460.58419719270927 174.68879969787596 499.42864755835944 174.68879969787596C 538.2730979240097 174.68879969787596 571.5683410945669 127.04639978027345 610.4127914602171 127.04639978027345C 649.2572418258674 127.04639978027345 682.5524849964246 156.16119972991942 721.3969353620748 156.16119972991942C 721.3969353620748 156.16119972991942 721.3969353620748 156.16119972991942 721.3969353620748 264.6799995422363 L 0 264.6799995422363z" pathFrom="M -274.0469517220612 235.56519959259032C -148.22510349888879 235.56519959259032 -40.37780502188386 179.9823996887207 85.44404320128854 179.9823996887207C 169.32527535007011 179.9823996887207 241.2234743347401 145.57399974823 325.1047064835217 145.57399974823C 408.98593863230326 145.57399974823 480.88413761697325 179.9823996887207 564.7653697657548 179.9823996887207C 648.6466019145364 179.9823996887207 720.5448008992064 174.68879969787596 804.426033047988 174.68879969787596C 888.3072651967695 174.68879969787596 960.2054641814395 127.04639978027345 1044.0866963302212 127.04639978027345C 1127.967928479003 127.04639978027345 1199.8661274636727 156.16119972991942 1283.7473596124544 156.16119972991942C 1283.7473596124544 156.16119972991942 1283.7473596124544 156.16119972991942 1283.7473596124544 264.6799995422363 L -274.0469517220612 264.6799995422363zz"></path><path d="M0 235.56519959259032C58.26667554847526 235.56519959259032 108.20954030431122 179.9823996887207 166.47621585278648 179.9823996887207C205.32066621843666 179.9823996887207 238.615909388994 145.57399974823 277.4603597546442 145.57399974823C316.30481012029435 145.57399974823 349.60005329085163 179.9823996887207 388.4445036565018 179.9823996887207C427.288954022152 179.9823996887207 460.58419719270927 174.68879969787596 499.42864755835944 174.68879969787596C538.2730979240097 174.68879969787596 571.5683410945669 127.04639978027345 610.4127914602171 127.04639978027345C649.2572418258674 127.04639978027345 682.5524849964246 156.16119972991942 721.3969353620748 156.16119972991942 " fill="none" fill-opacity="1" stroke="#2eca6a" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="1" clip-path="url(#gridRectMaskin1kn46s)" pathTo="M 0 235.56519959259032C 58.26667554847526 235.56519959259032 108.20954030431122 179.9823996887207 166.47621585278648 179.9823996887207C 205.32066621843666 179.9823996887207 238.615909388994 145.57399974823 277.4603597546442 145.57399974823C 316.30481012029435 145.57399974823 349.60005329085163 179.9823996887207 388.4445036565018 179.9823996887207C 427.288954022152 179.9823996887207 460.58419719270927 174.68879969787596 499.42864755835944 174.68879969787596C 538.2730979240097 174.68879969787596 571.5683410945669 127.04639978027345 610.4127914602171 127.04639978027345C 649.2572418258674 127.04639978027345 682.5524849964246 156.16119972991942 721.3969353620748 156.16119972991942" pathFrom="M -274.0469517220612 235.56519959259032C -148.22510349888879 235.56519959259032 -40.37780502188386 179.9823996887207 85.44404320128854 179.9823996887207C 169.32527535007011 179.9823996887207 241.2234743347401 145.57399974823 325.1047064835217 145.57399974823C 408.98593863230326 145.57399974823 480.88413761697325 179.9823996887207 564.7653697657548 179.9823996887207C 648.6466019145364 179.9823996887207 720.5448008992064 174.68879969787596 804.426033047988 174.68879969787596C 888.3072651967695 174.68879969787596 960.2054641814395 127.04639978027345 1044.0866963302212 127.04639978027345C 1127.967928479003 127.04639978027345 1199.8661274636727 156.16119972991942 1283.7473596124544 156.16119972991942" fill-rule="evenodd"></path><g class="apexcharts-series-markers-wrap apexcharts-hidden-element-shown" data:realIndex="1"><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 0, 235.56519959259032 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="0" cy="235.56519959259032" shape="circle" class="apexcharts-marker no-pointer-events w3a3ejlf3" rel="0" j="0" index="1" default-marker-size="4"></path><path d="M 166.47621585278648, 179.9823996887207 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="166.47621585278648" cy="179.9823996887207" shape="circle" class="apexcharts-marker no-pointer-events wkfa25rxf" rel="1" j="1" index="1" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 277.4603597546442, 145.57399974823 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="277.4603597546442" cy="145.57399974823" shape="circle" class="apexcharts-marker no-pointer-events wptlmilk6" rel="2" j="2" index="1" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 388.4445036565018, 179.9823996887207 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="388.4445036565018" cy="179.9823996887207" shape="circle" class="apexcharts-marker no-pointer-events wtez89it6" rel="3" j="3" index="1" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 499.42864755835944, 174.68879969787596 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="499.42864755835944" cy="174.68879969787596" shape="circle" class="apexcharts-marker no-pointer-events wgtoxgo4n" rel="4" j="4" index="1" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 610.4127914602171, 127.04639978027345 
           m -10, 0 
           a 10,10 0 1,0 20,0 
           a 10,10 0 1,0 -20,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="610.4127914602171" cy="127.04639978027345" shape="circle" class="apexcharts-marker no-pointer-events wctvllb13h" rel="5" j="5" index="1" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 721.3969353620748, 156.16119972991942 
           m -0, 0 
           a 0,0 0 1,0 0,0 
           a 0,0 0 1,0 -0,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="721.3969353620748" cy="156.16119972991942" shape="circle" class="apexcharts-marker no-pointer-events ww3asq8rdg" rel="6" j="6" index="1" default-marker-size="0"></path></g></g></g><g class="apexcharts-series" zIndex="2" seriesName="Customers" data:longestSeries="true" rel="3" data:realIndex="2"><path d="M0 224.97799961090087C58.26667554847526 224.97799961090087 108.20954030431122 235.56519959259032 166.47621585278648 235.56519959259032C205.32066621843666 235.56519959259032 238.615909388994 179.9823996887207 277.4603597546442 179.9823996887207C316.30481012029435 179.9823996887207 349.60005329085163 217.03759962463377 388.4445036565018 217.03759962463377C427.288954022152 217.03759962463377 460.58419719270927 240.85879958343506 499.42864755835944 240.85879958343506C538.2730979240097 240.85879958343506 571.5683410945669 201.1567996520996 610.4127914602171 201.1567996520996C649.2572418258674 201.1567996520996 682.5524849964246 235.56519959259032 721.3969353620748 235.56519959259032C721.3969353620748 235.56519959259032 721.3969353620748 235.56519959259032 721.3969353620748 264.6799995422363L0 264.6799995422363L0 224.97799961090087C0 224.97799961090087 0 224.97799961090087 0 224.97799961090087 " fill="url(#SvgjsLinearGradient1014)" fill-opacity="1" stroke="none" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="2" clip-path="url(#gridRectMaskin1kn46s)" pathTo="M 0 224.97799961090087C 58.26667554847526 224.97799961090087 108.20954030431122 235.56519959259032 166.47621585278648 235.56519959259032C 205.32066621843666 235.56519959259032 238.615909388994 179.9823996887207 277.4603597546442 179.9823996887207C 316.30481012029435 179.9823996887207 349.60005329085163 217.03759962463377 388.4445036565018 217.03759962463377C 427.288954022152 217.03759962463377 460.58419719270927 240.85879958343506 499.42864755835944 240.85879958343506C 538.2730979240097 240.85879958343506 571.5683410945669 201.1567996520996 610.4127914602171 201.1567996520996C 649.2572418258674 201.1567996520996 682.5524849964246 235.56519959259032 721.3969353620748 235.56519959259032C 721.3969353620748 235.56519959259032 721.3969353620748 235.56519959259032 721.3969353620748 264.6799995422363 L 0 264.6799995422363z" pathFrom="M -274.0469517220612 224.97799961090087C -148.22510349888879 224.97799961090087 -40.37780502188386 235.56519959259032 85.44404320128854 235.56519959259032C 169.32527535007011 235.56519959259032 241.2234743347401 179.9823996887207 325.1047064835217 179.9823996887207C 408.98593863230326 179.9823996887207 480.88413761697325 217.03759962463377 564.7653697657548 217.03759962463377C 648.6466019145364 217.03759962463377 720.5448008992064 240.85879958343506 804.426033047988 240.85879958343506C 888.3072651967695 240.85879958343506 960.2054641814395 201.1567996520996 1044.0866963302212 201.1567996520996C 1127.967928479003 201.1567996520996 1199.8661274636727 235.56519959259032 1283.7473596124544 235.56519959259032C 1283.7473596124544 235.56519959259032 1283.7473596124544 235.56519959259032 1283.7473596124544 264.6799995422363 L -274.0469517220612 264.6799995422363zz"></path><path d="M0 224.97799961090087C58.26667554847526 224.97799961090087 108.20954030431122 235.56519959259032 166.47621585278648 235.56519959259032C205.32066621843666 235.56519959259032 238.615909388994 179.9823996887207 277.4603597546442 179.9823996887207C316.30481012029435 179.9823996887207 349.60005329085163 217.03759962463377 388.4445036565018 217.03759962463377C427.288954022152 217.03759962463377 460.58419719270927 240.85879958343506 499.42864755835944 240.85879958343506C538.2730979240097 240.85879958343506 571.5683410945669 201.1567996520996 610.4127914602171 201.1567996520996C649.2572418258674 201.1567996520996 682.5524849964246 235.56519959259032 721.3969353620748 235.56519959259032 " fill="none" fill-opacity="1" stroke="#ff771d" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="2" clip-path="url(#gridRectMaskin1kn46s)" pathTo="M 0 224.97799961090087C 58.26667554847526 224.97799961090087 108.20954030431122 235.56519959259032 166.47621585278648 235.56519959259032C 205.32066621843666 235.56519959259032 238.615909388994 179.9823996887207 277.4603597546442 179.9823996887207C 316.30481012029435 179.9823996887207 349.60005329085163 217.03759962463377 388.4445036565018 217.03759962463377C 427.288954022152 217.03759962463377 460.58419719270927 240.85879958343506 499.42864755835944 240.85879958343506C 538.2730979240097 240.85879958343506 571.5683410945669 201.1567996520996 610.4127914602171 201.1567996520996C 649.2572418258674 201.1567996520996 682.5524849964246 235.56519959259032 721.3969353620748 235.56519959259032" pathFrom="M -274.0469517220612 224.97799961090087C -148.22510349888879 224.97799961090087 -40.37780502188386 235.56519959259032 85.44404320128854 235.56519959259032C 169.32527535007011 235.56519959259032 241.2234743347401 179.9823996887207 325.1047064835217 179.9823996887207C 408.98593863230326 179.9823996887207 480.88413761697325 217.03759962463377 564.7653697657548 217.03759962463377C 648.6466019145364 217.03759962463377 720.5448008992064 240.85879958343506 804.426033047988 240.85879958343506C 888.3072651967695 240.85879958343506 960.2054641814395 201.1567996520996 1044.0866963302212 201.1567996520996C 1127.967928479003 201.1567996520996 1199.8661274636727 235.56519959259032 1283.7473596124544 235.56519959259032" fill-rule="evenodd"></path><g class="apexcharts-series-markers-wrap apexcharts-hidden-element-shown" data:realIndex="2"><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 0, 224.97799961090087 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="0" cy="224.97799961090087" shape="circle" class="apexcharts-marker no-pointer-events wz606md5c" rel="0" j="0" index="2" default-marker-size="4"></path><path d="M 166.47621585278648, 235.56519959259032 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="166.47621585278648" cy="235.56519959259032" shape="circle" class="apexcharts-marker no-pointer-events w0it9bz8g" rel="1" j="1" index="2" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 277.4603597546442, 179.9823996887207 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="277.4603597546442" cy="179.9823996887207" shape="circle" class="apexcharts-marker no-pointer-events wawnd2rpn" rel="2" j="2" index="2" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 388.4445036565018, 217.03759962463377 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="388.4445036565018" cy="217.03759962463377" shape="circle" class="apexcharts-marker no-pointer-events wn6ywyl7" rel="3" j="3" index="2" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 499.42864755835944, 240.85879958343506 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="499.42864755835944" cy="240.85879958343506" shape="circle" class="apexcharts-marker no-pointer-events w7xr77x8v" rel="4" j="4" index="2" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 610.4127914602171, 201.1567996520996 
           m -10, 0 
           a 10,10 0 1,0 20,0 
           a 10,10 0 1,0 -20,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="610.4127914602171" cy="201.1567996520996" shape="circle" class="apexcharts-marker no-pointer-events wdhsyupqp" rel="5" j="5" index="2" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskin1kn46s)"><path d="M 721.3969353620748, 235.56519959259032 
           m -0, 0 
           a 0,0 0 1,0 0,0 
           a 0,0 0 1,0 -0,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="721.3969353620748" cy="235.56519959259032" shape="circle" class="apexcharts-marker no-pointer-events ws6hqm0g8" rel="6" j="6" index="2" default-marker-size="0"></path></g></g></g><g class="apexcharts-datalabels" data:realIndex="0"></g><g class="apexcharts-datalabels" data:realIndex="1"></g><g class="apexcharts-datalabels" data:realIndex="2"></g></g><line x1="0" y1="0" x2="669.3646488189697" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line x1="0" y1="0" x2="669.3646488189697" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g class="apexcharts-xaxis" transform="translate(0, 0)"><g class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text x="0" y="292.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>00:00</tspan><title>00:00</title></text><text x="110.98414390185765" y="292.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>01:00</tspan><title>01:00</title></text><text x="221.9682878037153" y="292.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>02:00</tspan><title>02:00</title></text><text x="332.95243170557296" y="292.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>03:00</tspan><title>03:00</title></text><text x="443.9365756074306" y="292.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>04:00</tspan><title>04:00</title></text><text x="554.9207195092882" y="292.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>05:00</tspan><title>05:00</title></text><text x="665.9048634111459" y="292.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan></tspan><title></title></text></g></g><g class="apexcharts-yaxis-annotations apexcharts-hidden-element-shown"></g><g class="apexcharts-xaxis-annotations apexcharts-hidden-element-shown"></g><g class="apexcharts-point-annotations apexcharts-hidden-element-shown"></g></g><rect width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-zoom-rect"></rect><rect width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-selection-rect"></rect></svg><div class="apexcharts-tooltip apexcharts-theme-light apexcharts-active" style="left: 526.411px; top: 159.28px;"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">19/09/18 05:30</div><div class="apexcharts-tooltip-series-group apexcharts-tooltip-series-group-0 apexcharts-active" style="order: 1; display: flex;"><span class="apexcharts-tooltip-marker" shape="circle" style="color: rgb(65, 84, 241);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">Sales: </span><span class="apexcharts-tooltip-text-y-value">82</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group apexcharts-tooltip-series-group-1 apexcharts-active" style="order: 2; display: flex;"><span class="apexcharts-tooltip-marker" shape="circle" style="color: rgb(46, 202, 106);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">Revenue: </span><span class="apexcharts-tooltip-text-y-value">52</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group apexcharts-tooltip-series-group-2 apexcharts-active" style="order: 3; display: flex;"><span class="apexcharts-tooltip-marker" shape="circle" style="color: rgb(255, 119, 29);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">Customers: </span><span class="apexcharts-tooltip-text-y-value">24</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light apexcharts-active" style="left: 604.711px; top: 296.68px;"><div class="apexcharts-xaxistooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px; min-width: 73.6837px;">19/09/18 05:30</div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>

                  <script>
                    document.addEventListener("DOMContentLoaded", () => {
                      new ApexCharts(document.querySelector("#reportsChart"), {
                        series: [{
                          name: 'Sales',
                          data: [31, 40, 28, 51, 42, 82, 56],
                        }, {
                          name: 'Revenue',
                          data: [11, 32, 45, 32, 34, 52, 41]
                        }, {
                          name: 'Customers',
                          data: [15, 11, 32, 18, 9, 24, 11]
                        }],
                        chart: {
                          height: 350,
                          type: 'area',
                          toolbar: {
                            show: false
                          },
                        },
                        markers: {
                          size: 4
                        },
                        colors: ['#4154f1', '#2eca6a', '#ff771d'],
                        fill: {
                          type: "gradient",
                          gradient: {
                            shadeIntensity: 1,
                            opacityFrom: 0.3,
                            opacityTo: 0.4,
                            stops: [0, 90, 100]
                          }
                        },
                        dataLabels: {
                          enabled: false
                        },
                        stroke: {
                          curve: 'smooth',
                          width: 2
                        },
                        xaxis: {
                          type: 'datetime',
                          categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
                        },
                        tooltip: {
                          x: {
                            format: 'dd/MM/yy HH:mm'
                          },
                        }
                      }).render();
                    });
                  </script>
                  <!-- End Line Chart -->

                </div>

              </div>
            </div>
            <!-- End of reports -->

            <!-- Recent Sales -->
            <!-- End Recent Sales -->

            <!-- Top Selling -->
            <!-- End Top Selling -->

          </div>
        </div><!-- End Left side columns -->

        <!-- Right side columns -->
        <!-- End Right side columns -->

      </div>
    </section>

  </main>
  
  <!-- main over here -->
  
  <jsp:include page="AdminFooter.jsp"></jsp:include>
  
  
  <jsp:include page="Adminjs.jsp"></jsp:include>
  <script src="asseste/js/main.js"> </script>
</body>
</html>