<a aria-controls="collapseExample" aria-expanded="false" class="btn btn-primary" data-toggle="collapse"
   href="#collapseExample" role="button">
    Message Editor
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
    <button class="btn btn-primary" type="submit">Save Message</button>
</div>
</form>
</div>
</div>
