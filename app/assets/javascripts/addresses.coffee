# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#address_postcode").jpostal({
    postcode : [ "#adress_postcode" ],
    address  : {
                  "#address_prefecture_code" : "%3",
                  "#address_address_city"            : "%4",
                  "#address_address_street"          : "%5%6%7"
                }
  })
