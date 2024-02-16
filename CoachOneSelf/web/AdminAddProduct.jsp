<%@include file="AdminHeader.jsp" %>


    <section class="w3l-contact pb-5" id="contact">
        <div class="container pb-md-5 pb-4">
            <div class="row contact-block">
                <div class="col-lg-7 contact-right mt-5">
                    <h3 class="title-style mb-4 pb-2">Add Product</h3>
                    <form action="Action/AddProductAction.jsp" method="post" class="signin-form" enctype="multipart/form-data">
                        <div class="input-grids">
                             <a href="https://www.flipkart.com/search?q=self+defence&as=on&as-show=on&otracker=AS_Query_OrganicAutoSuggest_5_5_na_na_na&otracker1=AS_Query_OrganicAutoSuggest_5_5_na_na_na&as-pos=5&as-type=RECENT&suggestionId=self+defence&requestId=5bc953c8-1851-43c9-8035-1170b67c0684&as-searchtext=self%20" target="_blank"
                               <button class="btn btn-style mt-sm-3">Browse Products</button> </a>
                               <div>
                                   &nbsp;
                               </div>
                            <input type="text" name="pname" id="w3lName" placeholder="Enter the product name*"
                                class="contact-input" required="" />
                            <input type="text" name="price" id="w3lSender" placeholder="Enter the price*"
                                class="contact-input" required="" />
                            <input type="text" name="margin" id="w3lSender" placeholder="Enter the margin price*"
                                class="contact-input" required="" />
                           
                            <input type="text" name="url" id="w3lSubect" placeholder="Enter the url*"
                                class="contact-input" required="" />
                        </div>
                        <div class="form-input">
                            <textarea name="description" id="w3lMessage" placeholder="Enter the product description *"
                                required=""></textarea>
                        </div>
                        <input type="file" name="file" id="w3lSubect" placeholder="Please choose*"
                                class="contact-input" required="" />
                        <button class="btn btn-style mt-sm-3">Add Product</button>
                    </form>

                    
                </div>
                <div class="col-lg-5 mt-lg-0 mt-5 pl-xl-5 pl-lg-4">
                    <div class="map-iframe">
                        <img src="assets/images/spray.jpg"
                            width="100%" height="500" frameborder="0" allowfullscreen=""></img>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //contact -->

    <!-- footer -->
    
    <%@include file="Footer.jsp" %>