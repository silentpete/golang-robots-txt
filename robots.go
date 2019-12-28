package main

import (
	"fmt"
	"net/http"
)

func robotsHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "User-agent: *\nDisallow: /\n")
}

func main() {
	http.HandleFunc("/robots.txt", robotsHandler)
	http.ListenAndServe(":8081", nil)
}
