What are the common HTTP status codes?

200 OK - Request was successful

300 Multiple Choices - The requested resource has different choices and cannot be resloved into one request.

301 Moved Permanently - The requested resources has been assigned a new permanent URI

302 Found - resides temporarily under a different URI

304 Not Modified

307 Temporary Redirect - Resides temporarily under a different URI

400 Bad Request - Could not be understood due to malformed syntax

401 Unauthorized - Request requires user authenticiation

403 Forbidden - Server refuses to fulfill request.

404 Not Found - Server has not found anything matching the requested URI

410 Gone - Request is no longer available and there is no forwarding address 

500 Internal Server Error - Server encountered an unexpected condition which prevented it from fulfilling the request.

501 Not implemented - The server does not support hte functionality required to fulfill the request.

503 - Service Unavailable - The web server is unable to handle the HTTP request

550 - Permission Denied - The account you have cu


What is the difference between a GET and a POST request?
GET Request - Requests data from a specified source. A GET request
can be bookmarked, distributed and shared, emains in the browser history, and gets cached. GET requests should never be used for sending senitive information. They should only be used for safe actions and also in AJAX environments

POST Request - Submits data to be processed to a specific resource. It has a 2 step process (it sends heaers first and then data). It is much safer since parameters are not saved in browser history and it is not cached. POST requests are used ofr destructive actions, sending sensitive data, and for unsafe actions.

What is a cookie?
An HTTP cookie is a small piece of data sent from a website and stored in the user's web browser while the user is browsing.
Cookies are passed as HTTP headers both in the request and the response.

