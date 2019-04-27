<#import "parts/common.ftl" as c>

<@c.page>
User editor

<form action="/user" method="post">
    <input name="username" type="text" value="${user.username}">
    <#list roles as role>
    <div>
        <label><input ${user.roles?seq_contains(role)?string( name="${role}" type="checkbox""checked","")} > ${role}
        </label>
    </div>
</#list>
<input name="userId" type="hidden" value="${user.id}">
<input name="_csrf" type="hidden" value="${_csrf.token}">
<button type="submit">Submit</button>
</form>
<!-- MY TEST -->

</@c.page>