<#import "parts/common.ftl" as c>

<@c.page>

<div class="container">

    <div class="row">

        <div class="col-xl-8 offset-xl-2 py-5">

            <h1>Contact form Tutorial from <a href="http://bootstrapious.com">Bootstrapious.com</a></h1>

            <p class="lead">This is a demo for our tutorial dedicated to crafting working Bootstrap contact form with
                PHP and AJAX background.</p>

            <!-- We're going to place the form here in the next step -->
            <form action="contact.php" id="contact-form" method="post" role="form">

                <div class="messages"></div>

                <div class="controls">

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="form_name">Firstname *</label>
                                <input class="form-control" data-error="Firstname is required." id="form_name"
                                       name="name" placeholder="Please enter your firstname *" required="required"
                                       type="text">
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="form_lastname">Lastname *</label>
                                <input class="form-control" data-error="Lastname is required." id="form_lastname"
                                       name="surname" placeholder="Please enter your lastname *" required="required"
                                       type="text">
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="form_email">Email *</label>
                                <input class="form-control" data-error="Valid email is required." id="form_email"
                                       name="email" placeholder="Please enter your email *" required="required"
                                       type="email">
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="form_need">Please specify your need *</label>
                                <select class="form-control" data-error="Please specify your need." id="form_need"
                                        name="need" required="required">
                                    <option value=""></option>
                                    <option value="Request quotation">Request quotation</option>
                                    <option value="Request order status">Request order status</option>
                                    <option value="Request copy of an invoice">Request copy of an invoice</option>
                                    <option value="Other">Other</option>
                                </select>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="form_message">Message *</label>
                                <textarea class="form-control" data-error="Please, leave us a message."
                                          id="form_message" name="message" placeholder="Message for me *"
                                          required="required" rows="4"></textarea>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <input class="btn btn-success btn-send" type="submit" value="Send message">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <p class="text-muted">
                                <strong>*</strong> These fields are required. Contact form template by
                                <a href="https://bootstrapious.com/p/how-to-build-a-working-bootstrap-contact-form"
                                   target="_blank">Bootstrapious</a>.</p>
                        </div>
                    </div>
                </div>

            </form>

        </div>

    </div>

</div>

<script crossorigin="anonymous" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script crossorigin="anonymous" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script crossorigin="anonymous" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script crossorigin="anonymous" integrity="sha256-dHf/YjH1A4tewEsKUSmNnV05DDbfGN3g7NMq86xgGh8="
        src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>
<script src="contact.js"></script>


<span class="border"> WHat a fuck </span>
</@c.page>
