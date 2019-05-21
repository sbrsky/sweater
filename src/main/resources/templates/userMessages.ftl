<#import "parts/common.ftl" as c>

<@c.page>
<h3>${userChannel.username}</h3>
<#if !isCurrentUser>
<#if isSubscriber>
<a class="btn btn-info" href="/user/unsubscribe/${userChannel.id}">Unsubscribe</a>
<#else>
<a class="btn btn-info" href="/user/subscribe/${userChannel.id}">Subscribe</a>
</#if>
</#if>
<div class="container my-3">
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-body">
                    <div class="card-title">Subscriptions</div>
                    <h3 class="card-text">
                        <a href="/user/subscriptions/${userChannel.id}/list">${subscriptionsCount}</a>
                    </h3>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card">
                <div class="card-body">
                    <div class="card-title">Subscribers</div>
                    <h3 class="card-text">
                        <a href="/user/subscribers/${userChannel.id}/list">${subscribersCount}</a>
                    </h3>
                </div>
            </div>
        </div>
    </div>
</div>
<#if isCurrentUser || isAdmin>
<#include "parts/messageEdit.ftl" />
</#if>

<!-- /flip-card-container -->
<#include "parts/security.ftl">

<div class="card-columns">
    <#list messages as message>
    <div class="card my-3">
        <#if message.filename??>
        <img src="${message.filename}" class="card-img-top">
    </#if>
    <div class="m-2">
        <span>${message.text}</span><br/>
        <i>#${message.tag}</i>
    </div>
    <div class="card-footer text-muted">
        <a href="/user-messages/${message.author.id}">${message.authorName}</a>
        <#if message.author.id == currentUserId>
        <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
            Edit
        </a>

    </#if>
</div>
</div>
<#else>
No message
</#list>
</div>

</@c.page>