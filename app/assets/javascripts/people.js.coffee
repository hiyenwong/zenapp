# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$("#pw_chart").highcharts('StockChart',
  chart:{}
  title:{}
  series:[{
    name: gon.person_name,
    data: gon.person_weight_records
    }]
  )

$('#bp_chart').highcharts('StockChart',
  chart:{}
  title:{}
  series:[{
    name: "psys",
    data: gon.person_psys
    }
  ]
  )
