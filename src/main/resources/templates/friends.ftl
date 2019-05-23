<#import "parts/common.ftl" as c>

<@c.page>
<div>
    <#if partner??>
        <button type="button" class="btn btn-outline-success"> Your Partner : ${partner!''}  </button>
    <#else>
        <a href="/user/friends" class="btn btn-outline-info">Choose your partner +&#43; from friends</a>
    </#if>

</div>
<div>

    <div class="p-3 mb-2 bg-info text-white"> Друзья </div>
</div>


<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Username</th>

    </tr>
    </thead>
    <tbody>
    <#list friends as user>
    <tr>
        <th scope="row">
            <form action="/user/friends" class="form-inline" method="get">
                <input class="form-control" name="id" placeholder="Set active partner" type="hidden"
                       value="${user.username?ifExists}">
                <a class="badge badge-success" type="submit">Set partner</a>
            </form>


        </th>
        <td>${user.username}</td>
        <td>${user.id}</td>
        <td></td>
        <td></td>
    </tr>
    </#list>

    </tbody>
</table>


<div>

    <div class="p-3 mb-2 bg-info text-white"> Запросы на дружбу</div>
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
    <#list usersr as user>
    <tr>
        <th scope="row">
            <a class="badge badge-warning" href="/user-messages/${user.id}">Хочет дружить</a>

        </th>
        <td>${user.username}</td>
        <td>${user.id}</td>
        <td></td>
        <td></td>
    </tr>
    </#list>

    </tbody>
</table>

<div>

    <div class="p-3 mb-2 bg-info text-white">.Это то, на кого мы подписаны</div>
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
            <a class="badge badge-info" href="/user-messages/${user.id}">Requested</a>

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