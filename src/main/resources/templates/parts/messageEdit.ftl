<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Message editor
</a>
<div class="collapse <#if message??>show</#if>" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" class="form-control ${(textError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.text}</#if>" name="text" placeholder="Введите сообщение" />
                <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <input type="text" class="form-control"
                       value="<#if message??>${message.tag}</#if>" name="tag" placeholder="Тэг">
                <#if tagError??>
                    <div class="invalid-feedback">
                        ${tagError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>
<div class="form-group">
    <input type="text" class="form-control"
           value="<#if message??>${message.filename}</#if>" name="filename" placeholder="picture URL">
    <#if tagError??>
    <div class="invalid-feedback">
        ${tagError}
    </div>
</#if>
</div>

            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <input type="hidden" name="id" value="<#if message??>${message.id}</#if>" />
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Save message</button>
                <a class="btn btn-danger" href="delete/<#if message??>${message.id}</#if>">
                    Delete
                </a>
                <a href="#" data-toggle="modal" data-target="#logoutModal">Modal Delete</a>
            </div>



        </form>


<div>

</div>




<script
        src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="/static/index.js"></script>
    </div>
</div>

<div class="modal" id="logoutModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4>Log Out <i class="fa fa-lock"></i></h4>
            </div>
            <div class="modal-body">
                <p><i class="fa fa-question-circle"></i> Are you sure you want to delete your Film? <br /></p>
                <div>
                    <a class="btn btn-danger" href="delete/<#if message??>${message.id}</#if>">
                        Delete
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>