<#include "security.ftl">
<div class="container-fluid">
    <div class="row d-flex d-md-block flex-nowrap wrapper">
        <div class="col-md-3 float-left col-1 pl-0 pr-0 collapse width " id="sidebar">
            <div class="list-group border-0 card text-center text-md-left">
                <#if isAdmin>
                    <a href="#menu1" class="list-group-item d-inline-block collapsed" data-toggle="collapse"
                       data-parent="#sidebar" aria-expanded="false"><i class="fa fa-dashboard"></i> <span
                                class="d-none d-md-inline">Admin Panel</span> </a>
                    <div class="collapse" id="menu1">
                        <a href="#menu1sub1" class="list-group-item" data-toggle="collapse" aria-expanded="false">Subitem
                            1 </a>
                        <div class="collapse" id="menu1sub1">
                            <a href="#" class="list-group-item" data-parent="#menu1sub1">Subitem 1 a</a>
                            <a href="#" class="list-group-item" data-parent="#menu1sub1">Subitem 2 b</a>
                            <a href="#menu1sub1sub1" class="list-group-item" data-toggle="collapse" aria-expanded="false">Subitem
                                3 c </a>
                            <div class="collapse" id="menu1sub1sub1">
                                <a href="#" class="list-group-item" data-parent="#menu1sub1sub1">Subitem 3 c.1</a>
                                <a href="#" class="list-group-item" data-parent="#menu1sub1sub1">Subitem 3 c.2</a>
                            </div>
                            <a href="#" class="list-group-item" data-parent="#menu1sub1">Subitem 4 d</a>
                            <a href="#menu1sub1sub2" class="list-group-item" data-toggle="collapse" aria-expanded="false">Subitem
                                5 e </a>
                            <div class="collapse" id="menu1sub1sub2">
                                <a href="#" class="list-group-item" data-parent="#menu1sub1sub2">Subitem 5 e.1</a>
                                <a href="#" class="list-group-item" data-parent="#menu1sub1sub2">Subitem 5 e.2</a>
                            </div>
                        </div>
                        <a href="/admin_messages" class="list-group-item" data-parent="#menu1">All messages</a>
                        <a href="/user" class="list-group-item" data-parent="#menu1">User List</a>
                    </div>
                </#if>

                <a href="/user/profile" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i
                            class="fa fa-heart"></i> <span class="d-none d-md-inline">Profile</span></a>
                <a href="/user/friends" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i
                            class="fa fa-list"></i> <span class="d-none d-md-inline">Friends</span></a>
                <a href="/film" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i
                            class="fa fa-clock-o"></i> <span class="d-none d-md-inline">Add movie</span></a>
                <a href="/user-messages/${currentUserId}" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i
                            class="fa fa-th"></i> <span class="d-none d-md-inline">My messages</span></a>
                <a href="#" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i
                            class="fa fa-gear"></i> <span class="d-none d-md-inline">Link</span></a>
                <a href="#" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i
                            class="fa fa-calendar"></i> <span class="d-none d-md-inline">Link</span></a>
                <a href="partner_msg" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i
                            class="fa fa-envelope"></i> <span class="d-none d-md-inline">Partner's msg</span></a>
                <div class="dropdown-divider"></div>
                <a href="/user/user_list_all" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i
                            class="fa fa-bar-chart-o"></i> <span class="d-none d-md-inline">All users</span></a>
                <a href="/user" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i
                            class="fa fa-star"></i> <span class="d-none d-md-inline">User List</span></a>
            </div>
        </div>
        <main class="col-md-9 col px-5 pl-md-2 pt-2 main mx-auto">
            <a href="#" data-target="#sidebar" data-toggle="collapse" aria-expanded="false"><i
                        class="fa fa-navicon fa-2x py-2 p-1"></i></a>