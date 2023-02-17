<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>BRMS Admin Panel</title>
    <meta content="" name="description" />

    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="assets/img/bus.png" rel="icon" />

    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet"
    />

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/aos/aos.css" rel="stylesheet" />
    <link
      href="assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
      rel="stylesheet"
    />
    <link
      href="assets/vendor/glightbox/css/glightbox.min.css"
      rel="stylesheet"
    />
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet" />
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

    <link href="assets/css/style.css" rel="stylesheet" />

    <link rel="stylesheet" href="assets/css/routetrip.css" />
  </head>

  <body>
    <!-- ======= Header ======= -->
    <header id="header" class="header fixed-top">
      <div
        class="container-fluid container-xl d-flex align-items-center justify-content-between"
      >
        <a href="dashboard.html" class="logo d-flex align-items-center">
          <img src="assets/img/bus_home.gif" alt="bus gif icon" />
          <span>BRMS Admin Panel</span>
        </a>

        <nav id="navbar" class="navbar">
          <ul>
            <li class="dropdown">
              <a href="route.html"
                ><span>Bus Management</span> <i class="bi bi-chevron-down"></i
              ></a>
              <ul>
                <li><a href="#busadd"></a></li>
                <li><a href="busadd.jsp">Add Bus</a></li>
                <li><a href="GetBus.jsp">Show Bus</a></li>
                <li><a href="updatebus.jsp">Update Bus</a></li>
                <li><a href="DeleteBus.jsp">Delete Bus Bus</a></li>
              </ul>
            </li>

            <li>
              <a
                class="nav-link scrollto logo d-flex align-items-center"
                href="#help"
                >Welcome User <img src="assets/img/man.png" alt="admin"
              /></a>
            </li>
          </ul>
          <i class="bi bi-list mobile-nav-toggle"></i>
        </nav>
        <!-- .navbar -->
      </div>
    </header>
    <!-- End Header -->

    <section class="intro">
      <div class="bg-image h-100" style="background-color: #f5f7fa">
        <div class="mask d-flex align-items-center h-100">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-12">
                <div class="card">
                  <div class="card-body p-0">
                    <div
                      class="table-responsive table-scroll"
                      data-mdb-perfect-scrollbar="true"
                      style="position: relative; height: 700px"
                    >
                      <table class="table table-striped mb-0">
                        <thead style="background-color: #002d72">
                          <tr>
                            <th scope="col">Bus_Id</th>
                            <th scope="col">Bus_Registration_number</th>
                            <th scope="col">Capacity</th>
                            <th scope="col">Type</th>
                            <th scope="col">Update</th>
                            <th scope="col">Delete</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>Like a butterfly</td>
                            <td>Boxing</td>
                            <td>20/td>
                            <td>Ac</td>
                            <td>Update</td>
                            <td>Delete</td>
                          </tr>
                          <tr>
                            <td>Mind &amp; Body</td>
                            <td>Yoga</td>
                            <td>8:00 AM - 9:00 AM</td>
                            <td>Adam Stewart</td>
                            <td>Update</td>
                            <td>Delete</td>
                          </tr>
                          <tr>
                            <td>Crit Cardio</td>
                            <td>Gym</td>
                            <td>9:00 AM - 10:00 AM</td>
                            <td>Aaron Chapman</td>
                            <td>Update</td>
                            <td>Delete</td>
                          </tr>
                          <tr>
                            <td>Wheel Pose Full Posture</td>
                            <td>Yoga</td>
                            <td>7:00 AM - 8:30 AM</td>
                            <td>Donna Wilson</td>
                            <td>15</td>
                          </tr>
                          <tr>
                            <td>Playful Dancer's Flow</td>
                            <td>Yoga</td>
                            <td>8:00 AM - 9:00 AM</td>
                            <td>Donna Wilson</td>
                            <td>10</td>
                          </tr>
                          <tr>
                            <td>Zumba Dance</td>
                            <td>Dance</td>
                            <td>5:00 PM - 7:00 PM</td>
                            <td>Donna Wilson</td>
                            <td>20</td>
                          </tr>
                          <tr>
                            <td>Cardio Blast</td>
                            <td>Gym</td>
                            <td>5:00 PM - 7:00 PM</td>
                            <td>Randy Porter</td>
                            <td>10</td>
                          </tr>
                          <tr>
                            <td>Pilates Reformer</td>
                            <td>Gym</td>
                            <td>8:00 AM - 9:00 AM</td>
                            <td>Randy Porter</td>
                            <td>10</td>
                          </tr>
                          <tr>
                            <td>Supple Spine and Shoulders</td>
                            <td>Yoga</td>
                            <td>6:30 AM - 8:00 AM</td>
                            <td>Randy Porter</td>
                            <td>15</td>
                          </tr>
                          <tr>
                            <td>Yoga for Divas</td>
                            <td>Yoga</td>
                            <td>9:00 AM - 11:00 AM</td>
                            <td>Donna Wilson</td>
                            <td>20</td>
                          </tr>
                          <tr>
                            <td>Virtual Cycle</td>
                            <td>Gym</td>
                            <td>8:00 AM - 9:00 AM</td>
                            <td>Randy Porter</td>
                            <td>20</td>
                          </tr>
                          <tr>
                            <td>Like a butterfly</td>
                            <td>Boxing</td>
                            <td>9:00 AM - 11:00 AM</td>
                            <td>Aaron Chapman</td>
                            <td>10</td>
                          </tr>
                          <tr>
                            <td>Mind &amp; Body</td>
                            <td>Yoga</td>
                            <td>8:00 AM - 9:00 AM</td>
                            <td>Adam Stewart</td>
                            <td>15</td>
                          </tr>
                          <tr>
                            <td>Crit Cardio</td>
                            <td>Gym</td>
                            <td>9:00 AM - 10:00 AM</td>
                            <td>Aaron Chapman</td>
                            <td>10</td>
                          </tr>
                          <tr>
                            <td>Wheel Pose Full Posture</td>
                            <td>Yoga</td>
                            <td>7:00 AM - 8:30 AM</td>
                            <td>Donna Wilson</td>
                            <td>15</td>
                          </tr>
                          <tr>
                            <td>Playful Dancer's Flow</td>
                            <td>Yoga</td>
                            <td>8:00 AM - 9:00 AM</td>
                            <td>Donna Wilson</td>
                            <td>10</td>
                          </tr>
                          <tr>
                            <td>Zumba Dance</td>
                            <td>Dance</td>
                            <td>5:00 PM - 7:00 PM</td>
                            <td>Donna Wilson</td>
                            <td>20</td>
                          </tr>
                          <tr>
                            <td>Cardio Blast</td>
                            <td>Gym</td>
                            <td>5:00 PM - 7:00 PM</td>
                            <td>Randy Porter</td>
                            <td>10</td>
                          </tr>
                          <tr>
                            <td>Pilates Reformer</td>
                            <td>Gym</td>
                            <td>8:00 AM - 9:00 AM</td>
                            <td>Randy Porter</td>
                            <td>10</td>
                          </tr>
                          <tr>
                            <td>Supple Spine and Shoulders</td>
                            <td>Yoga</td>
                            <td>6:30 AM - 8:00 AM</td>
                            <td>Randy Porter</td>
                            <td>15</td>
                          </tr>
                          <tr>
                            <td>Yoga for Divas</td>
                            <td>Yoga</td>
                            <td>9:00 AM - 11:00 AM</td>
                            <td>Donna Wilson</td>
                            <td>20</td>
                          </tr>
                          <tr>
                            <td>Virtual Cycle</td>
                            <td>Gym</td>
                            <td>8:00 AM - 9:00 AM</td>
                            <td>Randy Porter</td>
                            <td>20</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
  </body>
</html>
