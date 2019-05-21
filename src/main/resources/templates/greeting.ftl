<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>

<@c.page>

<!-- SLider section -->

<section class="hero" id="hero">
    <div class="sl-slider-wrapper" id="slider">

        <div class="sl-slider">
            <!-- slide-->
            <#list messages as message>
            <div class="sl-slide bg-1" data-orientation="horizontal" data-slice1-rotation="-25" data-slice1-scale="2"
                 data-slice2-rotation="-25" data-slice2-scale="2">
                <div class="sl-slide-inner" style="background-image: url(https://source.unsplash.com/1920x1080/?${message.text},film);">
                    <div class="container">


                        <button type="button" class="btn btn-primary btn-lg">Film : ${message.text}</button>

                    </div>
                </div>
            </div>
            </#list>

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