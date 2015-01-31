<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editregulazia.aspx.cs" Inherits="IcProg.Editregulazia" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>אתר ארגון רגולציה</title>
<link rel="stylesheet" href="css/screen.css" type="text/css" media="screen" title="default" />
<<link rel="stylesheet" href="css/bootstrap.css" type="text/css"  />
 <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"  />
<!--[if IE]>
<link rel="stylesheet" media="all" type="text/css" href="css/pro_dropline_ie.css" />
<![endif]-->
    
<!--  jquery core -->
<script src="js/jquery/jquery-1.4.1.min.js" type="text/javascript"></script>
 
<!--  checkbox styling script -->
<script src="js/jquery/ui.core.js" type="text/javascript"></script>
<script src="js/jquery/ui.checkbox.js" type="text/javascript"></script>
<script src="js/jquery/jquery.bind.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
<script type="text/javascript">
  /*  $(function () {
        $('input').checkBox();
        $('#toggle-all').click(function () {
            $('#toggle-all').toggleClass('toggle-checked');
            $('#mainform input[type=checkbox]').checkBox('toggle');
            return false;
        });
    });*/

    $(document).ready(function () {

        $('.inp-form').focusin(function () {

            $(this).parent().parent().addClass("typeBorder");

        });

        $('.inp-form').focusout(function () {

            $(this).parent().parent().removeClass("typeBorder");

        });
    });


</script>  


<![if !IE 7]>

<!--  styled select box script version 1 -->
<script src="js/jquery/jquery.selectbox-0.5.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('.styledselect').selectbox({ inputClass: "selectbox_styled" });
    });
</script>
 

<![endif]>


<!--  styled select box script version 2 --> 
<script src="js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('.styledselect_form_1').selectbox({ inputClass: "styledselect_form_1" });
        $('.styledselect_form_2').selectbox({ inputClass: "styledselect_form_2" });
    });
</script>

<!--  styled select box script version 3 --> 
<script src="js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('.styledselect_pages').selectbox({ inputClass: "styledselect_pages" });
    });
</script>

<!--  styled file upload script --> 
<script src="js/jquery/jquery.filestyle.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8">
    $(function () {
        $("input.file_1").filestyle({
            image: "images/forms/upload_file.gif",
            imageheight: 29,
            imagewidth: 78,
            width: 300
        });
    });
</script>

<!-- Custom jquery scripts -->
<script src="js/jquery/custom_jquery.js" type="text/javascript"></script>
 
<!-- Tooltips -->
<script src="js/jquery/jquery.tooltip.js" type="text/javascript"></script>
<script src="js/jquery/jquery.dimensions.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $('a.info-tooltip ').tooltip({
            track: true,
            delay: 0,
            fixPNG: true,
            showURL: false,
            showBody: " - ",
            top: -35,
            left: 5
        });
    });
</script> 

<!--  date picker script -->
<link rel="stylesheet" href="css/datePicker.css" type="text/css" />
<script src="js/jquery/date.js" type="text/javascript"></script>
<script src="js/jquery/jquery.datePicker.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8">
    $(function () {

        // initialise the "Select date" link
        $('#date-pick')
            .datePicker(
                // associate the link with a date picker
                {
                    createButton: false,
                    startDate: '01/01/2005',
                    endDate: '31/12/2020'
                }
            ).bind(
                // when the link is clicked display the date picker
                'click',
                function () {
                    updateSelects($(this).dpGetSelected()[0]);
                    $(this).dpDisplay();
                    return false;
                }
            ).bind(
                // when a date is selected update the SELECTs
                'dateSelected',
                function (e, selectedDate, $td, state) {
                    updateSelects(selectedDate);
                }
            ).bind(
                'dpClosed',
                function (e, selected) {
                    updateSelects(selected[0]);
                }
            );

        var updateSelects = function (selectedDate) {
            var selectedDate = new Date(selectedDate);
            $('#d option[value=' + selectedDate.getDate() + ']').attr('selected', 'selected');
            $('#m option[value=' + (selectedDate.getMonth() + 1) + ']').attr('selected', 'selected');
            $('#y option[value=' + (selectedDate.getFullYear()) + ']').attr('selected', 'selected');
        }
        // listen for when the selects are changed and update the picker
        $('#d, #m, #y')
            .bind(
                'change',
                function () {
                    var d = new Date(
                                $('#y').val(),
                                $('#m').val() - 1,
                                $('#d').val()
                            );
                    $('#date-pick').dpSetSelected(d.asString());
                }
            );

        // default the position of the selects to today
        var today = new Date();
        updateSelects(today.getTime());

        // and update the datePicker to reflect it...
        $('#d').trigger('change');
    });
</script>

<!-- MUST BE THE LAST SCRIPT IN <HEAD></HEAD></HEAD> png fix -->
<script src="js/jquery/jquery.pngFix.pack.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(document).pngFix();
    });
</script>
    <style type="text/css">
        .auto-style2 {
            height: 16px;
        }
        </style>
</head>
   
<body> 
    <form id="form2" runat="server">
     
<!-- Start: page-top-outer -->
<div id="page-top-outer">    

