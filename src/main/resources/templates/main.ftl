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


<!-- /flip-card-container -->
<#include "parts/messageList.ftl" />


</@c.page>