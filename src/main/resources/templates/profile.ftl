<#import "parts/common.ftl" as c>

<@c.page>
<h5>${username}</h5>
${message?ifExists}
<form method="post">

    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Password:</label>
        <div class="col-sm-6">
            <input class="form-control" name="password" placeholder="Password" type="password"/>
        </div>
    </div>

    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Email:</label>
        <div class="col-sm-6">
            <input class="form-control" name="email" placeholder="some@some.com" type="email" value="${email!''}"/>
            <!-- Воскл. знак для того, что бы в случае если у нас нет емаила, то выводилась пустая строка, а не падала аппа -->
        </div>
    </div>

    <input name="_csrf" type="hidden" value="${_csrf.token}"/>
    <button class="btn btn-primary" type="submit">Save</button>
</form>

</@c.page>

