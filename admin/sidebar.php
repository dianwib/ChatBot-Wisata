 <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/" class="brand-link">
      <img src="../img/robotchatbot.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <link rel="shortcut icon" href="../img/sampangLogo4.ico">

      <span class="brand-text font-weight-light">Sampang ChatBot</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../img/adminLogo.png" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="?hal=admin" class="d-block"><?php 
          echo $_SESSION['username']; ?></a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
         
          <li class="nav-item">
            <a href="?hal=dashboard" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="?hal=indonesia" class="nav-link">
              <i class="nav-icon fas fa-tasks"></i>
              <p>
                ChatBot Indonesia
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="?hal=inggris" class="nav-link">
              <i class="nav-icon fas fa-tasks"></i>
              <p>
                ChatBot Inggris  
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="?hal=signout" class="nav-link">
              <i class="nav-icon fas fa-wrench"></i>
              <p>
                Log Out
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>