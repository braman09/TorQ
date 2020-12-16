// high level api functions for data retrieval

getdata:{[inputparams]                                                                       // [input parameters dict] generic function acting as main access point for data retrieval
  inputparams:.checkinputs.checkinputs inputparams;                                          // validate input passed to getdata
  queryparams:.eqp.extractqueryparams[inputparams;.eqp.queryparams];                         // extract validated parameters from input dictionary
  query:.queryorder.orderquery queryparams;                                                  // re-order the passed parameters to build an efficient query
  :0i query;                                                                                 // execute query
 };