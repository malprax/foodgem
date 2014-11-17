  //
// <div class="goarea col-md-4 col-sm-6 portfolio-item">
//                       <a class="portfolio-link selecttrack" data-toggle="modal">
//                           <div class="portfolio-hover">
//                               <div class="portfolio-hover-content">
//                                   <i class="fa fa-plus fa-3x"></i>
//                               </div>
//                           </div>
//                           <img src="http://www.abc.net.au/news/image/853746-3x2-940x627.jpg" class="img-responsive" alt="">
//                       </a>
//
//                       <div class="portfolio-caption">
//
//                           <h4>Meat Lovers</h4>
//
//                           <p class="text-muted">Burgers, Cheese-Steaks, Sausage</p>
//
//                           <a href="./rating.html" class="starmargin" style="display: block;font-family: FontAwesome; margin:0 auto; text-decoration: none;"><i class="fa fa-star starclr"></i><i class="fa fa-star starclr"></i><i class="fa fa-star starclr"></i><i class="fa fa-star starclr"></i><i class="fa fa-star starclr"></i> [116 <i class="fa fa-group"></i>]<br></a>
//
//                       </div>
//
//                   </div>
//
$(document).on('click', '.nama', function() {
    $('#student_name').val(jQuery(this).attr('data-value'));
    $('#new_student').submit();
  });
  
  
  $("#zip").on("click", "input[id=zip]",function() {
    var newValue = $('#zip').val();
    $("#zip").html(newValue);
  });
  
  $('#alert').click(function () {
    alert('Hello, world!');
    return false;
  });


// <form accept-charset="UTF-8" action="/students" class="new_student" data-remote="true" id="new_student" method="post"><div style="display:none"><input name="utf8" type="hidden" value="✓"></div>
//
//   <div class="field">
//     <ul>
//       <li><a href="#" data-value="Aulia" class="nama">Aulia</a></li>
//       <li><a href="#" data-value="Aslim" class="nama">Aslim</a></li>
//       <li><a href="#" data-value="Ramli" class="nama">Ramli</a></li>
//       <li><a href="#" data-value="Iqbal" class="nama">Iqbal</a></li>
//     </ul>
//     <br>
//     <input id="student_name" name="student[name]" type="hidden">
//   </div>
//   <div class="actions">
//     <input name="commit" type="submit" value="Create Student">
//   </div>
// </form>
//
//   $(document).on('click', '.nama', function() {
//       $('#student_name').val(jQuery(this).attr('data-value'));
//       $('#new_student').submit();
//     });
