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

<a aria-controls="collapseExample" aria-expanded="false" class="btn btn-primary" data-toggle="collapse"
   href="#collapseExample" role="button">
    Add new Message
</a>
<div class="collapse <#if message??>show</#if>" id="collapseExample">
    <div class="form-group mt-3">
        <form enctype="multipart/form-data" method="post">
            <div class="form-group">
                <input class="form-control ${(textError??)?string('is-invalid', '')}" name="text"
                       placeholder="Введите сообщение" type="text" value="<#if message??>${message.text}</#if>"/>
                <#if textError??>
                <div class="invalid-feedback">
                    ${textError}
                </div>
            </
            #if>
    </div>
    <div class="form-group">
        <input class="form-control" name="tag"
               placeholder="Тэг" type="text" value="<#if message??>${message.tag}</#if>">
        <#if tagError??>
        <div class="invalid-feedback">
            ${tagError}
        </div>
    </
    #if>
</div>
<div class="form-group">
    <div class="custom-file">
        <input id="customFile" name="file" type="file">
        <label class="custom-file-label" for="customFile">Choose file</label>
    </div>
</div>
<input name="_csrf" type="hidden" value="${_csrf.token}"/>
<div class="form-group">
    <button class="btn btn-primary" type="submit">Добавить</button>
</div>
</form>
</div>
</div>


<div class="card-columns">
    <#list messages as message >
    <div class="card my-3">

        <#if message.filename??>
        <img class="card-img-top" src="/img/${message.filename}">
    </
    #if>
    <div class="m-2">
        <span>${message.text}</span>
        <i>${message.tag}</i>
    </div>
    <div class="card-footer text-muted">
        ${message.authorName}
    </div>

</div>
<#else>
No message
</#list>
</div>
</@c.page>