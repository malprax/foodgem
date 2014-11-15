foodgemlogin
============

Admin and customer login system for foodgem

<nav class="navbar navbar-default navbar-fixed-top navbar-shrink">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand page-scroll" href="http://foodgem.com/beta/" style="font-size: 60px;">FoodGem</a>
        </div>
        <% unless params[:controller] == 'management' %>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right" style="font-size: 12px;">
                <li class="hidden">
                    <a href="#page-top"></a>
                </li>
                <li>
                    <a class="page-scroll" href="http://foodgem.com/beta/index.html#services">How It Works</a>
                </li>
                <li>
                    <a class="page-scroll" href="http://foodgem.com/beta/index.html#portfolio">Restaurants</a>
                </li>
                <li>
                    <a class="page-scroll" href="http://foodgem.com/mag/">Magazine</a>
                </li>
                <li>
                    <a class="page-scroll" href="http://foodgem.com/beta/index.html#philanthropy">Giving Back</a>
                </li>
                <li>
                    <a class="page-scroll" href="http://FoodGem.herokuapp.com">Free Food Deals</a>
                </li>
                <li>
                    <a class="page-scroll" href="http://foodgem.com/beta/video.html">Watch Video</a>
                </li>
                <li>
                    <a class="page-scroll" href="http://foodgem.com/beta/subscribe.html" style="color: #fed136;">Join Now</a>
                </li><!--
                <li>
                    <a class="page-scroll" href="" style="color: #fed136;">Log In</a>
                </li>-->
            </ul>
        </div>
        <% end %>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>


choose preference

choose area 
zip 
email
phone number

choose day
  lunch delivery
  dinner delivery

delivery address
  first name
  street_address
  apt
  city
  newyork
  zip
  phone number
  email
billing information
  @paypal
order summary
  foodgembox 
  tax
  default tip
  total
  coupon code



