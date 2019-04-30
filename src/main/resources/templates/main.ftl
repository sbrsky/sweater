<#import "parts/common.ftl" as c>

<@c.page>
<div class="form-row">
    <div class="form-group col-md-6">
        <form action="/main" class="form-inline" method="get">
            <input class="form-control" name="filter" placeholder="Search by tag" type="text"
                   value="${filter?ifExists}">
            <button class="btn btn-primary ml-2" type="submit">Search</button>
        </form>
    </div>
</div>

<#include "parts/messageEdit.ftl" />

<div class="card-columns">

    <#list messages as message >
    <div class="card">
        <div class="flip-card-container" style="--hue: 220">
            <div class="flip-card">

                <div class="card-front">
                    <figure>
                        <div class="img-bg"></div>
                        <#if message.filename??>
                        <img alt="BladeRunner"
                             src="https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fimage.tmdb.org%2Ft%2Fp%2Foriginal%2FjLul37v1NcF8XpdSEh4RHsmGocA.jpg&f=1&fit=crop&w=500&q=60}">
                    </
                    #if>
                    <figcaption>Blade Runner 2047</figcaption>
                    </figure>

                    <ul>
                        <li>${message.text}</li>
                        <li> ${message.authorName}</li>
                        <li>Detail 3</li>
                        <li>Detail 4</li>
                        <li>Detail 5</li>
                    </ul>
                </div>

                <div class="card-back">
                    <figure>
                        <div class="img-bg"></div>
                        <img alt="Brohm Lake"
                             src="https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2F736x%2Fd8%2F84%2Fd6%2Fd884d6b0e2798ca4ac32c2a1f56daf56.jpg&f=1&fit=crop&w=500&q=60">
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
<!-- /flip-card-container -->


















</@c.page>