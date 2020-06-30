<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page Manager</title>
	<link href="Cs/Manager.css" rel="stylesheet" />
</head>
<body>
	
	<div id="panelwrap">
  	
	<div class="header">
    <div class="title"><a href="#">ThanhGD Admin</a></div>
    
    <div class="header_right">Welcome Admin, <a href="#" class="settings">Settings</a> <a href="http://localhost:8080/JavaWeb//logout.jsp">Logout</a> </div>
    
    <div class="menu">
    <ul>
    <li><a href="#" class="selected">Main page</a></li>
    <li><a href="#">Settings</a></li>
    <li><a href="#">Add a category</a></li>
    <li><a href="#">Edit categories</a></li>
    <li><a href="#">Categories</a></li>
    <li><a href="#">Options</a></li>
    <li><a href="#">Admin settings</a></li>
    <li><a href="#">Help</a></li>
    </ul>
    </div>
    
    </div>
    
    <div class="submenu">
    <ul>
    <li><a href="#" class="selected">settings</a></li>
    <li><a href="#">users</a></li>
    <li><a href="#">categories</a></li>
    <li><a href="#">edit section</a></li>
    <li><a href="#">templates</a></li>
    </ul>
    </div>          
                    
    <div class="center_content">  
 
    <div id="right_wrap">
    <div id="right_content">             
    <h2>Tables product</h2>
    <a href="/JavaWeb/InsertProduct" class="button blue"> Add Product </a> 
                    
                    
<table id="rounded-corner">
    <thead>
    	<tr>
            <th>Image</th>
            <th>Name</th>
            <th>About</th>
            <th>Price</th>
        </tr>
    </thead>
        <tfoot>
    	<tr>
        	<td colspan="12">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</td>
        </tr>
    </tfoot>
    <tbody>
    <c:forEach items="${list }" var="list">
    <tr class="odd">
    	    <td><a href="#"><img src="${list.getUrl()}" alt="" title="" border="0"  width="50px" height="50px"/></a></td>
        	<td><input type="text" name="" value="${list.getName()}"/></td>
            <td><input type="text" name="" value="${list.getAbout()}"/></td>
            <td><input type="text" name="" value="${list.getPrice()}"/></td>
            <td>
            <div class="form_sub_buttons">
			<a href="/JavaWeb/UpdateProduct?id=${list.getId()}" class="button green">Edit </a>
   			 <a href="/JavaWeb/DeleteProduct?id=${list.getId()}"class="button red">Delete </a>
   			 </div>
   			 </td>
        </tr>
        
    </c:forEach>
    	
    	
    </tbody>
</table>

    <ul id="tabsmenu" class="tabsmenu">
        <li class="active"><a href="#tab1">Form Design Structure</a></li>
        <li><a href="#tab2">Tab two</a></li>
        <li><a href="#tab3">Tab three</a></li>
        <li><a href="#tab4">Tab four</a></li>
    </ul>
    <div id="tab1" class="tabcontent">
        <h3>Tab one title</h3>
        <div class="form">
            
            <div class="form_row">
            <label>Name:</label>
            <input type="text" class="form_input" name="" />
            </div>
             
            <div class="form_row">
            <label>Email:</label>
            <input type="text" class="form_input" name="" />
            </div>
            
            <div class="form_row">
            <label>Subject:</label>
            <select class="form_select" name="">
            <option>Select one</option>
            </select>
            </div>
            
             <div class="form_row">
            <label>Message:</label>
            <textarea class="form_textarea" name=""></textarea>
            </div>
            <div class="form_row">
            <input type="submit" class="form_submit" value="Submit" />
            </div> 
            <div class="clear"></div>
        </div>
    </div>
    <div id="tab2" class="tabcontent">
        <h3>Tab two title</h3>
        <ul class="lists">
        <li>Consectetur adipisicing elit  error sit voluptatem accusantium doloremqu sed</li>
        <li>Sed do eiusmod tempor incididunt</li>
        <li>Ut enim ad minim veniam is iste natus error sit</li>
        <li>Consectetur adipisicing elit sed</li>
        <li>Sed do eiusmod tempor  error sit voluptatem accus antium dolor emqu incididunt</li>
        <li>Ut enim ad minim veniam</li>
        <li>Consectetur adipisi  error sit voluptatem accusantium doloremqu cing elit sed</li>
        <li>Sed do eiusmod tempor in is iste natus error sit cididunt</li>
        <li>Ut enim ad minim ve is iste natus error sitniam</li>
        </ul>
    </div>

    <div id="tab3" class="tabcontent">
        <h3>Tab three title</h3>
        <p>
    Lorem ipsum <a href="#">dolor sit amet</a>, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. <br /><br />Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?
        </p>
    </div> 
    
    <div id="tab4" class="tabcontent">
        <h3>Tab four title</h3>
        <p>
    Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, ad <br /><br />Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?
        </p>
    </div> 
     
    

    
        <div class="toogle_wrap">
            <div class="trigger"><a href="#">Toggle with text</a></div>

            <div class="toggle_container">
			<p>
        Lorem ipsum <a href="#">dolor sit amet</a>, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum <a href="#">dolor sit amet</a>, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
			</p>
            </div>
        </div>
      
     </div>
     </div><!-- end of right content-->
                     
                    
    <div class="sidebar" id="sidebar">
    <h2>Browse categories</h2>
    
        <ul>
            <li><a href="#" class="selected">Main page</a></li>
            <li><a href="#">Template settings</a></li>
            <li><a href="#">Add page</a></li>
            <li><a href="#">Edit section</a></li>
            <li><a href="#">Templates</a></li>
            <li><a href="#">Clients</a></li>
        </ul>
        
    <h2>Page Section</h2>
    
        <ul>
            <li><a href="#">Edit section</a></li>
            <li><a href="#">Templates</a></li>
            <li><a href="#">Clients</a></li>
            <li><a href="#">Docs and info</a></li>
        </ul> 
        
    <h2>User Settings</h2>
    
        <ul>
            <li><a href="#">Edit user</a></li>
            <li><a href="#">Add users</a></li>
            <li><a href="#">Manage users</a></li>
            <li><a href="#">Help</a></li>
        </ul>   
         
   
</body>
</html>