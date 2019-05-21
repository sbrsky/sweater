<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container"><a class="navbar-brand" href="#"> <img alt="Instate" src="/web/img/logo_instate.png"
                                                                  width="100"></a>
        <a class="navbar-brand" href="/">Instate</a>
        <button aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"
                class="navbar-toggler" data-target="#navbarSupportedContent" data-toggle="collapse" type="button">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/main">Library </a>
                </li>



            <li class="nav-item">
                <a class="nav-link" href="/user/profile">Profile </a>
            </li>
        </#if>
        <!-- My Contacts -->

        <!-- My Contacts End -->
        </ul>

    <#if user??>
    <span>
    <button type="button" class="btn btn-outline-success"><#if user.friend1??> Your Partner : ${user.friend1} </#if></button>---
    </span>
        <div class="navbar-text mr-3"> Logged as ${name} <#if isAdmin><span class="badge badge-warning">admin</span></#if></div>
        <img src="${user.profilePicture}" width="9%" height="9%" class="img-fluid" alt="Responsive image">
</#if>
    <span>
        <@l.logout />
    </span>
</nav>


