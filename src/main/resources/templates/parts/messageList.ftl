<#include "security.ftl">

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
                             src="${message.filename}">
                    </#if>
                    <figcaption>${message.text}</figcaption>
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