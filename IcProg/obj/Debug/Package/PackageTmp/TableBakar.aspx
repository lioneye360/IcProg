<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TableBakar.aspx.cs" Inherits="IcProg.TableBakar" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>אתר ארגון רגולציה</title>
<link rel="stylesheet" href="css/screen.css" type="text/css" media="screen" title="default" />
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css"  />
 <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"  />
   <%-- <link rel="stylesheet" href="css/bootstrap.css" type="text/css"  />
 <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"  />--%>
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
    $(function () {
        $('input').checkBox();
        $('#toggle-all').click(function () {
            $('#toggle-all').toggleClass('toggle-checked');
            $('#mainform input[type=checkbox]').checkBox('toggle');
            return false;
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
            image: "images/forms/choose-file.gif",
            imageheight: 21,
            imagewidth: 78,
            width: 310
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
</head>
<body> 
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
		<td><input type="text" value="Search" onblur="if (this.value=='') { this.value='Search'; }" onfocus="if (this.value=='Search') { this.value=''; }" class="top-search-inp" /></td>
		<td>
		<select  class="styledselect">
			<option value=""> הכל</option>
			<option value=""> דוחות שעונים</option>
			<option value=""> רגולציה</option>
			<option value="">בקרה</option>
			<option value="">משימות</option>
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
		     <ul class="select"><li><a href="#nogo"><b>משימות</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub">
			<ul class="sub">
				<li><a href="Bakar.aspx">דו"ח משימות</a></li>
				
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
                <li class="sub_show"><a href="TableBakar.aspx">דו"ח בקרה</a></li>
							
				<li><a href="#nogo">עריכת בקרה</a></li>
                <li><a href="Bakar.aspx"> הוספת בקרה </a></li>	
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
 
<!-- start content-outer ........................................................................................................................START -->
<div id="content-outer">
<!-- start content -->
<div id="content">

	<!--  start page-heading -->
	<div id="page-heading">
		<h1>דו"ח בקרה</h1>
	</div>
	<!-- end page-heading -->

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
		<!--  start content-table-inner ...................................................................... START -->
		<div id="content-table-inner">
		
			<!--  start table-content  -->
			<div id="table-content">
			
				<!--  start message-yellow -->
				<div id="message-yellow">
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td class="yellow-left">דו"ח התרעות <a href="">הכנס לדוח התרעות</a></td>
					<td class="yellow-right"><a class="close-yellow"><img src="images/table/icon_close_yellow.gif"   alt="" /></a></td>
				</tr>
				</table>
				</div>
				<!--  end message-yellow -->
				
				<!--  start message-red -->
				<div id="message-red">
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td class="red-left">שגיאה <a href="">תנסה להכנס שוב</a></td>
					<td class="red-right"><a class="close-red"><img src="images/table/icon_close_red.gif"   alt="" /></a></td>
				</tr>
				</table>
				</div>
				<!--  end message-red -->
				
				<!--  start message-blue -->
				<div id="message-blue">
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td class="blue-left">ברוך הבא <a href="">להסתכל בחשבונך</a> </td>
					<td class="blue-right"><a class="close-blue"><img src="images/table/icon_close_blue.gif"   alt="" /></a></td>
				</tr>
				</table>
				</div>
				<!--  end message-blue -->
			
				<!--  start message-green -->
				<div id="message-green">
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td class="green-left">טבלת הדוח <a href="">עריכת הדף.</a></td>
					<td class="green-right"><a class="close-green"><img src="images/table/icon_close_green.gif"   alt="" /></a></td>
				</tr>
				</table>
				</div>
				<!--  end message-green -->
		
		 
				<!--  start product-table ..................................................................................... -->
				<form id="mainform" runat="server">
				<table border="0" width="100%" cellpadding="0" cellspacing="0" id="product-table">
				
				
				
				
				
				
				
				    <tr>
                        <td dir="rtl" >
                            <br />
                            <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" AllowSorting="True" DataKeyNames="Id" OnRowCommand="GridView1_RowCommand" AllowCustomPaging="True" >
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="מספר מזהה" SortExpression="Id" InsertVisible="False" ReadOnly="True" >
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Name_Bakara" HeaderText="שם בקרה" SortExpression="Name_Bakara" >
                                    <HeaderStyle BorderStyle="Groove" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DateyesuMonth" HeaderText="חודש ביישום" SortExpression="DateyesuMonth"   >
                                    <HeaderStyle BorderStyle="Groove" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DateyesuYear" HeaderText="שנה ביישום" SortExpression="DateyesuYear" >
                                    <HeaderStyle BorderStyle="Groove" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Type_Bakra" HeaderText="סוג בקרה" SortExpression="Type_Bakra" >
                                    <HeaderStyle BorderStyle="Groove" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Ahrai_memone" HeaderText="אחראי ממונה" SortExpression="Ahrai_memone" >
                                    <HeaderStyle BorderStyle="Groove" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:CheckBoxField DataField="Status_nohehi" HeaderText="תקין" SortExpression="Status_nohehi"   >
                                    <FooterStyle HorizontalAlign="Center" />
                                    <HeaderStyle BorderStyle="Groove" HorizontalAlign="Center" />
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:CheckBoxField>
                                    <asp:BoundField DataField="Hagdarat_MesimutLebakara" HeaderText="הגדרה למשימות" SortExpression="Hagdarat_MesimutLebakara" >
                                    <HeaderStyle BorderStyle="Groove" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:TemplateField ShowHeader="False" HeaderText="עדכון נתונים">
                                        <ItemTemplate>
                                            <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="editee" Text="עדכן" CommandArgument=<%#Eval("Id") %> />
                                        </ItemTemplate>
                                        <ControlStyle CssClass="btn btn-default" />
                                        <FooterStyle CssClass="btn btn-default" />
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" BorderStyle="Groove" />
                                <PagerStyle ForeColor="Black" HorizontalAlign="Right" BackColor="#F7F7DE" />
                                <RowStyle BackColor="#F7F7DE" />
                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                <SortedAscendingHeaderStyle BackColor="#848384" />
                                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                <SortedDescendingHeaderStyle BackColor="#575357" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ICConnectionString %>" SelectCommand="SELECT [Name_Bakara], [DateyesuMonth], [DateyesuYear], [Type_Bakra], [Ahrai_memone], [Hagdarat_MesimutLebakara], [Id], [Status_nohehi] FROM [AddBakaraLemagar]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [AddBakaraLemagar] WHERE [Id] = @original_Id AND (([Name_Bakara] = @original_Name_Bakara) OR ([Name_Bakara] IS NULL AND @original_Name_Bakara IS NULL)) AND (([DateyesuMonth] = @original_DateyesuMonth) OR ([DateyesuMonth] IS NULL AND @original_DateyesuMonth IS NULL)) AND (([DateyesuYear] = @original_DateyesuYear) OR ([DateyesuYear] IS NULL AND @original_DateyesuYear IS NULL)) AND (([Type_Bakra] = @original_Type_Bakra) OR ([Type_Bakra] IS NULL AND @original_Type_Bakra IS NULL)) AND (([Ahrai_memone] = @original_Ahrai_memone) OR ([Ahrai_memone] IS NULL AND @original_Ahrai_memone IS NULL)) AND (([Hagdarat_MesimutLebakara] = @original_Hagdarat_MesimutLebakara) OR ([Hagdarat_MesimutLebakara] IS NULL AND @original_Hagdarat_MesimutLebakara IS NULL)) AND (([Status_nohehi] = @original_Status_nohehi) OR ([Status_nohehi] IS NULL AND @original_Status_nohehi IS NULL))" InsertCommand="INSERT INTO [AddBakaraLemagar] ([Name_Bakara], [DateyesuMonth], [DateyesuYear], [Type_Bakra], [Ahrai_memone], [Hagdarat_MesimutLebakara], [Status_nohehi]) VALUES (@Name_Bakara, @DateyesuMonth, @DateyesuYear, @Type_Bakra, @Ahrai_memone, @Hagdarat_MesimutLebakara, @Status_nohehi)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [AddBakaraLemagar] SET [Name_Bakara] = @Name_Bakara, [DateyesuMonth] = @DateyesuMonth, [DateyesuYear] = @DateyesuYear, [Type_Bakra] = @Type_Bakra, [Ahrai_memone] = @Ahrai_memone, [Hagdarat_MesimutLebakara] = @Hagdarat_MesimutLebakara, [Status_nohehi] = @Status_nohehi WHERE [Id] = @original_Id AND (([Name_Bakara] = @original_Name_Bakara) OR ([Name_Bakara] IS NULL AND @original_Name_Bakara IS NULL)) AND (([DateyesuMonth] = @original_DateyesuMonth) OR ([DateyesuMonth] IS NULL AND @original_DateyesuMonth IS NULL)) AND (([DateyesuYear] = @original_DateyesuYear) OR ([DateyesuYear] IS NULL AND @original_DateyesuYear IS NULL)) AND (([Type_Bakra] = @original_Type_Bakra) OR ([Type_Bakra] IS NULL AND @original_Type_Bakra IS NULL)) AND (([Ahrai_memone] = @original_Ahrai_memone) OR ([Ahrai_memone] IS NULL AND @original_Ahrai_memone IS NULL)) AND (([Hagdarat_MesimutLebakara] = @original_Hagdarat_MesimutLebakara) OR ([Hagdarat_MesimutLebakara] IS NULL AND @original_Hagdarat_MesimutLebakara IS NULL)) AND (([Status_nohehi] = @original_Status_nohehi) OR ([Status_nohehi] IS NULL AND @original_Status_nohehi IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_Id" Type="Int32" />
                                    <asp:Parameter Name="original_Name_Bakara" Type="String" />
                                    <asp:Parameter Name="original_DateyesuMonth" Type="String" />
                                    <asp:Parameter Name="original_DateyesuYear" Type="Int32" />
                                    <asp:Parameter Name="original_Type_Bakra" Type="String" />
                                    <asp:Parameter Name="original_Ahrai_memone" Type="String" />
                                    <asp:Parameter Name="original_Hagdarat_MesimutLebakara" Type="String" />
                                    <asp:Parameter Name="original_Status_nohehi" Type="Boolean" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Name_Bakara" Type="String" />
                                    <asp:Parameter Name="DateyesuMonth" Type="String" />
                                    <asp:Parameter Name="DateyesuYear" Type="Int32" />
                                    <asp:Parameter Name="Type_Bakra" Type="String" />
                                    <asp:Parameter Name="Ahrai_memone" Type="String" />
                                    <asp:Parameter Name="Hagdarat_MesimutLebakara" Type="String" />
                                    <asp:Parameter Name="Status_nohehi" Type="Boolean" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Name_Bakara" Type="String" />
                                    <asp:Parameter Name="DateyesuMonth" Type="String" />
                                    <asp:Parameter Name="DateyesuYear" Type="Int32" />
                                    <asp:Parameter Name="Type_Bakra" Type="String" />
                                    <asp:Parameter Name="Ahrai_memone" Type="String" />
                                    <asp:Parameter Name="Hagdarat_MesimutLebakara" Type="String" />
                                    <asp:Parameter Name="Status_nohehi" Type="Boolean" />
                                    <asp:Parameter Name="original_Id" Type="Int32" />
                                    <asp:Parameter Name="original_Name_Bakara" Type="String" />
                                    <asp:Parameter Name="original_DateyesuMonth" Type="String" />
                                    <asp:Parameter Name="original_DateyesuYear" Type="Int32" />
                                    <asp:Parameter Name="original_Type_Bakra" Type="String" />
                                    <asp:Parameter Name="original_Ahrai_memone" Type="String" />
                                    <asp:Parameter Name="original_Hagdarat_MesimutLebakara" Type="String" />
                                    <asp:Parameter Name="original_Status_nohehi" Type="Boolean" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
				
				
				
				
				
				
				
				</table>
				<!--  end product-table................................... --> 
				</form>
			</div>
			<!--  end content-table  -->
		
			<!--  start actions-box ............................................... -->
			
			<!-- end actions-box........... -->
			
			<!--  start paging..................................................... -->
			<!--  end paging................ -->
			
			<div class="clear"></div>
		 
		</div>
		<!--  end content-table-inner ............................................END  -->
		</td>
		<td id="tbl-border-right"></td>
	</tr>
	<tr>
		<th class="sized bottomleft"></th>
		<td id="tbl-border-bottom">&nbsp;</td>
		<th class="sized bottomright"></th>
	</tr>
	</table>
	<div class="clear">&nbsp;</div>

</div>
<!--  end content -->
<div class="clear">&nbsp;</div>
</div>
<!--  end content-outer........................................................END -->

<div class="clear">&nbsp;</div>
    
<!-- start footer -->         
<div id="footer">
	<!--  start footer-left -->
	
	<!--  end footer-left -->
	<div class="clear">&nbsp;</div>
</div>
<!-- end footer -->
 
</body>
</html>