<!-- Start: page-top -->
<div id="page-top">

	<!-- start logo -->
	<div id="logo">
	<a href=""><img src="IC.png"width="156" height="40" alt="" /></a>
	</div>
	<!-- end logo -->
	
	<!--  start top-search -->
    <div class="navbar-form navbar-left" role="search">
  <div class="form-group">
    <input type="text" class="form-control" placeholder="חפש">
  </div>
  <button type="submit" class="btn btn-default">חפש</button>
</div>
	<%--<div id="top-search">
		<table border="0" cellpadding="0" cellspacing="0">
		<tr>
		<td>
            <input type="text" value="Search" onblur="if (this.value=='') { this.value='Search'; }" onfocus="if (this.value=='Search') { this.value=''; }" class="top-search-inp" />

		</td>
		<td>
		 
		<select  class="styledselect">
			<option value="">All</option>
			<option value="">Products</option>
			<option value="">Categories</option>
			<option value="">Clients</option>
			<option value="">News</option>
		</select> 
		 
		</td>
		<td>
		<input type="image" src="images/shared/top_search_btn.gif"  />
		</td>
		</tr>
		</table>
	</div>--%>
 	<!--  end top-search -->
 	<div class="clear"></div>

</div>
<!-- End: page-top -->

</div>
<!-- End: page-top-outer -->
	
<div class="clear">&nbsp;</div>
 
<!--  start nav-outer-repeat................................................................................................. START -->
<div class="nav-outer-repeat"> 
<!--  start nav-outer -->
<div class="nav-outer"> 

		<!-- start nav-right -->
		
		<!-- end nav-right -->

   
		<!--  start nav -->
		<div class="nav">
		<div class="table">
            	
		
		<ul class="select"><li><a href="#nogo"><b>מנהל המערכת</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub">
			<ul class="sub">
				<li><a href="#nogo">מחיקת עובד</a></li>
				<li><a href="EditPage.aspx">עריכת עובד</a></li>
				
				
                <li><a href="Admin.aspx">הוספת עובד</a></li>
			</ul>
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
            <div class="nav-divider">&nbsp;</div>
		
		<ul class="select"><li><b>דוחות נוספים</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<%--<div class="select_sub">
			<ul class="sub">
				<li><a href="#nogo">דוחות שעונים</a></li>
				<li><a href="#nogo">דוחות גרפיים</a></li>
				<li><a href="#nogo">דוחות בטבלה</a></li>
			</ul>
		</div>--%>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		   
            <ul class="select"><li><a href="#nogo"><b>משימות</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub">
			<ul class="sub">
				<li><a href="TableTask.aspx">דו"ח משימות</a></li>
				<li><a href="taskee.aspx">הוספת משימות</a></li>
				<li><a href="#nogo">עריכת משימות</a></li>
			 
			</ul>
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>                 
		
		
		<div class="nav-divider">&nbsp;</div>
		
		<ul class="select"><li><a href="#nogo"><b>בקרה</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub">
			<ul class="sub">
				<li><a href="TableBakar.aspx">דו"ח בקרה</a></li>
				<li><a href="Bakar.aspx">הוספת בקרה</a></li>
				<li><a href="#nogo">עריכת בקרה</a></li>
			</ul>
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		
		<ul class="current"><li><a href="#nogo"><b>רגולציה</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub show">
			<ul class="sub">
				<li><a href="TableReg.aspx">דו"ח רגולציה</a></li>
                <li><a href="regulaziaa.aspx">הוספת רגולציה</a></li>
				<li class="sub_show"><a href="Editregulazia.aspx">עריכת רגולציה</a></li>
				
			</ul>
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		
		
		
		<div class="clear"></div>
		</div>
		<div class="clear"></div>
		</div>
		<!--  start nav -->

</div>
<div class="clear"></div>
<!--  start nav-outer -->
</div>
<!--  start nav-outer-repeat................................................... END -->
 
 <div class="clear"></div>
 
<!-- start content-outer -->
<div id="content-outer">
<!-- start content -->
<div id="content">
<div id="page-heading"><h3>עריכת רגולציה</h3></div>



<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
<tr>
	<th rowspan="3" class="sized"><img src="images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
	<th class="topleft"></th>
	<td id="tbl-border-top">&nbsp;</td>
	<th class="topright"></th>
	<th rowspan="3" class="sized"><img src="images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
