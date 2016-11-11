200 OK (which just means everything went smoothly)
300 Multiple Choices (has multiple resources and cant be resolved to one)
301 Moved Permanently (requested resource has been assigned a new permanent URI)
302 Found (requested resource resides temporarily under a different URI. 
	Since the redirection might be altered on occasion, the client SHOULD continue 
	to use the Request-URI for future requests.)
304 Not Modified (If the client has performed a conditional GET request and 
	access is allowed, but the document has not been modified, the server SHOULD 
	respond with this status code.) 
307 Temporary Redirect (requested resource resides temporarily under a different URI.)
400 Bad Request (Request wasn't able to go through due to bad request)
401 Unauthorized (request requires user authentication. The response MUST 
	include a WWW-Authenticate header field containing a challenge applicable 
	to the requested resource.)
403 Forbidden (The server understood the request, but is refusing to fulfill it.
	 Authorization will not help and the request SHOULD NOT be repeated.)
404 Not Found (page you entered was not found)
410 Gone (permanently  requested resource is no longer available at the server and no 
	forwarding address is known.)
500 Internal Server Error (server encountered an unexpected condition which prevented it 
	from fulfilling the request.)
501 Not Implemented (server does not support the functionality required to fulfill 
	the request.)
503 Service Unavailable (Your web server is unable to handle your HTTP request at the 
	time.) 
550 Permission denied (The server is stating the account you have currently logged in 
	as does not have permission to perform the action you are attempting.)

Two commonly used methods for a request-response between a client and server are: GET and 
POST.
	
GET - Requests data from a specified resource
	Use POST for destructive actions such as creation  editing, and deletion
POST - Submits data to be processed somewhere specific
	Use GET when it's safe to allow a person to call an action. So a URL like:
	
POST is also more secure than GET, because you aren't sticking information into a URL. 
And so using GET as the method for an HTML form that collects a password or other 
sensitive information is not the best idea.

A cookie is a small piece of data sent from a website and stored on the user's computer 
by the user's web browser while the user is browsing. 
A cookie is the term given to describe a type of message that is given to a Web browser
by a Web server.  