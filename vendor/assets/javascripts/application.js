// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(function() {
  $("#discipline_teacher_tokens").tokenInput("/teachers.json", {
    crossDomain: false,
    prePopulate: $("#discipline_teacher_tokens").data("pre"),
    theme: 'facebook',
    hintText: 'Введите имя преподавателя',
    noResultsText: 'Не найдено',
    searchingText: "Поиск...",
    tokenLimit: "1"
  });
});
$(function() {
  $("#discipline_group_tokens").tokenInput("/groups.json", {
    crossDomain: false,
    prePopulate: $("#discipline_group_tokens").data("pre"),
    theme: 'facebook',
    hintText: 'Введите имя преподавателя',
    noResultsText: 'Не найдено',
    searchingText: "Поиск..."
    tokenLimit: "1"
  });
});