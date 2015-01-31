<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regulaziaa.aspx.cs" Inherits="IcProg.regulaziaa" %>

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
		
		<ul class="select" ><li><b>דוחות נוספים</b><!--[if IE 7]><!--></><!--<![endif]-->
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
				
				<li><a href="#nogo">עריכת משימות</a></li>
                <li><a href="taskee.aspx">הוספת משימות</a></li>
			 
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
				
				<li><a href="#nogo">עריכת בקרה</a></li>
                <li><a href="Bakar.aspx">הוספת בקרה</a></li>
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
				
				<li><a href="#nogo">עריכת רגולציה</a></li>
                <li class="sub_show"><a href="regulaziaa.aspx">הוספת רגולציה</a></li>
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
<div id="page-heading"><h3>הוספת רגולציה</h3></div>
        <ul class="nav nav-tabs">
            <li role="presentation"><a >הוספת משימה</a></li>
 
  <li role="presentation"><a >הוספת בקרה</a></li>
             <li role="presentation" class="active"><a >הוספת רגולוציה</a></li>
  
</ul>



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
                 <td></td>
			<th valign="top"> :שם הדרישה </th>
			
			
		</tr>
            <tr>
		  
		  <td><asp:TextBox ID="TohenDrisha" runat="server"  height=" 97px" width=" 378px" class="form-control" TextMode="MultiLine" dir="rtl"></asp:TextBox></td>
             <td></td>
            <th valign="top">:תוכן הדרישה</th>
		 
	   </tr>
            
		<tr>
            

            <td><asp:TextBox ID="NameHozer" runat="server" class="form-control"  dir="rtl"></asp:TextBox></td>
            <td></td>
			<th valign="top">:שם חוזר רגולציה</th>
			
			
		</tr>
		<tr>

            <td><asp:TextBox ID="PerekHozer" runat="server" class="form-control"  dir="rtl"></asp:TextBox></td>
            <td>
			
			
			</td>
			<th valign="top"> :פרק בחוזר</th>
			
			
		</tr>
            <tr>
            <td><asp:TextBox ID="SeifMakor" runat="server" class="form-control"  dir="rtl"></asp:TextBox></td>
                <td></td>
			<th valign="top"> :מספר סעיף במקור </th>
			
			
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
                <td></td>
                <th valign="top">:מועד יישום נדרש לפי הרגולציה</th>
		
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
                <td></td>
                <th valign="top">:מועד מתוכנן ליישום בארגון</th>
		
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
                     <td></td>
			<th valign="top"> :עלות הפרת הדרישה </th>
			
			
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
            <td></td>
            <th valign="top">: רמת קושי ליישום</th>
		
		</tr>
  
          <tr>  
		<td>	
        <asp:DropDownList ID="AhraiBairgon" runat="server"   CssClass="form-control" DataSourceID="Worker" DataTextField="Name_Worker" DataValueField="Name_Worker" dir="rtl"></asp:DropDownList>
		
		</td>
              <td></td>
            <th valign="top">:אחראי ליישום בארגון</th>
		
		</tr> 
            
            <tr>
           <td>
              
                <asp:CheckBox ID="CheckBox3" runat="server" Text="תקין" Font-Bold="True" Font-Italic="True"  Font-Names="Aharoni" Font-Size="Medium" calss="takin" ForeColor="White" CssClass="input-group-addon" />

              
           </td>
                <td></td>
                <br />
                <th valign="top">:סטטוס נוכחי</th>
		</tr>
    <tr>
		
		<td>	
		<asp:DropDownList ID="SeifHok" runat="server" class="form-control" DataSourceID="Hok" DataTextField="NameRole" DataValueField="NameRole" dir="rtl"></asp:DropDownList>
		</td>
        <td></td>
            <th valign="top">:סעיפי חוק הקשורים לדרישה זו</th>
		
		</tr>
    <tr>
		
		<td>	
		<asp:DropDownList ID="SeifTakanot" runat="server" class="form-control" DataSourceID="takana" DataTextField="NameTakana" DataValueField="NameTakana" dir="rtl"></asp:DropDownList>
		</td>
        <td>
            <asp:SqlDataSource ID="Worker" runat="server" ConnectionString="<%$ ConnectionStrings:ICConnectionString %>" SelectCommand="SELECT [Name_Worker] FROM [AddWorker]"></asp:SqlDataSource>
        </td>
            <th valign="top">סעיפי תקנות הקשורים לדרישה זו  </th>
		
		</tr>
    <tr>
		
		<td>	
		<asp:DropDownList ID="KisurHahraot" runat="server" class="form-control" DataSourceID="Hahraa" DataTextField="Name_hahraa" DataValueField="Name_hahraa" dir="rtl"></asp:DropDownList>
		</td>
        <td></td>
            <th valign="top">:קישור הכרעות עקרוניות</th>
		
		</tr>
    <tr>
		
		<td>	
		<asp:DropDownList ID="IkareHanidrash" runat="server" class="form-control" DataSourceID="Mishpatit" DataTextField="drisha_Lefi_parshanot_mishpatit" DataValueField="drisha_Lefi_parshanot_mishpatit" dir="rtl"></asp:DropDownList>
		</td>
        <td></td>
            <th valign="top">עיקרי הנדרש-לפי יעוץ משפטי</th>
		
		</tr>
    <tr>
		
		<td>	
		<asp:DropDownList ID="MekorParshanot" runat="server" class="form-control" DataSourceID="Worker" DataTextField="Name_Worker" DataValueField="Name_Worker" dir="rtl"></asp:DropDownList>
		</td>
        <td></td>

            <th valign="top">:מקור פרשנות משפטית</th>
		
		</tr>
    <tr>
		
		<td>	
	<asp:DropDownList ID="BhiratSogHatraot" runat="server" class="form-control" DataSourceID="Alret" DataTextField="Name_alret" DataValueField="Name_alret" dir="rtl"></asp:DropDownList>
		</td>
        <td></td>
            <th valign="top">בחירת סוג התראות</th>
		
		</tr>
    <tr>
		
		<td>	
	<asp:DropDownList ID="KisurBakarot" runat="server" class="form-control" DataSourceID="Bakara" DataTextField="Name_Bakara" DataValueField="Name_Bakara" dir="rtl"></asp:DropDownList>
		</td>
        <td></td>
            <th valign="top">:קישור בקרות לדרישה זו</th>
		
		</tr>

            
		
  
	
	
	
	
	<tr>
		<th> 
			<asp:Button ID="Button1" runat="server" Text="נקה" class="btn btn-default" OnClick="Button1_Click"  />
            
            
            &nbsp;</th>
		<td valign="top">
            

			<asp:Button ID="Submit" runat="server" Text="הכנס" class="btn btn-default" OnClick="Submit_Click"  />
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
</div>
<!-- end footer -->
    </form>
 
</body>

</html>




