<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="title d-flex justify-content-between px-4 py-2 bg-white">
    <h3 class="text-secondary mb-0">Dashboard</h3>
    <a name="" id="" class="btn btn-primary d-flex align-items-center" href="#" role="button">
        <ion-icon name="download-outline" class="text-gray-300 fs-4 me-2"></ion-icon>
        <span>Generate Report</span>
    </a>
</div>
<div class="container-xl px-4 mt-4">
    <div class="statistical-wrapper">
        <div class="row">
            <div class="col-lg-3 pb-4 pb-4">
                <div class="card border-0 border-start border-primary border-4">
                    <div class="row">
                        <div class="col-lg-9 py-1">
                            <div class="card-body py-4 pe-0">
                                <h6 class="card-title fw-bold text-primary text-uppercase">EARNINGS
                                    (MONTHLY)</h6>
                                <p class="card-text fs-5">Text</p>
                            </div>
                        </div>
                        <div class="col-lg-3 d-flex align-items-center">
                            <ion-icon name="calendar-clear" class="fs-1 text-gray-300"></ion-icon>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 pb-4 pb-4">
                <div class="card border-0 border-start border-success border-4">
                    <div class="row">
                        <div class="col-lg-9 py-1">
                            <div class="card-body py-4 pe-0">
                                <h6 class="card-title fw-bold text-success text-uppercase">EARNINGS
                                    (ANNUAL)</h6>
                                <p class="card-text fs-5">Text</p>
                            </div>
                        </div>
                        <div class="col-lg-3 d-flex align-items-center">
                            <span class="fs-1 text-gray-300">$</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 pb-4 pb-4">
                <div class="card border-0 border-start border-info border-4">
                    <div class="row">
                        <div class="col-lg-9 py-1">
                            <div class="card-body py-4 pe-0">
                                <h6 class="card-title fw-bold text-info text-uppercase">TASKS</h6>
                                <div class="progress-wrapper">
                                    <div class="row d-flex align-items-center">
                                        <div class="col-auto">
                                            <p class="card-text fs-5">50%</p>
                                        </div>
                                        <div class="col">
                                            <div class="progress my-auto" style="height: 8px;">
                                                <div class="progress-bar bg-info" role="progressbar"
                                                     style="width: 50%" aria-valuenow="25"
                                                     aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 d-flex align-items-center">
                            <ion-icon name="clipboard" class="fs-1 text-gray-300"></ion-icon>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 pb-4 pb-4">
                <div class="card border-0 border-start border-warning border-4">
                    <div class="row">
                        <div class="col-lg-9 py-1">
                            <div class="card-body py-4 pe-0">
                                <h6 class="card-title fw-bold text-warning text-uppercase">PENDING
                                    REQUEST</h6>
                                <p class="card-text fs-5">Text</p>
                            </div>
                        </div>
                        <div class="col-lg-3 d-flex align-items-center">
                            <ion-icon name="chatbubbles-sharp" class="fs-1 text-gray-300"></ion-icon>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="chart-wrapper">
        <div class="row d-flex justify-content-center">
            <div class="col-lg-12 pb-4 h-100">
                <div class="card">
                    <div class="card-header px-0 pb-0 border-bottom-0 d-flex justify-content-between align-items-center">
                        <ul class="nav nav-tabs px-4 w-100" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="overview-tab" data-bs-toggle="tab"
                                        data-bs-target="#overview" type="button" role="tab"
                                        aria-controls="overview" aria-selected="true">Overview
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="activities-tab" data-bs-toggle="tab"
                                        data-bs-target="#activities" type="button" role="tab"
                                        aria-controls="activities" aria-selected="false">Activities
                                </button>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="overview" role="tabpanel"
                             aria-labelledby="home-tab">

                            <div class="card-body border-top-0" style="height:400px;">
                                <canvas id="earningsOverview" width="100%"></canvas>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="activities" role="tabpanel"
                             aria-labelledby="profile-tab">
                            <div class="dataTable-wrapper px-3 py-4">
                                <div class="dataTable-header pb-3 d-flex justify-content-between">
                                    <div class="dataTable-dropdown d-flex align-items-center">
                                        <select class="form-select" name="entries-per-page"
                                                id="entries-per-page" style="width:70px;">
                                            <option value="5">5</option>
                                            <option value="10" selected>10</option>
                                            <option value="15">15</option>
                                            <option value="20">20</option>
                                            <option value="25">25</option>
                                        </select>
                                        <label for="entries-per-page" class="px-2">entries per
                                            page</label>
                                    </div>
                                    <div class="dataTable-search" method="get">
                                        <form action="" method="get">
                                            <input type="text" name="searchDataTable"
                                                   id="searchDataTable" class="form-control"
                                                   placeholder="search">
                                            <button type="submit" style="display:none"></button>
                                        </form>
                                    </div>
                                </div>
                                <div class="dataTable-body pb-3">
                                    <table class="table ">
                                        <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Event</th>
                                            <th>Time</th>
                                        </tr>
                                        </thead>
                                        <tbody class="text-black-50">
                                        <tr>
                                            <td scope="row" class="w-25">01/13/20</td>
                                            <td>
                                                <ion-icon name="flash-outline"></ion-icon>
                                                Server
                                                online
                                            </td>
                                            <td>1:21 AM</td>
                                        </tr>
                                        <tr>
                                            <td scope="row" class="w-25">01/13/20</td>
                                            <td>
                                                <ion-icon name="flash-outline"></ion-icon>
                                                Server
                                                online
                                            </td>
                                            <td>1:21 AM</td>
                                        </tr>
                                        <tr>
                                            <td scope="row" class="w-25">01/13/20</td>
                                            <td>
                                                <ion-icon name="flash-outline"></ion-icon>
                                                Server
                                                online
                                            </td>
                                            <td>1:21 AM</td>
                                        </tr>
                                        <tr>
                                            <td scope="row">01/13/20</td>
                                            <td>
                                                <ion-icon name="flash-outline"></ion-icon>
                                                Server
                                                online
                                            </td>
                                            <td>1:21 AM</td>
                                        </tr>
                                        <tr>
                                            <td scope="row" class="w-25">01/13/20</td>
                                            <td>
                                                <ion-icon name="flash-outline"></ion-icon>
                                                Server
                                                online
                                            </td>
                                            <td>1:21 AM</td>
                                        </tr>
                                        <tr>
                                            <td scope="row" class="w-25">01/13/20</td>
                                            <td>
                                                <ion-icon name="flash-outline"></ion-icon>
                                                Server
                                                online
                                            </td>
                                            <td>1:21 AM</td>
                                        </tr>
                                        <tr>
                                            <td scope="row" class="w-25">01/13/20</td>
                                            <td>
                                                <ion-icon name="flash-outline"></ion-icon>
                                                Server
                                                online
                                            </td>
                                            <td>1:21 AM</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div
                                        class="dataTable-foot d-flex justify-content-between align-items-center">
                                    <div class="data-info text-secondary">
                                        Showing 1 to <span id="maxListShowing">5</span> of <span
                                            id="totalDataTable">14</span> entries
                                    </div>
                                    <div class="data-pagination">
                                        <div class="btn-group" role="group" aria-label="">
                                            <button type="button"
                                                    class="btn border text-primary d-flex align-items-center">
                                                <ion-icon name="chevron-back-outline"
                                                          class="out-side fs-4">
                                                </ion-icon>
                                            </button>
                                            <button type="button"
                                                    class="btn border text-primary">1
                                            </button>
                                            <button type="button"
                                                    class="btn border text-primary d-flex align-items-center">
                                                <ion-icon name="chevron-forward-outline"
                                                          class="out-side fs-4"></ion-icon>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row px-0">
                <div class="col-lg-6 pb-4 h-100">
                    <div class="card">
                        <div class="card-header d-flex justify-content-between align-items-center">
                            <span class="text-primary">Recent Activity</span>
                            <div class="btn-group">
                                <a class="btn p-0 text-secondary" type="button" id="eclipseChartLine"
                                   data-bs-toggle="dropdown" aria-haspopup="true"
                                   aria-expanded="false">
                                    <ion-icon name="ellipsis-vertical-sharp"></ion-icon>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end"
                                     aria-labelledby="eclipseChartLine">
                                    <button class="dropdown-item" href="#">Action</button>
                                    <button class="dropdown-item disabled" href="#">Disabled
                                        action
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="card-body d-flex align-items-center overflow-auto">
                            <div class="timeline timeline-xs">
                                <!-- Timeline Item 1-->
                                <div class="timeline-item d-flex w-100">
                                    <div class="timeline-item-marker">
                                        <div class="timeline-item-marker-text text-gray-500 me-3">27 min
                                        </div>
                                        <div
                                                class="timeline-item-marker-indicator rounded-circle bg-primary">
                                        </div>
                                    </div>
                                    <div
                                            class="timeline-item-content text-black-50 border-start border-5">
                                        New order placed!
                                        <a class="fw-bold text-decoration-none text-dark"
                                           href="#!">Order
                                            #2912</a>
                                        has been successfully placed.
                                    </div>
                                </div>
                                <!-- Timeline Item 1-->
                                <div class="timeline-item d-flex w-100">
                                    <div class="timeline-item-marker">
                                        <div class="timeline-item-marker-text text-gray-500 me-3">27 min
                                        </div>
                                        <div
                                                class="timeline-item-marker-indicator rounded-circle bg-primary">
                                        </div>
                                    </div>
                                    <div
                                            class="timeline-item-content text-black-50 border-start border-5">
                                        New order placed!
                                        <a class="fw-bold text-decoration-none text-dark"
                                           href="#!">Order
                                            #2912</a>
                                        has been successfully.
                                    </div>
                                </div>

                                <div class="timeline-item d-flex w-100">
                                    <div class="timeline-item-marker">
                                        <div class="timeline-item-marker-text text-gray-500 me-3">27 min
                                        </div>
                                        <div
                                                class="timeline-item-marker-indicator rounded-circle bg-primary">
                                        </div>
                                    </div>
                                    <div
                                            class="timeline-item-content text-black-50 border-start border-5">
                                        New order placed!
                                        <a class="fw-bold text-decoration-none text-dark"
                                           href="#!">Order
                                            #2912</a>
                                        has been successfully.
                                    </div>
                                </div>

                                <div class="timeline-item d-flex w-100">
                                    <div class="timeline-item-marker">
                                        <div class="timeline-item-marker-text text-gray-500 me-3">27 min
                                        </div>
                                        <div
                                                class="timeline-item-marker-indicator rounded-circle bg-primary">
                                        </div>
                                    </div>
                                    <div
                                            class="timeline-item-content text-black-50 border-start border-5">
                                        New order placed!
                                        <a class="fw-bold text-decoration-none text-dark"
                                           href="#!">Order
                                            #2912</a>
                                        has been successfully.
                                    </div>
                                </div>
                                <!-- Timeline Item 1-->
                                <div class="timeline-item d-flex w-100">
                                    <div class="timeline-item-marker">
                                        <div class="timeline-item-marker-text text-gray-500 me-3">27 min
                                        </div>
                                        <div
                                                class="timeline-item-marker-indicator rounded-circle bg-primary">
                                        </div>
                                    </div>
                                    <div
                                            class="timeline-item-content text-black-50 border-start border-5">
                                        New order placed!
                                        <a class="fw-bold text-decoration-none text-dark"
                                           href="#!">Order
                                            #2912</a>
                                        has been successfully placed.
                                    </div>
                                </div>
                                <!-- Timeline Item 1-->
                                <div class="timeline-item d-flex w-100">
                                    <div class="timeline-item-marker">
                                        <div class="timeline-item-marker-text text-gray-500 me-3">27 min
                                        </div>
                                        <div
                                                class="timeline-item-marker-indicator rounded-circle bg-primary">
                                        </div>
                                    </div>
                                    <div
                                            class="timeline-item-content text-black-50 border-start border-5">
                                        New order placed!
                                        <a class="fw-bold text-decoration-none text-dark"
                                           href="#!">Order
                                            #2912</a>
                                        has been successfully placed.
                                    </div>
                                </div>
                                <!-- Timeline Item 1-->
                                <div class="timeline-item d-flex w-100">
                                    <div class="timeline-item-marker">
                                        <div class="timeline-item-marker-text text-gray-500 me-3">27 min
                                        </div>
                                        <div
                                                class="timeline-item-marker-indicator rounded-circle bg-primary">
                                        </div>
                                    </div>
                                    <div
                                            class="timeline-item-content text-black-50 border-start border-5">
                                        New order placed!
                                        <a class="fw-bold text-decoration-none text-dark"
                                           href="#!">Order
                                            #2912</a>
                                        has been successfully placed.
                                    </div>
                                </div>
                                <!-- Timeline Item 1-->
                                <div class="timeline-item d-flex w-100">
                                    <div class="timeline-item-marker">
                                        <div class="timeline-item-marker-text text-gray-500 me-3">27 min
                                        </div>
                                        <div
                                                class="timeline-item-marker-indicator rounded-circle bg-primary">
                                        </div>
                                    </div>
                                    <div
                                            class="timeline-item-content text-black-50 border-start border-5">
                                        New order placed!
                                        <a class="fw-bold text-decoration-none text-dark"
                                           href="#!">Order
                                            #2912</a>
                                        has been successfully placed.
                                    </div>
                                </div>
                                <!-- Timeline Item 1-->
                                <div class="timeline-item d-flex w-100">
                                    <div class="timeline-item-marker">
                                        <div class="timeline-item-marker-text text-gray-500 me-3">27 min
                                        </div>
                                        <div
                                                class="timeline-item-marker-indicator rounded-circle bg-primary">
                                        </div>
                                    </div>
                                    <div
                                            class="timeline-item-content text-black-50 border-start border-5">
                                        New order placed!
                                        <a class="fw-bold text-decoration-none text-dark"
                                           href="#!">Order
                                            #2912</a>
                                        has been successfully placed.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 pb-4 h-100">
                    <div class="card">
                        <div class="card-header">
                            <span class="text-primary">Revenue Sources</span>
                        </div>
                        <div class="card-body d-flex flex-column align-items-center">
                            <div class="chart-pie d-flex align-items-center w-100"
                                 style="height:314px;">
                                <canvas id="revenueSources" width="100%"></canvas>
                            </div>
                            <div class="list-group-flush w-100" id="listFlushPie">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

