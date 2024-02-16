<%@include file="AdminHeader.jsp" %>
<style>
    /* The container */
    .container1 {
        display: block;
        position: relative;
        padding-left: 35px;
        margin-bottom: 12px;
        cursor: pointer;
        font-size: 22px;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }

    /* Hide the browser's default radio button */
    .container1 input {
        position: absolute;
        opacity: 0;
        cursor: pointer;
    }

    /* Create a custom radio button */
    .checkmark {
        position: absolute;
        top: 0;
        left: 0;
        height: 25px;
        width: 25px;
        background-color: #eee;
        border-radius: 50%;
    }

    /* On mouse-over, add a grey background color */
    .container1:hover input ~ .checkmark {
        background-color: #ccc;
    }

    /* When the radio button is checked, add a blue background */
    .container1 input:checked ~ .checkmark {
        background-color: #f39f21;
    }

    /* Create the indicator (the dot/circle - hidden when not checked) */
    .checkmark:after {
        content: "";
        position: absolute;
        display: none;
    }

    /* Show the indicator (dot/circle) when checked */
    .container1 input:checked ~ .checkmark:after {
        display: block;
    }

    /* Style the indicator (dot/circle) */
    .container1 .checkmark:after {
        top: 9px;
        left: 9px;
        width: 8px;
        height: 8px;
        border-radius: 50%;
        background: white;
    }
</style>
<style>
    /*the container must be positioned relative:*/
    .custom-select1 {
        position: relative;
        font-family: Arial;
    }

    .custom-select1 select {
        display: none; /*hide original SELECT element:*/
    }

    .select-selected {
        background-color:  #ffaa00;
    }

    /*style the arrow inside the select element:*/
    .select-selected:after {
        position: absolute;
        content: "";
        top: 14px;
        right: 10px;
        width: 0;
        height: 0;
        border: 6px solid transparent;
        border-color: #fff transparent transparent transparent;
    }

    /*point the arrow upwards when the select box is open (active):*/
    .select-selected.select-arrow-active:after {
        border-color: transparent transparent #fff transparent;
        top: 7px;
    }

    /*style the items (options), including the selected item:*/
    .select-items div,.select-selected {
        color: #ffffff;
        padding: 8px 16px;
        border: 1px solid transparent;
        border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
        cursor: pointer;
        user-select: none;
    }

    /*style items (options):*/
    .select-items {
        position: absolute;
        background-color: #ffaa00;
        top: 100%;
        left: 0;
        right: 0;
        z-index: 99;
    }

    /*hide the items when the select box is closed:*/
    .select-hide {
        display: none;
    }

    .select-items div:hover, .same-as-selected {
        background-color: rgba(0, 0, 0, 0.1);
    }
</style>

<section class="w3l-contact pb-5" id="contact">
    <div class="container pb-md-5 pb-4">
        <div class="row contact-block">
            <div class="col-lg-7 contact-right mt-5">
                <h3 class="title-style mb-4 pb-2">Add Documents</h3>
                <form action="Action/AddDocAction.jsp" method="post" class="signin-form" enctype="multipart/form-data">
                    <div class="input-grids">
                        <input type="text" name="pname" id="w3lName" placeholder="Enter the documents name*"
                               class="contact-input" required="" />
                    </div>
                    <div class="custom-select1" style="width:670px;">
                        <select name="age">
                            <option value="0">Select Age:</option>
                            <option value="a">Below 18</option>
                            <option value="b">18 - 45</option>
                            <option value="c">45+</option>

                        </select>
                    </div>
                    <div>
                        &nbsp;
                    </div>
                    <label class="container1">Male
                        <input type="radio" checked="checked" name="gender" value="male">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container1">Female
                        <input type="radio" name="gender" value="female">
                        <span class="checkmark"></span>
                    </label>

                    <div>
                        &nbsp;
                    </div>
                    <div class="form-input">
                        <textarea name="description" id="w3lMessage" placeholder="Enter the documents description *"
                                  required=""></textarea>
                    </div>
                    <input type="file" name="file" id="w3lSubect" placeholder="Please choose*"
                           class="contact-input" required="" />
                    <button class="btn btn-style mt-sm-3">Add Product</button>
                </form>
            </div>
            <div class="col-lg-5 mt-lg-0 mt-5 pl-xl-5 pl-lg-4">
                <div class="map-iframe">
                    <img src="assets/images/chiled.jpg"
                         width="100%" height="500" frameborder="0" allowfullscreen=""></img>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //contact -->

<!-- footer -->

<script>
    var x, i, j, l, ll, selElmnt, a, b, c;
    /*look for any elements with the class "custom-select1":*/
    x = document.getElementsByClassName("custom-select1");
    l = x.length;
    for (i = 0; i < l; i++) {
        selElmnt = x[i].getElementsByTagName("select")[0];
        ll = selElmnt.length;
        /*for each element, create a new DIV that will act as the selected item:*/
        a = document.createElement("DIV");
        a.setAttribute("class", "select-selected");
        a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
        x[i].appendChild(a);
        /*for each element, create a new DIV that will contain the option list:*/
        b = document.createElement("DIV");
        b.setAttribute("class", "select-items select-hide");
        for (j = 1; j < ll; j++) {
            /*for each option in the original select element,
             create a new DIV that will act as an option item:*/
            c = document.createElement("DIV");
            c.innerHTML = selElmnt.options[j].innerHTML;
            c.addEventListener("click", function (e) {
                /*when an item is clicked, update the original select box,
                 and the selected item:*/
                var y, i, k, s, h, sl, yl;
                s = this.parentNode.parentNode.getElementsByTagName("select")[0];
                sl = s.length;
                h = this.parentNode.previousSibling;
                for (i = 0; i < sl; i++) {
                    if (s.options[i].innerHTML == this.innerHTML) {
                        s.selectedIndex = i;
                        h.innerHTML = this.innerHTML;
                        y = this.parentNode.getElementsByClassName("same-as-selected");
                        yl = y.length;
                        for (k = 0; k < yl; k++) {
                            y[k].removeAttribute("class");
                        }
                        this.setAttribute("class", "same-as-selected");
                        break;
                    }
                }
                h.click();
            });
            b.appendChild(c);
        }
        x[i].appendChild(b);
        a.addEventListener("click", function (e) {
            /*when the select box is clicked, close any other select boxes,
             and open/close the current select box:*/
            e.stopPropagation();
            closeAllSelect(this);
            this.nextSibling.classList.toggle("select-hide");
            this.classList.toggle("select-arrow-active");
        });
    }
    function closeAllSelect(elmnt) {
        /*a function that will close all select boxes in the document,
         except the current select box:*/
        var x, y, i, xl, yl, arrNo = [];
        x = document.getElementsByClassName("select-items");
        y = document.getElementsByClassName("select-selected");
        xl = x.length;
        yl = y.length;
        for (i = 0; i < yl; i++) {
            if (elmnt == y[i]) {
                arrNo.push(i)
            } else {
                y[i].classList.remove("select-arrow-active");
            }
        }
        for (i = 0; i < xl; i++) {
            if (arrNo.indexOf(i)) {
                x[i].classList.add("select-hide");
            }
        }
    }
    /*if the user clicks anywhere outside the select box,
     then close all select boxes:*/
    document.addEventListener("click", closeAllSelect);
</script>


<%@include file="Footer.jsp" %>