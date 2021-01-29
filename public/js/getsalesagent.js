/* Agent */

var agent_data;
var settings = {
  "url": "https://daofservice.hblasset.com/DigitalAccountOpenTillVerify.asmx?op=GetSalesAgent",
  "method": "POST",
  "timeout": 0,
  "headers": {
    "Content-Type": "text/xml"
  },
  "data": "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n  <soap:Body>\r\n    <GetSalesAgent xmlns=\"http://tempuri.org/\">\r\n    <AgentCode>"+ag_code+"</AgentCode>\r\n    </GetSalesAgent>\r\n  </soap:Body>\r\n</soap:Envelope>",
};

$.ajax(settings).done(function (response) {
    agent_data = JSON.parse(response.getElementsByTagName('GetSalesAgentResult')[0].textContent).Table;
    $.ajax({
        type: "get",
        url: "/check",
        data: {agents : agent_data },
        success: function(data){
            //console.log(data);
        }
      });
    //console.log(agent_data);




});