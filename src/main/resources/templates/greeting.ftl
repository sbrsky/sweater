<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>

<@c.page>

<!-- SLider section -->

<section class="hero" id="hero">
    <div class="sl-slider-wrapper" id="slider">
        <div class="sl-slider">
            <!-- slide-->
            <div class="sl-slide bg-1" data-orientation="horizontal" data-slice1-rotation="-25" data-slice1-scale="2"
                 data-slice2-rotation="-25" data-slice2-scale="2">
                <div class="sl-slide-inner" style="background-image: url(/web/img/w_cyber.jpg);">
                    <div class="container">
                        <h2>Hello, <span class="text-primary"> ${name} </span>user</h2>
                        <h1>This is test spring application ${test_text}</h1>
                        <p>It is time when you visited this site <a href="#" target="_blank">What next?</a>.</p>
                    </div>
                </div>
            </div>
            <!-- slide-->
            <div class="sl-slide bg-2" data-orientation="vertical" data-slice1-rotation="10" data-slice1-scale="1.5"
                 data-slice2-rotation="-15" data-slice2-scale="1.5">
                <div class="sl-slide-inner" style="background-image: url(/web/img/hero-bg02.jpg);">
                    <div class="container">
                        <h1>Nooooooo</h1>
                        <p>no? </p>
                    </div>
                </div>
            </div>
            <!-- slide-->
            <div class="sl-slide bg-3" data-orientation="horizontal" data-slice1-rotation="3" data-slice1-scale="2"
                 data-slice2-rotation="3" data-slice2-scale="1">
                <div class="sl-slide-inner" style="background-image: url(/web/img/hero-bg03.jpg);">
                    <div class="container">
                        <h2>It's <span class="text-primary">all about</span></h2>
                        <h1>foooood</h1>
                        <p>Foood at home, food cooking, food delivery. Ops sorry, not cooking))</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- End sl-slider-->
        <!-- slider pagination-->
        <nav class="nav-dots" id="nav-dots"><span class="nav-dot-current"></span><span></span><span></span></nav>
        <!-- scroll down btn--><a class="hidden-xs" href="#about" id="scroll-down"></a>
        <!-- social icons menu-->
        <div class="social">
            <div class="wrapper">
                <ul class="list-unstyled">
                    <li><a href="#" target="_blank" title="facebook"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#" target="_blank" title="twitter"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#" target="_blank" title="pinterest"><i class="fa fa-pinterest"></i></a></li>
                    <li><a href="#" target="_blank" title="instagram"><i class="fa fa-instagram"></i></a></li>
                </ul>
                <span>Follow us</span>
            </div>
        </div>
    </div>
    <!-- End slider-wrapper-->
</section>

<!-- About Section-->
<section class="about" id="about">
    <div class="container text-center">
        <header>
            <h2>Now we are learning Spring boot MVC plus Bootstrap</h2>
            <h3>Check my progress</h3>
        </header>
        <p class="lead">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
            laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae
            dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia
            consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem
            ipsum quia dolor sit amet, consectetur</p>
    </div>
</section>
<!-- End About Section-->


</@c.page>