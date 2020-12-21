 <%@page import="bt.gov.moe.nfe.newedge.dto.UserDto"%>
<%UserDto userdet=(UserDto) session.getAttribute("userdetail"); %>
 <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="/dashboard" class="nav-link">Dashboard</a>
      </li>
    </ul>

    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <ul class="navbar-nav ml-auto">
      	<li class="nav-item dropdown">
	        <a class="nav-link" data-toggle="dropdown" href="#">
	          	<i class="far fa-bell"></i>
	          	<span class="badge badge-warning navbar-badge">5</span>
	        </a>
	        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
	         	<span class="dropdown-item dropdown-header">2 Notifications</span>
	          	<div class="dropdown-divider"></div>
	          	<a href="#" class="dropdown-item">
		            <i class="fas fa-envelope mr-2"></i> 3 new messages
		            <span class="float-right text-muted text-sm">3 mins</span>
	          	</a>
	          	<div class="dropdown-divider"></div>
	        </div>
      	</li>
      	<li class="nav-item dropdown">
	    	<div class="user-panel nav-link d-flex" data-toggle="dropdown">
	        	<div class="image">
	          		<img src="admin3/dist/img/avatar5.png" class="img-circle elevation-2" alt="User Image">
	        	</div>
	        	<div class="info">
	          		<a href="#" class="d-block"><%=userdet.getFullName() %></a>
	        	</div>
	      	</div>
			<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
				<div class="dropdown-divider"></div>
				<a href="/profile" class="dropdown-item">
					<i class="fas fa-user mr-2"></i>
					Profile
				</a>				
				<div class="dropdown-divider"></div>
				<a href="/settings" class="dropdown-item">
					<i class="fas fa-random mr-2"></i>
					Setting
				</a>
				<div class="dropdown-divider"></div>
				<a href="#" onclick="logout()" class="dropdown-item">
					<i class="fa fa-sign-out-alt"></i>Sign out
				</a>
			</div>
		</li>
    </ul>
  </nav>