package main

import(
   "fmt"
   "log"
   "net/http"
   "path"
   "flag"
)

func main(){

	portPtr := flag.String("port","8080", "default port of http server")

	flag.Parse()

	addr := fmt.Sprintf(":%s", *portPtr)

	http.HandleFunc("/", handler) // Each request calls the handler

	log.Fatal(http.ListenAndServe(addr, nil))
}


// handler echoes the Path component of the request URL r

func handler(w http.ResponseWriter, r *http.Request){
         
	fmt.Fprintf(w, "Welcome to Golang %q\n", path.Base(r.URL.Path))
}
