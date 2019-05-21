<#import "parts/common.ftl" as c>

<@c.page>

<div class="form-row">
    <div class="form-group col-md-6">
        <form action="/user/user_list_all" class="form-inline" method="get">
            <input class="form-control" name="filter" placeholder="Search by tag" type="text"
                   value="${filter?ifExists}">
            <button class="btn btn-primary ml-2" type="submit">Search</button>
        </form>
    </div>
</div>

<div>
    <#if find??>

    <div class="alert alert-dismissible alert-success">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Well done!</strong> You can visit <a href="/user-messages/${find.id}" class="alert-link">${find.username} profile!</a>.
    </div>
    <#else>
    <div class="alert alert-dismissible alert-secondary">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Oooops!</strong> We can't find your name <a href="#" class="alert-link">try find it manually</a>.
    </div>
    </#if>
</div>

<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Username</th>
        <th scope="col">Id</th>
        <th scope="col">Details</th>
    </tr>
    </thead>
    <tbody>
    <#list users as user>
    <tr>
        <th scope="row">
            <a class="badge badge-info" href="/user-messages/${user.id}">Details</a>

        </th>
        <td>${user.username}</td>
        <td>${user.id}</td>
        <td></td>
        <td></td>
    </tr>
    </#list>

    </tbody>
</table>


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