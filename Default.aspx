<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="columns is-centered ">
            <div class="column is-three-fifths mainbookarea">
              <div class="columns">
                <div class="column is-half is-multiline is-narrow">
                  
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
                        <i class="fas fa-globe"></i>
                      </span>
                    </p>
                  </div>

                </div>
                <div class="column is-half is-multiline is-narrow">
                  
                  <div class="field">
                    <label class="label is-small ft-white">Flight Type</label>
                    <p class="control has-icons-left is-expanded">
                      <span class="select is-fullwidth">
                          <asp:DropDownList ID="dropFlightType" runat="server"></asp:DropDownList>
                      </span>
                      <span class="icon is-small is-left">
                        <i class="fas fa-globe"></i>
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
                            <i class="fas fa-globe"></i>
                          </span>
                        </p>
                      </div>
                    </div>
                    <div class="column is-half is-multiline">
                      <div class="field">
                        <label class="label is-small ft-white">Flight Number</label>
                        <div class="control">
                            <asp:TextBox ID="txtFlightNumber" runat="server" CssClass="input"></asp:TextBox>
                        </div>
                      </div>
                    </div>
                  </div>

                </div>
              </div>
              <div class="columns">
                
                <div class="column is-half is-multiline ">

                  <div class="columns">
                    <div class="column is-half is-multiline ">
                      <div class="field is-half">
                        <label class="label is-small ft-white">Date</label>
                          <asp:TextBox ID="txtDate" runat="server" CssClass="input"></asp:TextBox>
                      </div>
                    </div>
                    <div class="column is-half is-multiline ">
                      <div class="field is-half">
                        <label class="label is-small ft-white">Time</label>
                          <asp:TextBox ID="txtTime" runat="server" CssClass="input"></asp:TextBox>
                      </div>
                    </div>
                  </div>

                  <div class="columns">
                    <div class="column is-multiline ">
                      <label class="checkbox ft-hr">
                        <input type="checkbox" id="RoundCheck" onclick="roundFormCheck()">
                        Round Trip
                      </label>
                    </div>
                  </div>
                  
                  <div id="ReturnDateField" class="columns" style="display:none">
                    <div class="column is-half is-multiline ">
                      <div class="field is-half">
                        <label class="label is-small ft-white">Date of Return</label>
                          <asp:TextBox ID="txtDate2" CssClass="input" runat="server"></asp:TextBox>
                      </div>
                    </div>
                    <div class="column is-half is-multiline ">
                      <div class="field is-half">
                        <label class="label is-small ft-white">Time of Return</label>
                          <asp:TextBox ID="txtTime2" CssClass="input" runat="server"></asp:TextBox>
                      </div>
                    </div>
                  </div>

                </div>
                <div class="column is-half is-centered">
                    <asp:Button ID="btnBookNow" runat="server" Text="Book Now" CssClass="button is-info is-rounded BooknowButton" />
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function () {
            var datePicker = new bulmaCalendar(document.getElementById('<%=txtDate.ClientID%>'), {
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
            });
            var datePicker = new bulmaCalendar(document.getElementById('<%=txtDate2.ClientID %>'), {
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
            });
        });

        function roundFormCheck() {
            var checkBox = document.getElementById("RoundCheck");
            var text = document.getElementById("ReturnDateField");
            if (checkBox.checked == true) {
                text.style.display = "flex";
            } else {
                text.style.display = "none";
            }
        }

        $(document).ready(function () {
            $('#<%=txtTime.ClientID%>').mdtimepicker({
                timeFormat: 'hh:mm:ss.000',
                format: 'h:mm tt',
                theme: 'blue',
                readOnly: true,
                hourPadding: false

            });
            $('#<%=txtTime2.ClientID%>').mdtimepicker({
                timeFormat: 'hh:mm:ss.000',
                format: 'h:mm tt',
                theme: 'blue',
                readOnly: true,
                hourPadding: false

            });
        });
    </script>
</asp:Content>

