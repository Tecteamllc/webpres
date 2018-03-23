<div class="container-form"  id="contact">
            <div class="section">
                <div class="row">
                 <div class="col-md-7">
                        <div class="staff-background">
                            <img src="${frontImage.getData()}" alt="">
                        </div>
                    </div>
                  <div class="col-md-5">
                      <div class="span-support">
                        ${description.getData()}
                      </div>
                    <form id="contact-form" method="post" action="contact.php">
                        <div class="messages"></div>
                            <div class="controls">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input id="form_name" type="text" name="name" class="form-control" placeholder="Name" required="required" data-error="Firstname is required.">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input id="form_email" type="email" name="email" class="form-control" placeholder="Email address" required="required" data-error="Valid email is required.">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <textarea id="form_message" name="message" class="form-control" placeholder="Your message" rows="6" required="required" data-error="Please,leave us a message."></textarea>
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <p><input type="submit" class="btn btn-warning" value="Send message"></p>
                                    </div>
                                </div>
                            </div>
                    </form>
                  </div>
                </div> 
            </div>       
        </div>