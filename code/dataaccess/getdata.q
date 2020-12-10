//- generic 'getdata' function

getdata:{[inputparams]
  inputparams:.checkinputs.checkinputs inputparams;
  queryparams:.eqp.extractqueryparams[inputparams;.eqp.queryparams];
  query:.queryorder.orderquery queryparams;
  :executequery query;
 };

executequery:{[query]
  :exec raze .servers.gethandlebytype\:[proctype;`any]@'query from query;
 };