</tr>
<tr>
	<td id="tbl-border-left"></td>
	<td>
	<!--  start content-table-inner -->
	<div id="content-table-inner">

	<table border="0" width="100%" cellpadding="0" cellspacing="0">
	<tr valign="top">
	<td>
	
	
		<!--  start step-holder -->
		
		<!--  end step-holder -->
	
		<!-- start id-form -->
        


		<table border="0" cellpadding="0" cellspacing="0"  id="related-activities">

            <tr>
            <td><asp:TextBox ID="Namereq" runat="server" class="form-control"  dir="rtl"></asp:TextBox></td>
			<th valign="top" dir="rtl"> שם הדרישה: </th>
			
			<td></td>
		</tr>
            
		<tr>
		  
		  <td><asp:TextBox ID="TohenDrisha" runat="server"  height=" 97px" width=" 378px" class="form-control" TextMode="MultiLine" dir="rtl"></asp:TextBox></td>
            <th valign="top" dir="rtl">תוכן דרישה :</th>
		  <td></td>
	   </tr>
            <tr>
            

            <td><asp:TextBox ID="NameHozer" runat="server" class="form-control"  dir="rtl"></asp:TextBox></td>
			<th valign="top" dir="rtl">שם חוזר רגולציה:</th>
			
			<td></td>
		</tr>

		<tr>

            <td><asp:TextBox ID="PerekHozer" runat="server" class="form-control"  dir="rtl"></asp:TextBox></td>
			<th valign="top" dir="rtl">פרק בחוזר :</th>
			
			<td>
			
			
			</td>
		</tr>
            <tr>
            <td><asp:TextBox ID="SeifMakor" runat="server" class="form-control"  dir="rtl"></asp:TextBox></td>
			<th valign="top" dir="rtl"> מספר סעיף:</th>
			
			<td></td>
		</tr>
            
        <tr>
		
		<td class="noheight">
		
			<table border="0" cellpadding="0" cellspacing="0">
			<tr  valign="top">
				<td>
                    
				
				
                    <asp:DropDownList ID="DateNidrahsDay" runat="server" class="form-control">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList> 
                    
					
				
				</td>
				<td>
                    <asp:DropDownList ID="DateNideashMounth" runat="server" class="form-control">
                        <asp:ListItem Value="ינואר">ינואר</asp:ListItem>
                        <asp:ListItem Value="פבואר">פבואר</asp:ListItem>
                        <asp:ListItem Value="מרץ">מרץ</asp:ListItem>
                        <asp:ListItem Value="אפריל">אפריל</asp:ListItem>
                        <asp:ListItem Value="מאי">מאי</asp:ListItem>
                        <asp:ListItem Value="יוני">יוני</asp:ListItem>
                        <asp:ListItem Value="יולי">יולי</asp:ListItem>
                        <asp:ListItem Value="אוגוסט">אוגוסט</asp:ListItem>
                        <asp:ListItem Value="ספטמבר">ספטמבר</asp:ListItem>
                        <asp:ListItem Value="אוקטובר">אוקטובר</asp:ListItem>
                        <asp:ListItem Value="נובמבר">נובמבר</asp:ListItem>
                        <asp:ListItem Value="דצמבר">דצמבר</asp:ListItem>
                    </asp:DropDownList>

				
				</td>
				<td>
                    <asp:DropDownList ID="DateNidrashYear" runat="server" class="form-control">
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>

					
					
					
				</td>
				<td><a href=""  id="date-pick"><img src="images/forms/icon_calendar.jpg"   alt="" /></a></td>
			</tr>
			</table>
		
		</td>
                <th valign="top" dir="rtl">מועד יישום נדרש לפי הרגולציה:</th>
		<td></td>
	</tr>
           <tr>
		
		<td class="noheight">
		
			<table border="0" cellpadding="0" cellspacing="0">
			<tr  valign="top">
				<td>

                    <asp:DropDownList ID="DateNetuhnanDay" runat="server" class="form-control">

                    <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList> 
				
				</td>
				<td>
					<asp:DropDownList ID="DateMetuhnanMonth" runat="server" class="form-control">
                        <asp:ListItem Value="ינואר">ינואר</asp:ListItem>
                        <asp:ListItem Value="פבואר">פבואר</asp:ListItem>
                        <asp:ListItem Value="מרץ">מרץ</asp:ListItem>
                        <asp:ListItem Value="אפריל">אפריל</asp:ListItem>
                        <asp:ListItem Value="מאי">מאי</asp:ListItem>
                        <asp:ListItem Value="יוני">יוני</asp:ListItem>
                        <asp:ListItem Value="יולי">יולי</asp:ListItem>
                        <asp:ListItem Value="אוגוסט">אוגוסט</asp:ListItem>
                        <asp:ListItem Value="ספטמבר">ספטמבר</asp:ListItem>
                        <asp:ListItem Value="אוקטובר">אוקטובר</asp:ListItem>
                        <asp:ListItem Value="נובמבר">נובמבר</asp:ListItem>
                        <asp:ListItem Value="דצמבר">דצמבר</asp:ListItem>
                    </asp:DropDownList>
				</td>
				<td>
					<asp:DropDownList ID="DateMetuhnanYear" runat="server" class="form-control">
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
					
				</td>
				<td><a href=""  id="date-pick"><img src="images/forms/icon_calendar.jpg"   alt="" /></a></td>
			</tr>
			</table>
		
		</td>
                <th valign="top" dir="rtl">מועד מתוכנן ליישום בארגון:</th>
		<td></td>
	</tr> 
        <tr>
            
           <td >
            
                <asp:CheckBox ID="CheckBox1" runat="server" Text="נדרש ליישום בארגון" Font-Bold="True" Font-Italic="True"  Font-Names="Aharoni" Font-Size="Medium" calss="takin" ForeColor="White" CssClass="input-group-addon" />
     
               
                        </td>
		</tr>
                 <tr>
            <td><asp:TextBox ID="AlotHafara" runat="server" class="form-control"  dir="rtl"></asp:TextBox>
                <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" dir="rtl">
                    <asp:ListItem>שקל חדש</asp:ListItem>
                    <asp:ListItem>דולר</asp:ListItem>
                    <asp:ListItem>יורו</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>

            </td>
			<th valign="top" dir="rtl"> עלות הפרת הדרישה: </th>
			
			<td></td>
		</tr>
            
            
		<tr>
            
		<td>	
            <asp:DropDownList ID="RamatKoshi" runat="server" CssClass="form-control" dir="rtl" >
            
                        <asp:ListItem>קל</asp:ListItem>
                        <asp:ListItem>בינוני</asp:ListItem>
                        <asp:ListItem>קשה</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
         
		
		</td>
            <th valign="top" dir="rtl">רמת קושי ליישום :</th>
		<td></td>
		</tr>
  
          <tr>  
		<td>	
        <asp:DropDownList ID="AhraiBairgon" runat="server"   CssClass="form-control" DataSourceID="Worker" DataTextField="Name_Worker" DataValueField="Name_Worker" dir="rtl"></asp:DropDownList>
		
		</td>
            <th valign="top" dir="rtl">אחראי ליישום בארגון:</th>
		<td></td>
		</tr> 
            
            <tr>
           <td>
              
                <asp:CheckBox ID="CheckBox3" runat="server" Text="תקין" Font-Bold="True" Font-Italic="True"  Font-Names="Aharoni" Font-Size="Medium" calss="takin" ForeColor="White" CssClass="input-group-addon" />

              
           </td>
                <th valign="top" dir="rtl">אחראי ליישום בארגון:</th>
		</tr>
    <tr>
		
		<td>	
		<asp:DropDownList ID="SeifHok" runat="server" class="form-control" DataSourceID="Hok" DataTextField="NameRole" DataValueField="NameRole" dir="rtl" ></asp:DropDownList>
		</td>
            <th valign="top" dir="rtl">אחראי ליישום בארגון:</th>
		<td></td>
		</tr>
    <tr>
		
		<td>	
		<asp:DropDownList ID="SeifTakanot" runat="server" class="form-control" DataSourceID="takana" DataTextField="NameTakana" DataValueField="NameTakana" dir="rtl"></asp:DropDownList>
		</td>
            <th valign="top" dir="rtl">סעיפי תקנות הקשורים לדרישה זו:  </th>
		<td>
            <asp:SqlDataSource ID="Worker" runat="server" ConnectionString="<%$ ConnectionStrings:ICConnectionString %>" SelectCommand="SELECT [Name_Worker] FROM [AddWorker]"></asp:SqlDataSource>
        </td>
		</tr>
    <tr>
		
		<td>	
		<asp:DropDownList ID="KisurHahraot" runat="server" class="form-control" DataSourceID="Hahraa" DataTextField="Name_hahraa" DataValueField="Name_hahraa" dir="rtl"></asp:DropDownList>
		</td>
            <th valign="top" dir="rtl">קישור הכרעות עקרוניות :</th>
		<td></td>
		</tr>
    <tr>
		
		<td>	
		<asp:DropDownList ID="IkareHanidrash" runat="server" class="form-control" DataSourceID="Mishpatit" DataTextField="drisha_Lefi_parshanot_mishpatit" DataValueField="drisha_Lefi_parshanot_mishpatit" dir="rtl"></asp:DropDownList>
		</td>
            <th valign="top" dir="rtl">עיקרי הנדרש-לפי יעוץ משפטי:</th>
		<td></td>
		</tr>
    <tr>
		
		<td>	
		<asp:DropDownList ID="MekorParshanot" runat="server" class="form-control" DataSourceID="Worker" DataTextField="Name_Worker" DataValueField="Name_Worker" dir="rtl"></asp:DropDownList>
		</td>
            <th valign="top" dir="rtl">מקור פרשנות משפטית:</th>
		<td></td>
		</tr>
    <tr>
		
		<td>	
	<asp:DropDownList ID="BhiratSogHatraot" runat="server" class="form-control" DataSourceID="Alret" DataTextField="Name_alret" DataValueField="Name_alret" dir="rtl"></asp:DropDownList>
		</td>
            <th valign="top" dir="rtl">בחירת סוג התראות:</th>
		<td></td>
		</tr>
    <tr>
		
		<td>	
	<asp:DropDownList ID="KisurBakarot" runat="server" class="form-control" DataSourceID="Bakara" DataTextField="Name_Bakara" DataValueField="Name_Bakara" dir="rtl"></asp:DropDownList>
		</td>
            <th valign="top" dir="rtl">קישור בקרות לדרישה זו:</th>
		<td></td>
		</tr>

            
		
  
	
	
	
	
	<tr>
		<th> 
			<asp:Button ID="Button1" runat="server" Text="הצג נתונים" class="btn btn-default"   />
            
            
            &nbsp;</th>
		<td valign="top">
            

			<asp:Button ID="Submit" runat="server" Text="עדכן נתונים" class="btn btn-default" OnClick="Submit_Click"   />
		</td>
		<td></td>
	</tr>
    <tr>
           <td>
              
                <asp:CheckBox ID="CheckBox2" runat="server" Text="לעבור לדף בקרה" Font-Bold="True" Font-Italic="True" ForeColor="#3366FF" Font-Names="Aharoni" Font-Size="Medium" class="input-group-addon" />

              
           </td>
		</tr>
	</table>
	<!-- end id-form  -->

	</td>
	
