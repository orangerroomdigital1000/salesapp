
var occ_data;
var income_data;
var soi_data;
var bank_data;
var fund_data;
var asf_data;
var country_data;
/*  Occupation */
var settings = {
    "url": "https://daofservice.hblasset.com/DigitalAccountOpenTillVerify.asmx?op=GetOccupation",
    "method": "POST",
    "timeout": 0,
    "headers": {
      "Content-Type": "text/xml"
    },
    "data": "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n  <soap:Body>\r\n    <GetOccupation xmlns=\"http://tempuri.org/\" />\r\n  </soap:Body>\r\n</soap:Envelope>",
  };
  
  $.ajax(settings).done(function (r) {
  
  occ_data = JSON.parse(r.getElementsByTagName('GetOccupationResult')[0].textContent).Table;
  });



/*  Annual income */
var settings = {
  "url": "https://daofservice.hblasset.com/DigitalAccountOpenTillVerify.asmx?op=GetSalaryAnnualIncome",
  "method": "POST",
  "timeout": 0,
  "headers": {
    "Content-Type": "text/xml"
  },
  "data": "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n  <soap:Body>\r\n    <GetSalaryAnnualIncome xmlns=\"http://tempuri.org/\" />\r\n  </soap:Body>\r\n</soap:Envelope>",
};

$.ajax(settings).done(function (ai) {
  income_data = JSON.parse(ai.getElementsByTagName('GetSalaryAnnualIncomeResult')[0].textContent).Table;
  
});


/*  Source of income */
var settings = {
  "url": "https://daofservice.hblasset.com/DigitalAccountOpenTillVerify.asmx?op=GetSourceOfIncome",
  "method": "POST",
  "timeout": 0,
  "headers": {
    "Content-Type": "text/xml"
  },
  "data": "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n  <soap:Body>\r\n    <GetSourceOfIncome xmlns=\"http://tempuri.org/\" />\r\n  </soap:Body>\r\n</soap:Envelope>",
};

$.ajax(settings).done(function (soi) {
  soi_data = JSON.parse(soi.getElementsByTagName('GetSourceOfIncomeResult')[0].textContent).Table;
  
});


/*  Bank Name */
var settings = {
  "url": "https://daofservice.hblasset.com/DigitalAccountOpenTillVerify.asmx?op=GetBank",
  "method": "POST",
  "timeout": 0,
  "headers": {
    "Content-Type": "text/xml"
  },
  "data": "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n   <soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n   <soap:Body>\r\n   <GetBank xmlns=\"http://tempuri.org/\" />\r\n   </soap:Body>\r\n   </soap:Envelope>",
};

$.ajax(settings).done(function (bank) {
  bank_data = JSON.parse(bank.getElementsByTagName('GetBankResult')[0].textContent).Table;
});


/*  Fund Name */
var settings = {
  "url": "https://daofservice.hblasset.com/DigitalAccountOpenTillVerify.asmx?op=GetFund",
  "method": "POST",
  "timeout": 0,
  "headers": {
    "Content-Type": "text/xml"
  },
  "data": "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n  <soap:Body>\r\n    <GetFund xmlns=\"http://tempuri.org/\" />\r\n  </soap:Body>\r\n</soap:Envelope>",
};

$.ajax(settings).done(function (fund) {
  fund_data = JSON.parse(fund.getElementsByTagName('GetFundResult')[0].textContent).Table;
});

/*  Account Summary Frequency */
var settings = {
  "url": "https://daofservice.hblasset.com/DigitalAccountOpenTillVerify.asmx?op=GetAccountStatementFrequency",
  "method": "POST",
  "timeout": 0,
  "headers": {
    "Content-Type": "text/xml"
  },
  "data": "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n  <soap:Body>\r\n    <GetAccountStatementFrequency xmlns=\"http://tempuri.org/\" />\r\n  </soap:Body>\r\n</soap:Envelope>",
};

$.ajax(settings).done(function (asf) {
  asf_data = JSON.parse(asf.getElementsByTagName('GetAccountStatementFrequencyResult')[0].textContent).Table;
});

/*  Country */
var settings = {
  "url": "https://daofservice.hblasset.com/DigitalAccountOpenTillVerify.asmx?op=GetCountry",
  "method": "POST",
  "timeout": 0,
  "headers": {
    "Content-Type": "text/xml"
  },
  "data": "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n      <soap12:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\">\r\n      <soap12:Body>\r\n      <GetCountry xmlns=\"http://tempuri.org/\" />\r\n      </soap12:Body>\r\n      </soap12:Envelope>",
};

$.ajax(settings).done(function (country) {
  country_data = JSON.parse(country.getElementsByTagName('GetCountryResult')[0].textContent).Table;
  //console.log(country_data);
});


