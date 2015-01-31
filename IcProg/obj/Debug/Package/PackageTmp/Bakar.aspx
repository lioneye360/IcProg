<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bakar.aspx.cs" Inherits="IcProg.Bakar" %>


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
   /* $(function () {
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
        .auto-style3 {
            height: 38px;
        }
        .auto-style4 {
            height: 37px;
        }
        .auto-style5 {
            background: url('images/shared/corner_top_left.jpg') no-repeat;
            width: 15px;
            height: 16px;
        }
        .auto-style6 {
            background: url('images/shared/corner_top_right.jpg') no-repeat;
            width: 15px;
            height: 16px;
        }
        .auto-style8 {
            height: 50px;
        }
        .auto-style9 {
            height: 37px;
            width: 45px;
        }
        .auto-style10 {
            width: 45px;
        }
        .auto-style11 {
            height: 50px;
            width: 45px;
        }
        .auto-style12 {
            height: 88px;
        }
        .auto-style13 {
            width: 45px;
            height: 88px;
        }
        .auto-style16 {
            width: 66px;
        }
        .auto-style17 {
            height: 58px;
        }
        .auto-style18 {
            width: 45px;
            height: 58px;
        }
        </style>
</head>
<body> 
    <form id="form1" runat="server">
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
				<<li><a href="#nogo">מחיקת עובד</a></li>
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
            <ul class="current"><li><a href="#nogo"><b>בקרה</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub show">
			<ul class="sub">
				<li><a href="TableBakar.aspx">דו"ח בקרה</a></li>
				
				<li><a href="#nogo">עריכת בקרה</a></li>
                <li class="sub_show"><a href="Bakar.aspx">הוספת בקרה</a></li>
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
				<li><a href="TableReg.aspx">דו"ח רגולציה</a></li>
				
				<li><a href="#nogo">עריכת רגולציה</a></li>
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
<div id="content" >


<div id="page-heading"><h2>הוספת בקרה</h2></div>
    <ul class="nav nav-tabs">
            <li role="presentation"><a >הוספת משימה</a></li>
  <li role="presentation" class="active"><a >הוספת בקרה</a></li>
  <li role="presentation"><a >הוספת רגולציה</a></li>
            
  
</ul>

<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
<tr>
	<th rowspan="3" class="sized"><img src="images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
	<th class="auto-style5"></th>
	<td id="tbl-border-top" class="auto-style2">
        
        </td>
	<th class="auto-style6"></th>
	<th rowspan="3" class="sized"><img src="images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
</tr>
<tr>
	<td id="tbl-border-left"></td>
	<td>
	<!--  start content-table-inner -->
	<div id="content-table-inner">

	
	<table border="0" width="100%" cellpadding="0" cellspacing="0" id="doron"   >
	<tr valign="top">
	<td>
	
	
		<!--  start step-holder *********************************-->
		
        <table >
            
        </table>

		<!--  end step-holder -->
	
		<!-- start id-form -->
		<table  border="0" cellpadding="10" cellspacing="20"  id="related-activities">
            
		<tr  >
            
           

            <td class="auto-style4" ><asp:TextBox ID="NameBakar" runat="server" class="form-control" dir="rtl"></asp:TextBox></td>
            <td  class="auto-style9"></td>
            <th  valign="baseline" align="center" dir="rtl" colspan="1" rowspan="1"  >
                

               שם בקרה:</th>
            
			
			<td class="auto-style4"></td>
		</tr>
		
           
             
             
        <tr >
		  
		  <td class="alert-danger"><asp:TextBox ID="Teormeforat" runat="server" height=" 97px" width=" 378px" CssClass ="form-control" TextMode="MultiLine" dir="rtl"></asp:TextBox></td>
             <td class="auto-style10"></td>
            <th valign="top" colspan="1"  >
                <br />
                :תאור מפורט</th>
		 
	   </tr>
            
            <tr >  
		<td class="auto-style8">	
        <asp:DropDownList ID="DropDownListTypeBakar" runat="server"   CssClass="form-control" DataSourceID="TypeBakar" DataTextField="NameTypeBakar" DataValueField="NameTypeBakar" dir="rtl"></asp:DropDownList>
		
		</td>
                <td class="auto-style11"></td>
            <th valign="top" colspan="1">
                
                :סוג בקרה</th>
		
		</tr>
            <tr >
           <td class="auto-style17">
              
                <asp:CheckBox ID="CheckBox1peila" runat="server" Text="בקרה פעילה" Font-Bold="True" Font-Italic="True"  Font-Names="Aharoni" Font-Size="Medium" calss="takin" ForeColor="White"  CssClass="input-group-addon" />

              
           </td>
                <th valign="top" class="auto-style18"></th>
		</tr>
        
                 <tr>
                     <td class="auto-style12">
                          <asp:FileUpload runat="server" ID="myUpload" class="btn btn-default btn-file" AllowMultiple="True" dir="rtl"/>
                         
                     </td>
                     <td class="auto-style13"></td>
             <th colspan="2"> 
                 <br />
                  :קובץ פירוט בקרה </th>
			
			
		</tr>
            
            <tr>
		
		<td class="noheight">
		
			<table border="0" cellpadding="0" cellspacing="0">
			<tr  valign="top">
				<td>

                    <asp:DropDownList ID="DateyesuDay" runat="server" class="form-control">

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
					<asp:DropDownList ID="DateyesuMonth" runat="server" class="form-control">
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
					<asp:DropDownList ID="DateyesuYear" runat="server" class="form-control">
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
                <td class="auto-style10"></td>
                <th valign="top" colspan="1">
                    <br />
                    
                    :מועד מתוכנן ליישום </th>
		
	</tr>
		<tr>
            
		<td class="auto-style3">	
            <asp:DropDownList ID="RamatKoshibakar" runat="server" CssClass="form-control" dir="rtl" >
            
                        <asp:ListItem>קל</asp:ListItem>
                        <asp:ListItem>בינוני</asp:ListItem>
                        <asp:ListItem>קשה</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
         
		
		</td>
            <td class="auto-style10"></td>
            <th valign="top" colspan="1">
                <br />
                :רמת קושי ליישום</th>
		<td class="auto-style3"></td>
		</tr>
  
          <tr>  
		<td>	
        <asp:DropDownList ID="AhraiBairgonbakar" runat="server"   CssClass="form-control" DataSourceID="Worker" DataTextField="Name_Worker" DataValueField="Name_Worker" dir="rtl"></asp:DropDownList>
		
		</td>
              <td class="auto-style10"></td>
            <th valign="top" colspan="1" rowspan="1">
                <br />
                :אחראי ליישום בארגון</th>
		
		</tr> 
            
            <tr>
           <td>
              
                <asp:CheckBox ID="CheckBox3bakar" runat="server" Text="תקין" Font-Bold="True" Font-Italic="True"  Font-Names="Aharoni" Font-Size="Medium" calss="takin" ForeColor="White"  CssClass="input-group-addon" />

              
           </td>
                <td class="auto-style10"></td>
                <th valign="top" colspan="1">
                    <br />
                    :סטטוס נוכחי</th>
		</tr>
    <tr>
		
		<td>	
		<asp:DropDownList ID="HagdaratMesimot" runat="server" class="form-control" DataSourceID="Task" DataTextField="NameTask" DataValueField="Id" dir="rtl"></asp:DropDownList>
		</td>
        <td class="auto-style10"></td>
 <th colspan="1">

     <br />
     :הגדרה משימות לבקרות</th>
		
		</tr>
    
    
    
    
    
    

            
		
  
	
	
	
	
	<tr>
		<th> 
               <asp:Button ID="Button1" runat="server" Text="נקה" CssClass="btn btn-default" OnClick="Button1_Click"    />
            
            &nbsp;</th>
		<td valign="top" class="auto-style10">
            <asp:Button ID="Submitbakar" runat="server" Text="הכנס" CssClass="btn btn-default" OnClick="Submitbakar_Click"    />
			
			
		</td>
		<td class="auto-style16"></td>
	</tr>
    <tr>
           <td>
              
                <asp:CheckBox ID="CheckBox2bakar" runat="server" Text="לעבור לדף משימות" Font-Bold="True" Font-Italic="True" ForeColor="#3366FF" Font-Names="Aharoni" Font-Size="Medium"  CssClass="input-group-addon" />

              
           </td>
		</tr>
	</table>
	<!-- end id-form  -->

	</td>
	<td>

	<!--  start related-activities -->
	<!-- end related-activities -->

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
    <asp:SqlDataSource ID="Task" runat="server" ConnectionString="<%$ ConnectionStrings:ICConnectionString %>" SelectCommand="SELECT [NameTask], [Id] FROM [AddTaskToController]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="TypeBakar" runat="server" ConnectionString="<%$ ConnectionStrings:ICConnectionString %>" SelectCommand="SELECT [NameTypeBakar] FROM [TypeBakar]"></asp:SqlDataSource>
</div>
        <h4> create by doron maman</h4>
<!-- end footer -->
    </form>
 
</body>
</html>




    
