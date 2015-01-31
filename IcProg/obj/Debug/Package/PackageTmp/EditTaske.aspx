<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditTaske.aspx.cs" Inherits="IcProg.EditTaske" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>אתר ארגון רגולציה</title>
<link rel="stylesheet" href="css/screen.css" type="text/css" media="screen" title="default" />
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css"  />
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
<script type="text/javascript">
  /*  $(function () {
        $('input').checkBox();
        $('#toggle-all').click(function () {
            $('#toggle-all').toggleClass('toggle-checked');
            $('#mainform input[type=checkbox]').checkBox('toggle');
            return false;
        });
    });*/
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
	<a href=""><img src="IC.png" width="156" height="40" alt="" /></a>
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
		<td><input type="text" value="Search" onblur="if (this.value=='') { this.value='Search'; }" onfocus="if (this.value=='Search') { this.value=''; }" class="top-search-inp" /></td>
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
            <ul class="select"><li><a href="#nogo"><b>מנהל מערכת</b><!--[if IE 7]><!--></a><!--<![endif]-->
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
            <ul class="select"><li><b>דוחות נוספים</b><!--[if IE 7]><!--><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
	<%--	<div class="select_sub">
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
            <ul class="current"><li><a href="#nogo"><b>משימה</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub show">
			<ul class="sub">
				<li><a href="TableTask.aspx">דו"ח משימה</a></li>
				
				<li><a href="#nogo">דוח משימה</a></li>
                <li class="sub_show"><a href="taskee.aspx">הוספת משימות</a></li>
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
				<li><a href="TableBakar.aspx">דוח בקרה</a></li>
				
				<li><a href="#nogo">דוח בקרות עם הפניה למשימות</a></li>
                <li><a href="Bakar.aspx">הוספת בקרה</a></li>
			</ul>
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
            
		<ul class="select"><li><a href="#nogo"><b>רגולציה</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub">
			<ul class="sub">
				<li><a href="TableReg.aspx">דוח רגולציה</a></li>
				
				<li><a href="#nogo">עריכת רגולציה </a></li>
                <li><a href="regulaziaa.aspx">הוספת רגולציה</a></li>
			 
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

<div id="page-heading"><h2>עדכון משימה</h2></div>

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
            

            <td><asp:TextBox ID="NameTaskY" runat="server" class="form-control" dir="rtl"></asp:TextBox></td>
			<th valign="top">:שם הבקרה ליחוס</th>
			
			<td></td>
		</tr>
		<tr>

            <td><asp:TextBox ID="NameTask" runat="server" class="form-control" dir="rtl"></asp:TextBox></td>
			<th valign="top"> :שם משימה</th>
			
			<td>
			
			
			</td>
		</tr>
            
             
        <tr>
		    
		  <td><asp:TextBox ID="TohenTask" runat="server" height=" 97px" width=" 378px" class="form-control" TextMode="MultiLine" dir="rtl"></asp:TextBox></td>
            <th valign="top">:תאור מפורט</th>
		  <td></td>
	   </tr>
            
            <tr>
		
		<td class="noheight">
		
			<table border="0" cellpadding="0" cellspacing="0">
			<tr  valign="top">
				<td>
                    
				
				
                    <asp:DropDownList ID="DateptihaDay" runat="server" class="form-control">
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
                    <asp:DropDownList ID="DateptihaMounth" runat="server" class="form-control">
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
                    <asp:DropDownList ID="DateptihaYear" runat="server" class="form-control">
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
                <th valign="top">:מועד פתיחה</th>
		<td></td>
	</tr>
            <tr>
		
		<td class="noheight">
		
			<table border="0" cellpadding="0" cellspacing="0">
			<tr  valign="top">
				<td>

                    <asp:DropDownList ID="DateseyumDay" runat="server" class="form-control">

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
					<asp:DropDownList ID="DateseyumMonth" runat="server" class="form-control">
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
					<asp:DropDownList ID="DateseyumYear" runat="server" class="form-control">
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
                <th valign="top">:מועד לסיום</th>
		<td></td>
	</tr>
		
  
           
            
            <tr>
           <td>
              
                
               
               <asp:DropDownList ID="TypeTaske" runat="server" class="form-control" dir="rtl">
                   <asp:ListItem>חד פעמי</asp:ListItem>
                   <asp:ListItem>אחת לתקופה</asp:ListItem>
               </asp:DropDownList>
              
           </td>
                <th valign="top">:סוג משימה</th>
		</tr>
    <tr>
		
		<td>	
		<asp:DropDownList ID="tadirut" runat="server" class="form-control" dir="rtl">
            <asp:ListItem Value="יומי">יומי</asp:ListItem>
            <asp:ListItem>שבועי</asp:ListItem>
            <asp:ListItem>חודשי</asp:ListItem>
            <asp:ListItem>רבעוני</asp:ListItem>
            </asp:DropDownList>
		</td>
            <th valign="top">:תדירות</th>
		<td></td>
		</tr>
    <tr>
		
		<td>	
		<asp:DropDownList ID="AhraiLebiua" runat="server" class="form-control" DataSourceID="Worker" DataTextField="Name_Worker" DataValueField="Name_Worker" dir="rtl"></asp:DropDownList>
		</td>
            <th valign="top">אחריות לביצוע  </th>
		<td></td>
		</tr>
    <tr>
		
		<td>	
		<asp:DropDownList ID="HagdaratProfilLebizua" runat="server" class="form-control" DataSourceID="Hatraot" DataTextField="Name_alret" DataValueField="Name_alret" dir="rtl"></asp:DropDownList>
		</td>
            <th valign="top">:הגדרת פרופיל התרעות</th>
		<td></td>
		</tr>
            <tr>
            <td><asp:TextBox ID="AhuzLebizua" runat="server" class="form-control" dir="rtl"></asp:TextBox>%</td>
			<th valign="top"> :אחוז ביצוע </th>
			
			<td></td>
		</tr>
            <tr>
           <td>
              
                
               
                
              
               <asp:DropDownList ID="makorParshanot" runat="server" class="form-control" dir="rtl">
                   <asp:ListItem>בוצע</asp:ListItem>
                   <asp:ListItem>לא בוצע</asp:ListItem>
                   <asp:ListItem>בוצע חלקית</asp:ListItem>
               </asp:DropDownList>

           </td>
                     <th valign="top">:מקור פרשנות משפטית</th>
		<td></td>
		</tr>
    

            
		
  <tr>
		    
		  <td><asp:TextBox ID="TextBoxComments" runat="server" height=" 97px" width=" 378px" class="form-control" TextMode="MultiLine" dir="rtl"></asp:TextBox></td>
            <th valign="top">:הערות</th>
		  <td></td>
	   </tr>
	
	
	
	
	<tr>
		<th> 
			 
            
            
            &nbsp;</th>
		<td valign="top">
            <asp:Button ID="Submit" runat="server" Text="הכנס" class="btn btn-default" OnClick="Submit_Click"  />
			
		</td>
		<td></td>
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
    
<!-- start footer -->         
<div id="footer">
	<!--  start footer-left -->
	
	<!--  end footer-left -->
	<div class="clear">&nbsp;</div>
    <asp:SqlDataSource ID="Worker" runat="server" ConnectionString="<%$ ConnectionStrings:ICConnectionString %>" SelectCommand="SELECT [Name_Worker] FROM [AddWorker]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="Hatraot" runat="server" ConnectionString="<%$ ConnectionStrings:ICConnectionString %>" SelectCommand="SELECT [Name_alret] FROM [SettingTypeAlrets]"></asp:SqlDataSource>
</div>
<!-- end footer -->
 </form>
</body>
</html>
