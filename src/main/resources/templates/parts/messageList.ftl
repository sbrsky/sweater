<#include "security.ftl">

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox" id="bgkarusel">
        <!-- Slide One - Set the background image for this slide in the line below -->

        <div class="carousel-item active" style="background-image: url('https://source.unsplash.com/1920x1080/?films,cinema')">
            <div class="carousel-caption ">
                <div class="form-row">

                        <div class="form-group col-m-2">
                            <form action="/main" class="form-inline" method="get">
                                <input class="form-control" name="filter" placeholder="Filter by tag" type="text"
                                       value="${filter?ifExists}">
                                <button class="btn btn-outline-info m-2" type="submit">Filter</button>
                            </form>
                            <form action="/main" class="form-inline" method="get">
                                <input class="form-control" name="filter" placeholder="Filter by tag" type="hidden"
                                       value="">
                                <button class="btn btn-outline-info m-2" type="submit">Clear</button>
                            </form>
                        </div>
                    </div>
                <h2 class="display-4"><a href="#add" class="btn btn-info" style="font-size: 1.6em;" >Add</a></h2>
                <p class="lead">Swipe to Right or Left to view whole collection</p>
            </div>
        </div>

        <!-- Slide Two - Set the background image for this slide in the line below -->
        <#list messages as message >
        <div class="carousel-item">

            <div class="flip-card-container" style="--hue: 220">
                <div class="flip-card">

                    <div class="card-front">
                        <figure>
                            <div class="img-bg"></div>

                            <img alt="Your choice"
                                 src="${message.filename}">

                            <figcaption><a href="/film" class="btn btn-info" >${message.text}</a></figcaption>
                        </figure>

                        <ul>
                            <li>Test</li>
                            <li>Author</li>
                            <li>Detail 3</li>
                            <li>Detail 4</li>
                            <li>Detail 5</li>
                        </ul>
                    </div>

                    <div class="card-back">
                        <figure>
                            <div class="img-bg"></div>
                            <img alt="Your choice"
                                 src="https://source.unsplash.com/310x500/?films,cinema">
                        </figure>

                        <button>Book</button>

                        <div class="design-container">
                            <span class="design design--1"></span>
                            <span class="design design--2"></span>
                            <span class="design design--3"></span>
                            <span class="design design--4"></span>
                            <span class="design design--5"></span>
                            <span class="design design--6"></span>
                            <span class="design design--7"></span>
                            <span class="design design--8"></span>
                        </div>
                    </div>

                </div>
            </div>

        </div>
        <#else>
        No message

    </#list>


    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<div id="add">
<#include "film2.ftl">
</div>

