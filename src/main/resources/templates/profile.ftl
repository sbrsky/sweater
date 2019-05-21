<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">
<@c.page>
<#include "parts/side.ftl">
            <div class="page-header">
                <h2>${username} Profile</h2>
            </div>
            <p class="lead">Id:${id}, ${isAdmin?string('rights: ', '')} <#if isAdmin><span class="badge badge-warning">admin</span>
            </#if>, ${partner!''}</p>
            <div class="col-md-6">
                <button role="button" class="btn btn-warning" data-toggle="collapse" data-target="#demo2"
                        aria-expanded="false">
                    Change data
                </button>
                <div id="demo2" class="height collapse" aria-expanded="false">
                    <h5>${username}</h5>
                    <h3></h3>
                    ${message?ifExists}
                    <form method="post">
                        <div class="form-group row">

                            <input type="text" class="form-control" name="filepic" placeholder="picture URL">


                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Password:</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="password" placeholder="Password" type="password"/>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Email:</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="email" placeholder="some@some.com" type="email"
                                       value="${email!''}"/>
                                <!-- Воскл. знак для того, что бы в случае если у нас нет емаила, то выводилась пустая строка, а не падала аппа -->
                            </div>
                        </div>

                        <input name="_csrf" type="hidden" value="${_csrf.token}"/>
                        <button class="btn btn-primary" type="submit">Save</button>
                    </form>
                </div>
            </div>
            <div class="text-left">
                <img src="<#if pic??>${pic}<#else>https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F1%2F1e%2FDefault-avatar.jpg&f=1</#if>"
                     class="avatar img-circle img-thumbnail" alt="avatar" width="200" height="222">
                <h6>Upload a different photo...</h6>

            </div>



            </hr><br>
            <hr>
            <div class="row">


            </div>
        </main>
    </div>
</div>


</@c.page>

