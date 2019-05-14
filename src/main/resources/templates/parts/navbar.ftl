<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light ">
    <div class="container"><a class="navbar-brand" href="#"> <img alt="Instate" src="/web/img/logo_instate.png"
                                                                  width="100"></a>
        <a class="navbar-brand" href="/">Instate</a>
        <button aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"
                class="navbar-toggler" data-target="#navbarSupportedContent" data-toggle="collapse" type="button">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/">Home </a>
                </li>
                <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/main">Messages </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/film">Film Library</a>
                </li>
                <li class="nav-item">

                    <a class="nav-link" href="/user-messages/${currentUserId}">My messages </a>

                </li>
            </#if>
                <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">admin panel </a>
                    <div class="btn-group">
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="/user">User list</a>
                            <a class="dropdown-item" href="/admin_messages">All messages</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Separated link</a>
                        </div>
                    </div>
                </li>
            </#if>
            <#if user??>
            <li class="nav-item">
                <a class="nav-link" href="/user/profile">Profile </a>
            </li>
        </#if>
        <!-- My Contacts -->
        <li class="nav-item">
            <a class="nav-link" href="/my_contacts"> Contacts </a>
        </li>
        <!-- My Contacts End -->
        </ul>
        <div class="navbar-text mr-3">${name} <#if isAdmin><span class="badge badge-warning">admin</span></#if>
    </div>
        <@l.logout />
    </div>
</nav>