</tr>
<tr>

<td></td>
</tr>
</table>
 
<div class="clear"></div>
 

</div>
<!--  end content-table-inner  -->
</td>
<td id="tbl-border-right"></td>
</tr>
<tr>
	<th class="sized bottomleft" style="height: 15px"></th>
	<td id="tbl-border-bottom" class="auto-style2"></td>
	<th class="sized bottomright" style="height: 15px"></th>
</tr>
</table>









 





<div class="clear">&nbsp;</div>

</div>
<!--  end content -->
<div class="clear">&nbsp;</div>
</div>
<!--  end content-outer -->

 

<div class="clear">&nbsp;</div>
    
        <div id="footer">
	        <dv id="footer-left">
	            . <a href=""></a></dv>
	<!--  end footer-left -->
	<div class="clear">&nbsp;</div>
            <asp:SqlDataSource ID="Hok" runat="server" ConnectionString="<%$ ConnectionStrings:ICConnectionString %>" SelectCommand="SELECT [NameRole] FROM [AddSettingRole]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="takana" runat="server" ConnectionString="<%$ ConnectionStrings:ICConnectionString %>" SelectCommand="SELECT [NameTakana] FROM [AddTakana]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="Hahraa" runat="server" ConnectionString="<%$ ConnectionStrings:ICConnectionString %>" SelectCommand="SELECT [Name_hahraa] FROM [AddHahraaEkronit]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="Mishpatit" runat="server" ConnectionString="<%$ ConnectionStrings:ICConnectionString %>" SelectCommand="SELECT [drisha_Lefi_parshanot_mishpatit] FROM [HazanatDrishaLefiParshanutMishpatit]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="Alret" runat="server" ConnectionString="<%$ ConnectionStrings:ICConnectionString %>" SelectCommand="SELECT [Name_alret] FROM [SettingTypeAlrets]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="Bakara" runat="server" ConnectionString="<%$ ConnectionStrings:ICConnectionString %>" SelectCommand="SELECT [Name_Bakara] FROM [AddBakaraLemagar]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ICConnectionString %>" DeleteCommand="DELETE FROM [AddRegulation] WHERE [Id] = @original_Id AND (([Name_hozer_reg] = @original_Name_hozer_reg) OR ([Name_hozer_reg] IS NULL AND @original_Name_hozer_reg IS NULL)) AND (([perek_bahozher] = @original_perek_bahozher) OR ([perek_bahozher] IS NULL AND @original_perek_bahozher IS NULL)) AND (([number_seif_bahazor] = @original_number_seif_bahazor) OR ([number_seif_bahazor] IS NULL AND @original_number_seif_bahazor IS NULL)) AND (([Name_drisha] = @original_Name_drisha) OR ([Name_drisha] IS NULL AND @original_Name_drisha IS NULL)) AND (([Tohen_drisha] = @original_Tohen_drisha) OR ([Tohen_drisha] IS NULL AND @original_Tohen_drisha IS NULL)) AND (([nidrash_leysum_bairgun] = @original_nidrash_leysum_bairgun) OR ([nidrash_leysum_bairgun] IS NULL AND @original_nidrash_leysum_bairgun IS NULL)) AND (([alot_hafarat_hadrisha] = @original_alot_hafarat_hadrisha) OR ([alot_hafarat_hadrisha] IS NULL AND @original_alot_hafarat_hadrisha IS NULL)) AND (([DmoedYesum] = @original_DmoedYesum) OR ([DmoedYesum] IS NULL AND @original_DmoedYesum IS NULL)) AND (([MmoedYesum] = @original_MmoedYesum) OR ([MmoedYesum] IS NULL AND @original_MmoedYesum IS NULL)) AND (([YmoedYesum] = @original_YmoedYesum) OR ([YmoedYesum] IS NULL AND @original_YmoedYesum IS NULL)) AND (([DmoetTihnun] = @original_DmoetTihnun) OR ([DmoetTihnun] IS NULL AND @original_DmoetTihnun IS NULL)) AND (([MmoedTihnun] = @original_MmoedTihnun) OR ([MmoedTihnun] IS NULL AND @original_MmoedTihnun IS NULL)) AND (([YmoedTihnun] = @original_YmoedTihnun) OR ([YmoedTihnun] IS NULL AND @original_YmoedTihnun IS NULL)) AND (([ramat_koshi] = @original_ramat_koshi) OR ([ramat_koshi] IS NULL AND @original_ramat_koshi IS NULL)) AND (([Status_nochehi] = @original_Status_nochehi) OR ([Status_nochehi] IS NULL AND @original_Status_nochehi IS NULL)) AND (([AhraiLeyisumBirgon] = @original_AhraiLeyisumBirgon) OR ([AhraiLeyisumBirgon] IS NULL AND @original_AhraiLeyisumBirgon IS NULL)) AND (([Seife_HokKshurimLedrisha] = @original_Seife_HokKshurimLedrisha) OR ([Seife_HokKshurimLedrisha] IS NULL AND @original_Seife_HokKshurimLedrisha IS NULL)) AND (([Seife_TakanotKshurimLedrisha] = @original_Seife_TakanotKshurimLedrisha) OR ([Seife_TakanotKshurimLedrisha] IS NULL AND @original_Seife_TakanotKshurimLedrisha IS NULL)) AND (([KishurHahraotEkroniut] = @original_KishurHahraotEkroniut) OR ([KishurHahraotEkroniut] IS NULL AND @original_KishurHahraotEkroniut IS NULL)) AND (([IkariHanidrashYeuzMeshpati] = @original_IkariHanidrashYeuzMeshpati) OR ([IkariHanidrashYeuzMeshpati] IS NULL AND @original_IkariHanidrashYeuzMeshpati IS NULL)) AND (([MakorParshanotMishpatit] = @original_MakorParshanotMishpatit) OR ([MakorParshanotMishpatit] IS NULL AND @original_MakorParshanotMishpatit IS NULL)) AND (([BhiratSogHatraot] = @original_BhiratSogHatraot) OR ([BhiratSogHatraot] IS NULL AND @original_BhiratSogHatraot IS NULL)) AND (([KishurBakarotLedrisha] = @original_KishurBakarotLedrisha) OR ([KishurBakarotLedrisha] IS NULL AND @original_KishurBakarotLedrisha IS NULL)) AND (([ende] = @original_ende) OR ([ende] IS NULL AND @original_ende IS NULL))" InsertCommand="INSERT INTO [AddRegulation] ([Name_hozer_reg], [perek_bahozher], [number_seif_bahazor], [Name_drisha], [Tohen_drisha], [nidrash_leysum_bairgun], [alot_hafarat_hadrisha], [DmoedYesum], [MmoedYesum], [YmoedYesum], [DmoetTihnun], [MmoedTihnun], [YmoedTihnun], [ramat_koshi], [Status_nochehi], [AhraiLeyisumBirgon], [Seife_HokKshurimLedrisha], [Seife_TakanotKshurimLedrisha], [KishurHahraotEkroniut], [IkariHanidrashYeuzMeshpati], [MakorParshanotMishpatit], [BhiratSogHatraot], [KishurBakarotLedrisha], [ende]) VALUES (@Name_hozer_reg, @perek_bahozher, @number_seif_bahazor, @Name_drisha, @Tohen_drisha, @nidrash_leysum_bairgun, @alot_hafarat_hadrisha, @DmoedYesum, @MmoedYesum, @YmoedYesum, @DmoetTihnun, @MmoedTihnun, @YmoedTihnun, @ramat_koshi, @Status_nochehi, @AhraiLeyisumBirgon, @Seife_HokKshurimLedrisha, @Seife_TakanotKshurimLedrisha, @KishurHahraotEkroniut, @IkariHanidrashYeuzMeshpati, @MakorParshanotMishpatit, @BhiratSogHatraot, @KishurBakarotLedrisha, @ende)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [AddRegulation]" UpdateCommand="UPDATE [AddRegulation] SET [Name_hozer_reg] = @Name_hozer_reg, [perek_bahozher] = @perek_bahozher, [number_seif_bahazor] = @number_seif_bahazor, [Name_drisha] = @Name_drisha, [Tohen_drisha] = @Tohen_drisha, [nidrash_leysum_bairgun] = @nidrash_leysum_bairgun, [alot_hafarat_hadrisha] = @alot_hafarat_hadrisha, [DmoedYesum] = @DmoedYesum, [MmoedYesum] = @MmoedYesum, [YmoedYesum] = @YmoedYesum, [DmoetTihnun] = @DmoetTihnun, [MmoedTihnun] = @MmoedTihnun, [YmoedTihnun] = @YmoedTihnun, [ramat_koshi] = @ramat_koshi, [Status_nochehi] = @Status_nochehi, [AhraiLeyisumBirgon] = @AhraiLeyisumBirgon, [Seife_HokKshurimLedrisha] = @Seife_HokKshurimLedrisha, [Seife_TakanotKshurimLedrisha] = @Seife_TakanotKshurimLedrisha, [KishurHahraotEkroniut] = @KishurHahraotEkroniut, [IkariHanidrashYeuzMeshpati] = @IkariHanidrashYeuzMeshpati, [MakorParshanotMishpatit] = @MakorParshanotMishpatit, [BhiratSogHatraot] = @BhiratSogHatraot, [KishurBakarotLedrisha] = @KishurBakarotLedrisha, [ende] = @ende WHERE [Id] = @original_Id AND (([Name_hozer_reg] = @original_Name_hozer_reg) OR ([Name_hozer_reg] IS NULL AND @original_Name_hozer_reg IS NULL)) AND (([perek_bahozher] = @original_perek_bahozher) OR ([perek_bahozher] IS NULL AND @original_perek_bahozher IS NULL)) AND (([number_seif_bahazor] = @original_number_seif_bahazor) OR ([number_seif_bahazor] IS NULL AND @original_number_seif_bahazor IS NULL)) AND (([Name_drisha] = @original_Name_drisha) OR ([Name_drisha] IS NULL AND @original_Name_drisha IS NULL)) AND (([Tohen_drisha] = @original_Tohen_drisha) OR ([Tohen_drisha] IS NULL AND @original_Tohen_drisha IS NULL)) AND (([nidrash_leysum_bairgun] = @original_nidrash_leysum_bairgun) OR ([nidrash_leysum_bairgun] IS NULL AND @original_nidrash_leysum_bairgun IS NULL)) AND (([alot_hafarat_hadrisha] = @original_alot_hafarat_hadrisha) OR ([alot_hafarat_hadrisha] IS NULL AND @original_alot_hafarat_hadrisha IS NULL)) AND (([DmoedYesum] = @original_DmoedYesum) OR ([DmoedYesum] IS NULL AND @original_DmoedYesum IS NULL)) AND (([MmoedYesum] = @original_MmoedYesum) OR ([MmoedYesum] IS NULL AND @original_MmoedYesum IS NULL)) AND (([YmoedYesum] = @original_YmoedYesum) OR ([YmoedYesum] IS NULL AND @original_YmoedYesum IS NULL)) AND (([DmoetTihnun] = @original_DmoetTihnun) OR ([DmoetTihnun] IS NULL AND @original_DmoetTihnun IS NULL)) AND (([MmoedTihnun] = @original_MmoedTihnun) OR ([MmoedTihnun] IS NULL AND @original_MmoedTihnun IS NULL)) AND (([YmoedTihnun] = @original_YmoedTihnun) OR ([YmoedTihnun] IS NULL AND @original_YmoedTihnun IS NULL)) AND (([ramat_koshi] = @original_ramat_koshi) OR ([ramat_koshi] IS NULL AND @original_ramat_koshi IS NULL)) AND (([Status_nochehi] = @original_Status_nochehi) OR ([Status_nochehi] IS NULL AND @original_Status_nochehi IS NULL)) AND (([AhraiLeyisumBirgon] = @original_AhraiLeyisumBirgon) OR ([AhraiLeyisumBirgon] IS NULL AND @original_AhraiLeyisumBirgon IS NULL)) AND (([Seife_HokKshurimLedrisha] = @original_Seife_HokKshurimLedrisha) OR ([Seife_HokKshurimLedrisha] IS NULL AND @original_Seife_HokKshurimLedrisha IS NULL)) AND (([Seife_TakanotKshurimLedrisha] = @original_Seife_TakanotKshurimLedrisha) OR ([Seife_TakanotKshurimLedrisha] IS NULL AND @original_Seife_TakanotKshurimLedrisha IS NULL)) AND (([KishurHahraotEkroniut] = @original_KishurHahraotEkroniut) OR ([KishurHahraotEkroniut] IS NULL AND @original_KishurHahraotEkroniut IS NULL)) AND (([IkariHanidrashYeuzMeshpati] = @original_IkariHanidrashYeuzMeshpati) OR ([IkariHanidrashYeuzMeshpati] IS NULL AND @original_IkariHanidrashYeuzMeshpati IS NULL)) AND (([MakorParshanotMishpatit] = @original_MakorParshanotMishpatit) OR ([MakorParshanotMishpatit] IS NULL AND @original_MakorParshanotMishpatit IS NULL)) AND (([BhiratSogHatraot] = @original_BhiratSogHatraot) OR ([BhiratSogHatraot] IS NULL AND @original_BhiratSogHatraot IS NULL)) AND (([KishurBakarotLedrisha] = @original_KishurBakarotLedrisha) OR ([KishurBakarotLedrisha] IS NULL AND @original_KishurBakarotLedrisha IS NULL)) AND (([ende] = @original_ende) OR ([ende] IS NULL AND @original_ende IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_Name_hozer_reg" Type="String" />
                    <asp:Parameter Name="original_perek_bahozher" Type="String" />
                    <asp:Parameter Name="original_number_seif_bahazor" Type="Int32" />
                    <asp:Parameter Name="original_Name_drisha" Type="String" />
                    <asp:Parameter Name="original_Tohen_drisha" Type="String" />
                    <asp:Parameter Name="original_nidrash_leysum_bairgun" Type="Boolean" />
                    <asp:Parameter Name="original_alot_hafarat_hadrisha" Type="Int32" />
                    <asp:Parameter Name="original_DmoedYesum" Type="Int32" />
                    <asp:Parameter Name="original_MmoedYesum" Type="String" />
                    <asp:Parameter Name="original_YmoedYesum" Type="Int32" />
                    <asp:Parameter Name="original_DmoetTihnun" Type="Int32" />
                    <asp:Parameter Name="original_MmoedTihnun" Type="String" />
                    <asp:Parameter Name="original_YmoedTihnun" Type="Int32" />
                    <asp:Parameter Name="original_ramat_koshi" Type="String" />
                    <asp:Parameter Name="original_Status_nochehi" Type="Boolean" />
                    <asp:Parameter Name="original_AhraiLeyisumBirgon" Type="String" />
                    <asp:Parameter Name="original_Seife_HokKshurimLedrisha" Type="String" />
                    <asp:Parameter Name="original_Seife_TakanotKshurimLedrisha" Type="String" />
                    <asp:Parameter Name="original_KishurHahraotEkroniut" Type="String" />
                    <asp:Parameter Name="original_IkariHanidrashYeuzMeshpati" Type="String" />
                    <asp:Parameter Name="original_MakorParshanotMishpatit" Type="String" />
                    <asp:Parameter Name="original_BhiratSogHatraot" Type="String" />
                    <asp:Parameter Name="original_KishurBakarotLedrisha" Type="String" />
                    <asp:Parameter Name="original_ende" Type="Boolean" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name_hozer_reg" Type="String" />
                    <asp:Parameter Name="perek_bahozher" Type="String" />
                    <asp:Parameter Name="number_seif_bahazor" Type="Int32" />
                    <asp:Parameter Name="Name_drisha" Type="String" />
                    <asp:Parameter Name="Tohen_drisha" Type="String" />
                    <asp:Parameter Name="nidrash_leysum_bairgun" Type="Boolean" />
                    <asp:Parameter Name="alot_hafarat_hadrisha" Type="Int32" />
                    <asp:Parameter Name="DmoedYesum" Type="Int32" />
                    <asp:Parameter Name="MmoedYesum" Type="String" />
                    <asp:Parameter Name="YmoedYesum" Type="Int32" />
                    <asp:Parameter Name="DmoetTihnun" Type="Int32" />
                    <asp:Parameter Name="MmoedTihnun" Type="String" />
                    <asp:Parameter Name="YmoedTihnun" Type="Int32" />
                    <asp:Parameter Name="ramat_koshi" Type="String" />
                    <asp:Parameter Name="Status_nochehi" Type="Boolean" />
                    <asp:Parameter Name="AhraiLeyisumBirgon" Type="String" />
                    <asp:Parameter Name="Seife_HokKshurimLedrisha" Type="String" />
                    <asp:Parameter Name="Seife_TakanotKshurimLedrisha" Type="String" />
                    <asp:Parameter Name="KishurHahraotEkroniut" Type="String" />
                    <asp:Parameter Name="IkariHanidrashYeuzMeshpati" Type="String" />
                    <asp:Parameter Name="MakorParshanotMishpatit" Type="String" />
                    <asp:Parameter Name="BhiratSogHatraot" Type="String" />
                    <asp:Parameter Name="KishurBakarotLedrisha" Type="String" />
                    <asp:Parameter Name="ende" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name_hozer_reg" Type="String" />
                    <asp:Parameter Name="perek_bahozher" Type="String" />
                    <asp:Parameter Name="number_seif_bahazor" Type="Int32" />
                    <asp:Parameter Name="Name_drisha" Type="String" />
                    <asp:Parameter Name="Tohen_drisha" Type="String" />
                    <asp:Parameter Name="nidrash_leysum_bairgun" Type="Boolean" />
                    <asp:Parameter Name="alot_hafarat_hadrisha" Type="Int32" />
                    <asp:Parameter Name="DmoedYesum" Type="Int32" />
                    <asp:Parameter Name="MmoedYesum" Type="String" />
                    <asp:Parameter Name="YmoedYesum" Type="Int32" />
                    <asp:Parameter Name="DmoetTihnun" Type="Int32" />
                    <asp:Parameter Name="MmoedTihnun" Type="String" />
                    <asp:Parameter Name="YmoedTihnun" Type="Int32" />
                    <asp:Parameter Name="ramat_koshi" Type="String" />
                    <asp:Parameter Name="Status_nochehi" Type="Boolean" />
                    <asp:Parameter Name="AhraiLeyisumBirgon" Type="String" />
                    <asp:Parameter Name="Seife_HokKshurimLedrisha" Type="String" />
                    <asp:Parameter Name="Seife_TakanotKshurimLedrisha" Type="String" />
                    <asp:Parameter Name="KishurHahraotEkroniut" Type="String" />
                    <asp:Parameter Name="IkariHanidrashYeuzMeshpati" Type="String" />
                    <asp:Parameter Name="MakorParshanotMishpatit" Type="String" />
                    <asp:Parameter Name="BhiratSogHatraot" Type="String" />
                    <asp:Parameter Name="KishurBakarotLedrisha" Type="String" />
                    <asp:Parameter Name="ende" Type="Boolean" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_Name_hozer_reg" Type="String" />
                    <asp:Parameter Name="original_perek_bahozher" Type="String" />
                    <asp:Parameter Name="original_number_seif_bahazor" Type="Int32" />
                    <asp:Parameter Name="original_Name_drisha" Type="String" />
                    <asp:Parameter Name="original_Tohen_drisha" Type="String" />
                    <asp:Parameter Name="original_nidrash_leysum_bairgun" Type="Boolean" />
                    <asp:Parameter Name="original_alot_hafarat_hadrisha" Type="Int32" />
                    <asp:Parameter Name="original_DmoedYesum" Type="Int32" />
                    <asp:Parameter Name="original_MmoedYesum" Type="String" />
                    <asp:Parameter Name="original_YmoedYesum" Type="Int32" />
                    <asp:Parameter Name="original_DmoetTihnun" Type="Int32" />
                    <asp:Parameter Name="original_MmoedTihnun" Type="String" />
                    <asp:Parameter Name="original_YmoedTihnun" Type="Int32" />
                    <asp:Parameter Name="original_ramat_koshi" Type="String" />
                    <asp:Parameter Name="original_Status_nochehi" Type="Boolean" />
                    <asp:Parameter Name="original_AhraiLeyisumBirgon" Type="String" />
                    <asp:Parameter Name="original_Seife_HokKshurimLedrisha" Type="String" />
                    <asp:Parameter Name="original_Seife_TakanotKshurimLedrisha" Type="String" />
                    <asp:Parameter Name="original_KishurHahraotEkroniut" Type="String" />
                    <asp:Parameter Name="original_IkariHanidrashYeuzMeshpati" Type="String" />
                    <asp:Parameter Name="original_MakorParshanotMishpatit" Type="String" />
                    <asp:Parameter Name="original_BhiratSogHatraot" Type="String" />
                    <asp:Parameter Name="original_KishurBakarotLedrisha" Type="String" />
                    <asp:Parameter Name="original_ende" Type="Boolean" />
                </UpdateParameters>
            </asp:SqlDataSource>
</div>
        
<!-- end footer -->
    </form>
 
</body>

</html>




