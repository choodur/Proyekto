// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function()
{

  $("#project-options-list").change(function()
  {
    loc = $(this).val();
    if (loc != null)
      window.location = loc;
  });

  $("#radio-set").buttonset();
  
  //////////// Forms
  
  $("#user_admin").change(function()
  {
    if($(this).is(":checked"))
        $(".form_role").slideUp();
    else
        $(".form_role").slideDown();
  });

  $("#user_birthdate").attr("readonly", "readonly")

  $("#user_birthdate").datepicker(
  {
    dateFormat: 'yy-mm-dd',
    changeMonth: true,
    changeYear: true,
    yearRange: '1975:2005'
  });  

	$("#date").attr("readonly", "readonly")

  $("#date").datepicker(
  {
    dateFormat: 'yy-mm-dd',
    changeMonth: true,
    changeYear: true,
    yearRange: '2010:2050'
  });
});
