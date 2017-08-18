//;(function($) {
//  
//  var openModal = function(tooltip){
//
//    var dialog = $(tooltip).appendTo(document.body);
//    return dialog
//  }
//
//  var closeModal = function(){
//
//  }
//
//  $.fn.myPlugin = function() {
//    console.log('hi')
//  }
//  $.modalAlert = function(content) {
//    var tooltip = ''
//
//    //var dialog = openModal(tooltip)
//    //$().on('click', '') {
//    //  closeModal()
//    //}
//    console.log("test")
//    alert("heloo")
//
//  }
//
//})(jQuery);



+ function ($) {
   "use strict";
     var openModal = function (tpl) {
         var mask = $("<div class='alo7-mask'></div>").appendTo(document.body);
             mask.show();
                 var dialog = $(tpl).appendTo(document.body);
                     dialog.show();
                         mask.addClass("alo7-mask--visible");
                             dialog.addClass("alo7-dialog--visible");
                                 return dialog;
                                   };

                                     var closeModal = function () {
                                         $('.alo7-mask--visible').removeClass('alo7-mask--visible').on('transitionend',function () {
                                               $(this).remove();
                                                   });
                                                       $('.alo7-dialog--visible').removeClass('alo7-dialog--visible').on('transitionend',function () {
                                                             $(this).remove();
                                                                 });
                                                                   };

                                                                     $.awjAlert = function(text){
                                                                         var tpl = '<div class="alo7-dialog">' +
                                                                                     '<div class="alo7-dialog__header">' +
                                                                                                 '<a href="javascript:;" class="alo7-dialog__close"><i class="alo7-dialog-img__close"></i></a>' +
                                                                                                             '</div>' +
                                                                                                                         '<div class="alo7-dialog__content">' +
                                                                                                                                     '<i class="alo7-dialog-img__warning"></i>' +
                                                                                                                                                 '<span>' + text + '</span>' + '</div>' +
                                                                                                                                                             '</div>'
                                                                                                                                                                 ;
                                                                                                                                                                     var dialog = openModal(tpl);
                                                                                                                                                                         dialog.on('click','.alo7-dialog__close', function () {
                                                                                                                                                                               closeModal();
                                                                                                                                                                                   });
                                                                                                                                                                                       return dialog;
                                                                                                                                                                                         }
                                                                                                                                                                        }($);

