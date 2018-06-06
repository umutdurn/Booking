<%@ Page Language="C#" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Booking Airport Transfer</title>
    <link rel="stylesheet" href="assets/bulma.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="assets/css/mdtimepicker.css" />
    <link rel="stylesheet" href="assets/bat.css" type="text/css" />
    <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
      <script type="text/javascript" src="assets/js/tabs.js"></script>
    <script type="text/javascript" src="assets/sass/extensions/dist/bulma-calendar.min.js"></script>
    <script type="text/javascript" src="assets/sass/extensions/dist/bulma-steps.min.js"></script>
</head>
<body>
<form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
            <section class="hero is-info is-fullheight hero-light-bg">
              <div class="hero-head">
                <nav class="navbar nav-bat-bot ">
                  <div class="container">
                    <div class="navbar-brand">
                      <a class="">
                        <img src="assets/img/logo.png">
                      </a>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="navbar-burger burger" data-target="navbarMenuHeroB"><span></span><span></span><span></span></span></div>
                    <div id="navbarMenuHeroB" class="navbar-menu">
                      <div class="navbar-end">
                        <a class="navbar-item">
                          <div class="field is-grouped">
                            <span class="icon">
                              <i class="fas fa-mobile-alt meicobat"></i> 
                            </span>
                            <span>+905069221901</span>
                          </div>
                        </a>
                        <a class="navbar-item">
                          <div class="field is-grouped">
                            <span class="icon">
                              <i class="fas fa-mobile-alt meicobat"></i> 
                            </span>
                            <span>+13478348842</span>
                          </div>
                        </a>
                        <a class="navbar-item">
                          <div class="field is-grouped">
                            <span class="icon">
                              <i class="far fa-envelope meicobat"></i> 
                            </span>
                            <span>reservations@bookingairporttransfer.com</span>
                          </div>
                        </a>
                      </div>
                    </div>
                  </div>
                </nav>
              </div>

              <div class="hero-body">
                <div class="container">
                  <div class="columns is-centered">
                    <div class="column is-three-fifths steps">
              
                      <div class="step-item is-active">
                        <div class="step-marker">1</div>
                        <div class="step-details is-hidden-mobile">
                          <p class="step-title">Road Plan</p>
                        </div>
                      </div>
                      <div class="step-item">
                        <div class="step-marker">2</div>
                        <div class="step-details is-hidden-mobile">
                          <p class="step-title">Date & Time</p>
                        </div>
                      </div>
                      <div class="step-item">
                        <div class="step-marker">3</div>
                        <div class="step-details is-hidden-mobile">
                          <p class="step-title">Transfer</p>
                        </div>
                      </div>
                      <div class="step-item">
                        <div class="step-marker">4</div>
                        <div class="step-details is-hidden-mobile">
                          <p class="step-title">Information</p>
                        </div>
                      </div>
                      <div class="steps-content columns is-centered">
                        <div class="step-content column is-three-fifths secondbookarea is-active">
                          <div class="field">
                            <label class="label is-small ft-white">City</label>
                            <p class="control has-icons-left is-expanded">
                              <span class="select is-fullwidth">
                                  <asp:DropDownList ID="dropCity" runat="server"></asp:DropDownList>
                              </span>
                              <span class="icon is-small is-left">
                                <i class="fas fa-globe"></i>
                              </span>
                            </p>
                          </div>

                          <div class="field">
                            <label class="label is-small ft-white">Airport</label>
                            <p class="control has-icons-left is-expanded">
                              <span class="select is-fullwidth">
                                  <asp:DropDownList ID="dropAirport" runat="server"></asp:DropDownList>
                              </span>
                              <span class="icon is-small is-left">
                                <i class="fas fa-plane"></i>
                              </span>
                            </p>
                          </div>

                          <div class="field">
                            <label class="label is-small ft-white">Flight Type</label>
                            <p class="control has-icons-left is-expanded">
                              <span class="select is-fullwidth">
                                  <asp:DropDownList ID="dropFlightType" runat="server"></asp:DropDownList>
                              </span>
                              <span class="icon is-small is-left">
                                <i class="fas fa-map-signs"></i>
                              </span>
                            </p>
                          </div>

                          <div class="columns">
                            <div class="column is-half is-multiline">
                              <div class="field">
                                <label class="label is-small ft-white">Destination</label>
                                <p class="control has-icons-left is-expanded">
                                  <span class="select is-fullwidth">
                                      <asp:DropDownList ID="dropDestination" runat="server"></asp:DropDownList>
                                  </span>
                                  <span class="icon is-small is-left">
                                    <i class="fas fa-map-marker-alt"></i>
                                  </span>
                                </p>
                              </div>
                            </div>
                            <div class="column is-half is-multiline">
                              <div class="field">
                                <label class="label is-small ft-white">Flight Number</label>
                                <div class="control has-icons-left">
                                    <asp:TextBox ID="txtFlightNumber" runat="server" CssClass="input flightnumber"></asp:TextBox>
                                  <span class="icon is-small is-left">
                                    <i class="fas fa-hashtag"></i>
                                  </span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="step-content column is-three-fifths secondbookarea">
                  
                          <div class="field">
                            <label class="label is-small ft-white">Date</label>
                            <div class="control has-icons-left">
                                <asp:TextBox ID="txtDate" CssClass="input" runat="server"></asp:TextBox>
                              <span class="icon is-small is-left">
                                <i class="fas fa-calendar-alt"></i>
                              </span>
                            </div>
                          </div>

                          <div class="field">
                            <label class="label is-small ft-white">Time</label>
                            <div class="control has-icons-left">
                                <asp:TextBox ID="txtTime" CssClass="input" runat="server"></asp:TextBox>
                              <span class="icon is-small is-left">
                                <i class="fas fa-clock"></i>
                              </span>
                            </div>
                          </div>
                          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                          <ContentTemplate>
                          <div class="columns">
                            <div class="column is-multiline ">
                              <label class="checkbox ft-hr2">
                                  <asp:CheckBox ID="chckRoundTrip" Text="Round Trip" runat="server" OnCheckedChanged="chckRoundTrip_CheckedChanged" AutoPostBack="True" />
                              </label>
                            </div>
                          </div>
                  
                          <div id="ReturnDateField" class="columns">
                            <div class="column is-half is-multiline ">
                              <div class="field is-half">
                                <label class="label is-small ft-white">Date of Return</label>
                                <div class="control has-icons-left">
                                    <asp:TextBox ID="txtDate2" CssClass="input" runat="server" Enabled="false"></asp:TextBox>
                                  <span class="icon is-small is-left">
                                    <i class="far fa-calendar-alt"></i>
                                  </span>
                                </div>
                              </div>
                            </div>
                            <div class="column is-half is-multiline ">
                              <div class="field is-half">
                                <label class="label is-small ft-white">Time of Return</label>
                                <div class="control has-icons-left">
                                    <asp:TextBox ID="txtTime2" CssClass="input" runat="server" Enabled="false"></asp:TextBox>
                                  <span class="icon is-small is-left">
                                    <i class="far fa-clock"></i>
                                  </span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </ContentTemplate>
                        </asp:UpdatePanel>
                        </div>
                        <div class="step-content column is-three-fifths secondbookarea">
                          <div class="columns">
                            <div class="column is-three-fifths is-multiline">
                              <div class="field">
                                <label class="label is-small ft-white">Car Type</label>
                                <p class="control has-icons-left is-expanded">
                                  <span class="select is-fullwidth">
                                      <asp:DropDownList ID="dropCarType" runat="server"></asp:DropDownList>
                                  </span>
                                  <span class="icon is-small is-left">
                                    <i class="fas fa-car"></i>
                                  </span>
                                </p>
                              </div>
                            </div>

                            <div class="column is-two-fifths is-multiline">
                              <div class="field">
                                <label class="label is-small ft-white">Number Of Passenger</label>
                                <div class="control has-icons-left">
                                    <asp:TextBox ID="txtNumberofPassengers" CssClass="input" runat="server"></asp:TextBox>
                                  <span class="icon is-small is-left">
                                    <i class="fas fa-male"></i>                            
                                  </span>
                                </div>
                              </div>
                            </div>
                          </div>
                          <figure class="image is-2by1">
                            <img src="https://bulma.io/images/placeholders/640x320.png">
                          </figure>

                        </div>
                        <div class="step-content column is-three-fifths secondbookarea">

                          <div class="columns">
                            <div class="column is-half is-multiline">
                              <div class="field">
                                <label class="label is-small ft-white">Name</label>
                                <div class="control has-icons-left">
                                    <asp:TextBox ID="txtName" CssClass="input flightnumber" runat="server"></asp:TextBox>
                                  <span class="icon is-small is-left">
                                    <i class="fas fa-info"></i>
                                  </span>
                                </div>
                              </div>
                            </div>

                            <div class="column is-half is-multiline">
                              <div class="field">
                                <label class="label is-small ft-white">Surname</label>
                                <div class="control has-icons-left">
                                    <asp:TextBox ID="txtSurname" CssClass="input flightnumber" runat="server"></asp:TextBox>
                                  <span class="icon is-small is-left">
                                    <i class="fas fa-info"></i>
                                  </span>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="columns">
                            <div class="column is-half is-multiline">
                              <div class="field">
                                <label class="label is-small ft-white">Mail</label>
                                <div class="control has-icons-left">
                                    <asp:TextBox ID="txtMail" CssClass="input flightnumber" runat="server"></asp:TextBox>
                                  <span class="icon is-small is-left">
                                    <i class="fas fa-at"></i>
                                  </span>
                                </div>
                              </div>
                            </div>

                            <div class="column is-half is-multiline">
                              <div class="field">
                                <label class="label is-small ft-white">Phone Number</label>
                                <div class="control has-icons-left">
                                    <asp:TextBox ID="ttxPhoneNumber" CssClass="input flightnumber" runat="server"></asp:TextBox>
                                  <span class="icon is-small is-left">
                                    <i class="fas fa-mobile"></i>
                                  </span>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="columns">
                            <div class="column is-half is-multiline">
                              <div class="field">
                                <label class="label is-small ft-white">Adress</label>
                                <div class="control has-icons-left">
                                    <asp:TextBox ID="txtAdress" TextMode="MultiLine" CssClass="textarea" runat="server"></asp:TextBox>
                                </div>
                              </div>
                            </div>

                            <div class="column is-half is-multiline">
                              ReCAPTCHA Area
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="steps-actions columns is-centered">
                        <div class="column is-three-fifths secnavarea">
                          <div class="steps-action is-pulled-left">
                            <a href="#" data-nav="previous" class="button is-light" disabled="disabled">previous</a>
                          </div>
                          <div class="steps-action is-pulled-right">
                            <a href="#" data-nav="next" class="button is-primary">Next</a>
                          </div>
                          <div class="secondprice steps-action is-pulled-right"><span>65 $</span><small>/passenger</small></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </section>
    <script type="text/javascript" src="assets/js/mdtimepicker.js"></script>
    <script type="text/javascript">
        document.addEventListener( 'DOMContentLoaded', function () {
          var datePicker = new bulmaCalendar( document.getElementById( 'datepickerDemo' ), {
            startDate: new Date(), // Date selected by default
            dateFormat: 'dd-mm-yyyy', // the date format `field` value
            lang: 'en', // internationalization
            overlay: true,
            closeOnOverlayClick: true,
            closeOnSelect: true,
            // callback functions
            onSelect: null,
            onOpen: null,
            onClose: null,
            onRender: null
          } );
          var datePicker = new bulmaCalendar( document.getElementById( 'datepickerDemo2' ), {
            startDate: new Date(), // Date selected by default
            dateFormat: 'dd-mm-yyyy', // the date format `field` value
            lang: 'en', // internationalization
            overlay: true,
            closeOnOverlayClick: true,
            closeOnSelect: true,
            // callback functions
            onSelect: null,
            onOpen: null,
            onClose: null,
            onRender: null
          } );


        } );

        $(document).ready(function(){
          $('#timepicker').mdtimepicker({
            timeFormat: 'hh:mm:ss.000', 
            format: 'h:mm tt',      
            theme: 'blue',        
            readOnly: true,       
            hourPadding: false     

          }); 
          $('#timepicker2').mdtimepicker({
            timeFormat: 'hh:mm:ss.000', 
            format: 'h:mm tt',      
            theme: 'blue',        
            readOnly: true,       
            hourPadding: false     

          }); 
        });

        // Navbar Mobile
        document.addEventListener('DOMContentLoaded', function () {

          // Get all "navbar-burger" elements
          var $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

          // Check if there are any navbar burgers
          if ($navbarBurgers.length > 0) {

            // Add a click event on each of them
            $navbarBurgers.forEach(function ($el) {
              $el.addEventListener('click', function () {

                // Get the target from the "data-target" attribute
                var target = $el.dataset.target;
                var $target = document.getElementById(target);

                // Toggle the class on both the "navbar-burger" and the "navbar-menu"
                $el.classList.toggle('is-active');
                $target.classList.toggle('is-active');

              });
            });
          }

        });

    </script>
    </form>
</body>
</html>
