<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <script src= "https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"> </script> 
  <title>SleepySAL - Screenshot </title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.css" rel="stylesheet">
  <!-- custom.css includes styling for the chat box -->
  <link href="css/custom.css" rel="stylesheet"> 

  <script>
    var myVar = setInterval(TopbarUpdate, 4000);

    function TopbarUpdate() {
        $.ajax({
          url: "TopbarUpdate",
          data: {
          },
          success: function(result) {
            $("#TopbarDisplay").html(result);
          }
      });
        return false;
    }
  </script>

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

   <!-- Sidebar -->
      <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

          <!-- Sidebar - Brand -->
          <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
              <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-flushed"></i>
              </div>
              <div class="sidebar-brand-text mx-3">SleepySAL</div>
          </a>

          <!-- Divider -->
          <hr class="sidebar-divider my-0">

          <!-- Nav Item - Dashboard -->
          <li class="nav-item active">
              <a class="nav-link" href="index.jsp">
                  <i class="fas fa-fw fa-home"></i>
                  <span>Home</span>
              </a>
          </li>

          <!-- Divider -->
          <hr class="sidebar-divider">

          <!-- Nav Item - Pages Collapse Menu -->
          <li class="nav-item">
              <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                  <i class="fas fa-fw fa-user"></i>
                  <span>Friends</span>
              </a>
              <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                  <div class="bg-white py-2 collapse-inner rounded">
                      <h6 class="collapse-header">Favorites:</h6>
                      <a class="collapse-item" href="blank.jsp">Timmy Nook</a>
                      <a class="collapse-item" href="blank.jsp">Tommy Nook</a>
                  </div>
              </div>
          </li>

          <!-- Nav Item - Tables -->
          <li class="nav-item">
            <a class="nav-link" href="rooms.jsp">
              <i class="fas fa-fw fa-table"></i>
              <span>Rooms</span></a>
          </li>

          <!-- Nav Item - Tables -->
          <li class="nav-item">
            <a class="nav-link" href="settings.jsp">
              <i class="fas fa-fw fa-cog"></i>
              <span>Settings</span></a>
          </li>

          <!-- Divider -->
          <hr class="sidebar-divider d-none d-md-block">

          <!-- Sidebar Toggler (Sidebar) -->
          <div class="text-center d-none d-md-inline">
              <button class="rounded-circle border-0" id="sidebarToggle"></button>
          </div>

      </ul>
    <!-- End of Sidebar -->

    <!-- START OF CHAT BOX CODES -->
    <!-- Chat Box Open Button (float on top of everything)-->
    <button onclick="openChatBox();"id="chatButton" class="btn btn-primary chatButton">Chat</button>
    <!-- Chat Box Component (float on top of everything) -->
    <div class="chatBoxContainer row" id="chatBox">
      
      <!-- Chat List (left-hand-side) -->
      <div class="col1">
        <ul id="chatList" class="chatList">
          <div class="chatListContainer">
            <!-- Search contact Textarea -->
            <div class="form-inline md-form form-sm mt-0" style="padding: 7px; padding-left: 10px;">
              <i class="fas fa-search" aria-hidden="true"></i>
              <input id="searchContactBox" class="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search contact"
                aria-label="Search">
            </div>
            <!-- Dynamic List of contacts -->
            <li class="chatListRow row d-flex flex-row align">
              <div class="chatListProfile">
                <img class="chatListProfilePicture rounded-circle" src=timmy.png>
              </div>
              <text class="chatListName">Timmy</text>
            </li>
            <li class="chatListRow row d-flex flex-row align">
              <div class="chatListProfile">
                <img class="chatListProfilePicture rounded-circle" src=timmy.png>
              </div>
              <text class="chatListName">Timmy</text>
            </li>
            <li class="chatListRow row d-flex flex-row align">
              <div class="chatListProfile">
                <img class="chatListProfilePicture rounded-circle" src=timmy.png>
              </div>
              <text class="chatListName">Timmy</text>
            </li>
            <li class="chatListRow row d-flex flex-row align">
              <div class="chatListProfile">
                <img class="chatListProfilePicture rounded-circle" src=timmy.png>
              </div>
              <text class="chatListName">Timmy</text>
            </li>

          </div>
          

        </ul>
      </div>
      <!-- Message Area (right-hand-side) -->
      <div class="col2">
        <!-- Header: showing current chat recipient name -->
        <div class="chatBoxHeader row">
          <custom name="chatHeaderRecipient" class="chatHeaderRecipient font-weight-bold">Timmy</custom>
          <div class="closeChatBoxButton"> 
            <i class="fa fa-times" style="z-index: 1" onclick="closeChatBox();"></i>
          </div>

          
        </div>
        <!-- Dynamic Chat Log Box -->
        <ul id="chatLog" class="chatLog list-group">
          <li class="chatLogRow row d-flex flex-row">
            <div class="senderProfile">
              <img class="senderProfilePicture rounded-circle" src=timmy.png>
            </div>
            <div class="senderMessage">
              <text>Hello! This is a sample message with a lot of text. If anyone knows how to have the profile picture align with the top of this paragraph please change the code.</text>
            </div>
          </li>
        </ul>
        <!-- Chat Message Input Box -->
        <textarea class="chatInputBox" id="messageToSend" placeholder="Enter your message here..."></textarea>
        <!-- Buttons -->
        <div class="chatSendArea row align-items-center">
          <button class="btn col font-weight-bold">Invite</button>
          <button onclick="sendTestMessage();" class="btn col font-weight-bold">Test</button>
          <button class="fas fa-laugh btn font-weight-bold chatInputEmojiButton"></button>
          <button id="sendButton" class="btn col font-weight-bold" onclick="sendMessage();">Send</button>
        </div>
      </div>
    </div>

    <!-- Chat Box Script -->
    <script>
      /* listen for "Enter" key press when chat box open */
      $("#messageToSend").keypress(function(event) { 
          if (event.keyCode === 13) { 
              event.preventDefault(); // disable new line function of enter key
              $("#sendButton").click(); // send message
          } 
      }); 
      /* listen for "Enter" key press to search contact*/
      $("#searchContactBox").keypress(function(event) { 
          if (event.keyCode === 13) { 
              /* add implementation here to search for contact using keyword */
          } 
      }); 
      function sendMessage(){
        var msg = document.getElementById("messageToSend").value;
        if(msg != ""){
          msg = "<li class='list-group-item' style='text-align: right'>" + "<text class='userMessage'>" + msg +"</text></li>";
          document.getElementById("chatLog").innerHTML += msg;
          document.getElementById("messageToSend").value = '';
          document.getElementById("chatLog").scrollTop = document.getElementById("chatLog").scrollHeight;
          document.getElementById("messageToSend").placeholder = "Enter your message here..."
        } else{
          document.getElementById("messageToSend").placeholder = "Cannot send empty message! :("
        }
      }
      function openChatBox(){
        document.getElementById("chatBox").style.visibility = "visible";
        document.getElementById("chatButton").style.visibility = "hidden";
      }
      function closeChatBox(){
        document.getElementById("chatBox").style.visibility = "hidden";
        document.getElementById("chatButton").style.visibility = "visible";
      }
      function sendTestMessage(){
        var testMsg;
        testMsg = "<li class='chatLogRow row d-flex flex-row'> <div class='senderProfile'> <img class='senderProfilePicture rounded-circle' src=timmy.png> </div> <div class='senderMessage'><text>This is a test message.</text></div></li>"
        document.getElementById("chatLog").innerHTML += testMsg;
      }
      function addSampleContact(user){
        var list = $('#chatList')[0];
        
      }
    </script>
    <!-- END OF CHAT BOX CODES -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>


          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            <li id="TopbarDisplay" class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <%
                String userid2 = (String) session.getAttribute("UserID");
                //String userid2 = "I9dH5BF59AfcO5SPtZHCy2VhAwA3";
                        
                List<Alert> userAlerts2 = new ArrayList<Alert>();
                userAlerts2= Alert.findAlerts(userid2);
                try {
              Thread.sleep(4000);
            } catch (InterruptedException e) {
              // TODO Auto-generated catch block
              e.printStackTrace();
            }
                %>     
                <span class="badge badge-danger badge-counter"><%=userAlerts2.size()%></span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">                
                  <h6 class="dropdown-header">
                    Alerts Center
                  </h6>
                  <%
                  for (int i=0; i<userAlerts2.size(); i++) {   
                  %>
                    <a class="dropdown-item d-flex align-items-center" href="#">
                      <div class="mr-3">
                        <div class="icon-circle bg-primary">
                          <i class="fas fa-file-alt text-white"></i>
                        </div>
                      </div>
                      <div>
                        <div class="small text-gray-500"><%=userAlerts2.get(i).sender%></div>
                        <span class="font-weight-bold"><%=userAlerts2.get(i).message%></span>
                      </div>
                    </a>
                  <%}%>
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" aria-haspopup="true" aria-expanded="false" onclick="toggleChatBox()">
                <i class="fas fa-envelope fa-fw"></i>
              </a>
            </li>


            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Tommy Trojan</span>
                <img class="img-profile rounded-circle" src=tommy.jpg>
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Change your profile picture </h1>
            <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> -->
          </div>
          <div class="screenshot-container">
            <label for="screenshot-url">Enter the url of the image you want to use. An example is show below with its url.</label>
            <input type="text" class="form-control" id="screenshot-url" style="margin-bottom: 20px;" placeholder="Your url here.">
            <button class="btn btn-primary" onclick="takeScreenshot();">Take Screenshot</button>
            <p id="screenshot-responseText"> https://www.google.com/url?sa=i&url=https%3A%2F%2Ftwitter.com%2Fanimalcrossing&psig=AOvVaw0SNuxoOP2rW1LXy-RMJM7j&ust=1587959628151000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLjzg-GYhekCFQAAAAAdAAAAABAD</p>
          </div>
          
          <img id="screenshot-result" src="nook.jpg" style="margin-top: 10px">
          
          <div class="screenshot-container">
            <button id="use-photo-button" class="btn btn-success" onclick="useScreenshot();" style="margin-top: 10px; visibility: hidden;">Use This Photo</button>
          </div>

          
          

        </div>

        <script>
            function takeScreenshot(){
                var getURL = document.getElementById("screenshot-url");
                getURL = "https://api.apiflash.com/v1/urltoimage?access_key=c452c24fe1e846ebb1b80d59c697eb21&url=http://" + getURL;
                var screenshot;

                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function(){
                    if(this.readyState == 4 && this.status == 200){ // if screenshot successful, validated by servlet
                        document.getElementById("screenshot-result").innerHTML = this.responseURL;
                        document.getElementById("screenshot-responseText").src = this.responseText;
                        document.getElementById("use-photo-button").style.visibility = "visible";
                    }
                    else{ //if screenshot unsuccessful, return an error message
                      document.getElementById("sscreenshot-responseText").innerHTML = "Cannot load image. Please try again, or use another url.";
                    }
                }
                xhttp.open("GET", getURL, true);
                xhttp.send();

                
            
            }

        </script>


      </div>
  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">�</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.jsp">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bottom-right Chat Window Modal-->
  <div class="modal" id="ChatWindowModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"
    style="position:fixed; bottom:0px; right:0px; margin:0px;">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Chat with NAME</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">�</span>
          </button>
        </div>
        <div class="modal-body">This room is private and requires a password to be joined.</div>
        <form>
          <div class="form-group modal-body">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
          </div>
        </form>
        <div class="modal-footer">
          <button class="btn btn-primary" type="button" data-dismiss="modal">Submit</button>
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>