<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">
<@c.page>
<#include "parts/side.ftl">
            <div class="page-header">
                <h2>${username} Profile</h2>
            </div>

    <div class="container">
        <div class="row">
            <div class="offset-lg-4 col-lg-4 col-sm-6 col-12 main-section text-center">
                <div class="row">
                    <div class="col-lg-12 col-sm-12 col-12 profile-header"></div>
                </div>
                <div class="row user-detail">
                    <div class="col-lg-12 col-sm-12 col-12">
                        <img src="<#if pic??>${pic}<#else>https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F1%2F1e%2FDefault-avatar.jpg&f=1</#if>" class="rounded-circle img-thumbnail">
                        <h5>username : ${username}</h5>
                        <p><i class="fa fa-envelope" aria-hidden="true"></i> ${email!''}</p>
                        <p><i class="fa fa-gear" aria-hidden="true"></i> Id:${id}</p>
                        <p><i class="fa fa-star" aria-hidden="true"></i> ${isAdmin?string('rights: ', '')} <#if isAdmin><span class="badge badge-warning">admin</span>
                            </#if> Your partner: ${partner!''}</p>
                        <hr>
                        <button role="button" class="btn btn-success btn-sm" data-toggle="collapse" data-target="#demo2"
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
                        <a href="#" class="btn btn-info btn-sm">Send Messege</a>

                        <hr>
                        <span>Lorem ips consectetur adipisium ,eiusmod tempor incididuin reprehendeanim.</span>
                    </div>
                </div>
                <div class="row user-social-detail">
                    <div class="col-lg-12 col-sm-12 col-12">
                        <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>




</@c.page>

