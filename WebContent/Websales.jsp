<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="Cs/Style.css" rel="stylesheet" />
    <script src="Js/jquery-3.2.1.min.js"></script>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Josefin+Sans|Lobster+Two|Pacifico');
    </style>
</head>
<body>
    <section>
        <!-- This is Section 1 of the page -->
        <div class="section1">
            <img src="Images/Website_Logo.png" class="logo" />
            <div class="navigation">
                <img src="Images/if_List_Text_Menu_Numbers_String_Burger_1329080.png" class="toggle" />
                <a class="cgr" >Categories</a>
            </div>
            <div>
                <a class="submenu" >Sound devices</a>
                <a class="submenu">Video game consoles</a>
                <a class="submenu">Cell/Mobile/Wireless phones</a>
                <a class="submenu">Home security system</a>
                <a class="submenu">Cameras</a>
                <a class="submenu">Home theater system</a>
                <a class="submenu">TVs</a>
                <a class="submenu">Computers</a>
                <a class="submenu">Games/Movies/Music</a>
                <a class="submenu">Accessories</a>
                <a class="submenu">Office</a>
                <a class="submenu">Home appliances</a>
            </div>

            <p class="para1">Specials</p>
            <div class="Special">
				<c:forEach items="${list}" var="list1">
                   <fieldset>
                    <legend>Sales</legend>
                    <div class="div1">
                        <img src="${list1.getUrl()}" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>${list1.getPrice()}</h3>
                        <p>${list1.getName()}</p>
                    </div>
                    
                    
                   </fieldset>
               </c:forEach>
               <!--  <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="Images/Philips_Trimmers.png" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$24.34<strike>$25.63</strike></h3>
                        <p>Philips QT4000 Experience Men's Stubble Trimmer 44DJH62</p>
                    </div>
                </fieldset>

                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="Images/y37-high-figure.png" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$399<strike>$402.30</strike></h3>
                        <p>vivo Xshot 5.2 inch 4G Android 4.2 Quad Core 2.3GHz RAM 2GB ROM 16GB</p>
                    </div>
                </fieldset>

                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="Images/cruzer-force-usb-flash-drive-250x250.png" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$16<strike>$18</strike></h3>
                        <p>SanDisk Cruzer Force 64 GB USB Flash Drive USB 2.0</p>
                    </div>
                </fieldset>

                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="Images/Canon-EF-24-105mm-f-4L-IS-II-USM-Side_tcm14-1451451.png" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$133.89<strike>$134.16</strike></h3>
                        <p>Canon EF 75-300mm f/4.0-5.6 III Lens</p>
                    </div>
                </fieldset>

                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="Images/bag2.png" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$14.92<strike></strike></h3>
                        <p>PZJ� Galaxy Backpack, Unisex Galaxy Pattern Canvas</p>
                    </div>
                </fieldset>

                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="Images/images.jpg" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$1.89<strike>$2</strike></h3>
                        <p>The Mistake: An unputdownable psychological thriller with a brilliant twist</p>
                    </div>
                </fieldset>

                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="Images/Hand-Blender-Mixer-PNG-Image1.png" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$8.49<strike>$9</strike></h3>
                        <p>Elgento E12009 Hand Blender, 170 W - White</p>
                    </div>
                </fieldset> -->
            </div>



        </div>



        <!-- This is section 2 of the page -->
        <div class="section2">
            <input type="text" placeholder="search" class="txtsrch" /><button type="button" class="btnsrch">Search</button>

            <img src="Images/if_call_322424.png" class="call-icon" />
            <span class="tel-no">800-8600-9662</span>


            <nav>
                <a class="menuitem" >Home</a>
                <c:if test="${check}"><a class="menuitem" href= "http://localhost:8080/JavaWeb/sevletmanager"> Manager </a></c:if>
                <a class="menuitem">Wish list(0)</a>
                <a class="menuitem">My Account</a>
                <a class="menuitem">Shopping Cart</a>              
                <a class="menuitem">items(s)</a>
                <c:if test="${checklogin}"><a class="menuitem" href= "http://localhost:8080/JavaWeb//login.jsp"> Login  </a></c:if>
                <c:if test="${!checklogin}"><a class="menuitem" href= "http://localhost:8080/JavaWeb//logout.jsp"> Logout  </a></c:if> &nbsp;&nbsp;
            </nav>

            <div class="slider">
                <div class="slides">
                    <div class="slide1">
                        <img src="Images/4-2-iphone-png-picture-png-image.png" class="img1" />
                    </div>
                    <div class="slide1">
                        <img src="Images/2-2-iphone-png-picture.png" class="img2" />
                    </div>
                    <div class="slide1">
                        <img src="Images/1-2-iphone-png-picture-png-clipart.png" class="img3" />
                    </div>
                    <div class="constant">
                        <h1>iPhone 7</h1>
                        <p>Comfort is a very important things nowadays because it is a condition of satifaction.</p>

                        <a class="btnshopnow">Shop Now!</a>
                    </div>
                </div>
            </div>


            <div class="content1">
                <div class="innertitle1">
                    <h3>Home Theater & TV</h3>
                    <p class="para1">Comfort is a very important things nowadays because it is a condition of satifaction.</p>
                    <br />
                    <p class="para1">Shop Now!</p>
                </div>

                <div class="innertitle2">
                    <h3>Home Appliances</h3>
                    <p class="para1">Comfort is a very important things nowadays because it is a condition of satifaction.</p>
                    <br />
                    <p class="para1">Shop Now!</p>
                </div>

                <div class="inner1">
                    <img src="Images/Home_Theaters.png" class="img1" />
                </div>
                <div class="inner2">
                    <img src="Images/Black_Vacuum_Cleaner_PNG_Clipart-629.png" class="img2" />
                </div>
            </div>

            <p class="featuredpara">Latest</p>

            <div class="products">
                <fieldset class="col1">
                    <legend>New</legend>
                    <img src="Images/Laptop.png" class="img1" />
                    <h3>$184.78<strike>$192.45</strike></h3>
                    <h4>Apple MacBook Pro 13-inch Laptop (Intel Dual-Core i5 2.4 GHz, 4 GB RAM, 500 GB HDD, Intel HD, OS X) - Silver - 2011</h4>
                    <p>Fastest dual-core processor available Thunderbolt technology FaceTime HD camera Long lasting battery...</p>
                </fieldset>

                <fieldset class="col2">
                    <legend>New</legend>
                    <img src="Images/Canon_Camera.png" class="img1" />
                    <h3>$636.21<strike>$642.45</strike></h3>
                    <h4>Canon EOS 200D Digital SLR Camera with EF-S 18 - 55 mm f/4-5.6 IS</h4>
                    <p>24.2 megapixel CMOS sensor for photos rich with detail and colour and look straight from the camera. Continuous shooting at up to 5 FTP...</p>
                </fieldset>

                <fieldset class="col3" >
                    <legend>New</legend>
                    <img src="Images/38_Printers.png" class="img1" />
                    <h3>$49.41<strike>$50.31</strike></h3>
                    <h4>HP Envy 4527 All-in-One Printer, Instant Ink Compatible with 4 Months Trial</h4>
                    <p>Print, scan or copy quickly and easily with the 2.2 inch (5.5 cm) display - simply touch and go...</p>
                </fieldset>
            </div>


            <p class="featuredpara">Featured</p>

            <div class="products">
               <c:forEach items="${list}" var="list1">
                   <fieldset class="col3">
                    <legend>Hot Deal</legend>
                    <img src="${list1.getUrl()}" class="img1" />
                    <h3>${list1.getPrice()}</h3>
                    <h4>${list1.getName()}</h4>
                    <p>${list1.getAbout()}</p>
                   </fieldset>
               </c:forEach>
                

        </div>
    </section>

    <div class="background"></div>

    <div class="footer">

        <div class="outer">
            <div class="inner">
                <h4>Information</h4>
                <a>About</a>
                <a>Delivery Information</a>
                <a>Privacy Policy</a>
                <a>Tearm & Condition</a>
            </div>
            <div class="inner2">
                <h4>Costomer Information</h4>
                <a>Contact Us</a>
                <a>Return</a>
                <a>Site Map</a>
            </div>
            <div class="inner">
                <h4>My Account</h4>
                <a>Order History</a>
                <a>Wish list</a>
                <a>News Latter</a>
            </div>
            <div class="inner2">
                <h4>Follow Us</h4>
                <a>Facebook</a>
                <a>Twitter</a>
                <a>Google +</a>
                <a>Youtube</a>
            </div>
        </div>

        <hr />
        <div class="copyright">
            <span>Powered by Daily Tuition � 2017</span>
        </div>

    </div>

    <script>

        var $slides = $('.slides');
        var $slide = $('.slide1');
        var count = 1;

        $(document).ready(function () {

            setInterval(function () {

                $slides.animate({ 'margin-left': '-=68vw' }, 1200, function () {

                    count++;
                    if (count === 4) {
                        $slides.css("margin-left", 0);
                        count = 1;
                    }

                });
            }, 4000);
        });

    </script>
</body>
</html>
