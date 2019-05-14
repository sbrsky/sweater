<#import "parts/common.ftl" as c>

<@c.page>

<div class="container">
    <div class="jumbotron">
        <h3 class="text-center">Search</h3>
        <form id="searchForm">
            <input type="text" class="form-control" id="searchText" placeholder="Search Movies">
        </form>
    </div>
</div>


<div class="container">
    <div id="movies" class="row"></div>

</div>
<script
        src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="/static/index.js"></script>



<!-- /flip-card-container -->

<div>

        <input type="hidden" name="_csrf" value="${_csrf.token}" form="filmf"/>

    </form>
</div>
</@c.page>