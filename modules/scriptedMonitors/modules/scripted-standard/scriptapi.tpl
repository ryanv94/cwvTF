  var settings = {'url': '${url}', 'category': 'performance', 'strategy': 'desktop'};
 
var options = {
 method: 'GET',
 url: 'https://www.googleapis.com/pagespeedonline/v5/runPagespeed?key=' + $secure.PAGESPEED_INSIGHTS_KEY,
 headers: null,
 qs: settings,
 json: true
};
 
$http(options, function (error, response, body) {
 if (!error && response.statusCode == 200) {
   if (response.statusCode == 200) {
     var lighthouseMetrics = body.lighthouseResult.audits.metrics.details.items[0];
 
     $util.insights.set('url', settings.url);
     $util.insights.set('deviceType', settings.strategy);
    
     for (var attributeName in lighthouseMetrics) {
       if ( lighthouseMetrics.hasOwnProperty(attributeName) ) {
         if (!attributeName.includes('Ts')) {
           console.log(attributeName + ": " + lighthouseMetrics[attributeName]);
           $util.insights.set(attributeName, lighthouseMetrics[attributeName]);
         }
       }
     }
    
   } else {
     console.log('Non-200 HTTP response: ' + response.statusCode);
   }
 } else {
   console.log('rsp code: ' + response.statusCode);
   console.log(error);
 }
});
