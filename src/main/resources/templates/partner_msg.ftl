<#import "parts/common.ftl" as c>

<@c.page>
    <#include "parts/side.ftl">
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Title</th>
        <th scope="col">Tag</th>
        <th scope="col">Created by</th>
    </tr>
    </thead>
    <tbody>
    <#if messages??>
    <#list messages as message>
    <tr>
        <th scope="row"><a href="" class="badge badge-success">Match</a><a href="" class="badge badge-danger">NO</a></th>
        <td>${message.text}</td>
        <td>${message.tag}</td>
        <td>${message.authorName}</td>
    </tr>
    </#list>
</#if>

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