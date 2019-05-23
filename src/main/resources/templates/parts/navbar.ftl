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

                    </li>
                </#if>
                <!-- My Contacts -->

                <!-- My Contacts End -->
            </ul>

            <#if user??>
                <span>
        <#if user.friend1??>
    <button type="button" class="btn btn-outline-success"> Your Partner : ${user.friend1} </button>
        <#else>
                    <a href="/user/friends" class="btn btn-outline-info">Add partner +&#43;</a>
                    </#if>---
    </span>
                <div class="navbar-text mr-3"> <a href="/user/profile"> ${name}</a> <#if isAdmin><span
                            class="badge badge-warning">admin</span></#if></div>
                <#if user.profilePicture??>

                <img src="${user.profilePicture!''}" width="9%" height="9%" class="img-fluid"
                                          alt="profile image" >

                <#else>
                    <img src="https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn4.iconfinder.com%2Fdata%2Ficons%2Fgray-user-management%2F512%2Frounded-256.png&f=1"
                         width="9%" height="9%" class="img-fluid" alt="Responsive image">
                </#if>
            </#if>
            <span>
        <@l.logout />
    </span>
</nav>


