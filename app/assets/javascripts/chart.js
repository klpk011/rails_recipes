type: 'bar',

data: {
  "labels": ["Guest","VIP 第一期","VIP 第二期"],

  "datasets":[
  {"label": "# of Registrations",

    "data": [324,346,330],

    "backgroundColor":["rgba(255, 99, 132, 0.2)", "rgba(54, 162, 235, 0.2)", "rgba(255, 206, 86, 0.2)","rgba(75,192,192,0.2)","rgba(153,102,255,0.2)","rgba(255,159,64,0.2)"],

    "boederWidth": 1

  }
 ]
},
options: {
  scales:{
    yAxes: [{
      tickets:{
        beginAtZero:true
      }
    }]
  }
}
