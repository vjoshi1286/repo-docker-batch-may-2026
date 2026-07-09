repo-docker-batch-may-2026
Repository for docker batch may 2026

#Documentation
##Go Program
	
  How to build [Source Directory] (./vaibhav)

- Use the go build command to run as below
   `go build EchoWebServer.go`

- Once built, run it in the background as below
   
	`./EchoWebServer -port=<port_number> &`

  Default port number is 8080/
  
  This should start a web server at http://localhost:<port_number> 
  and should print the path fragment when you change the URL
  
