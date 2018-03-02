package main

import (
	"fmt"
	"net/http"
)

func landing(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "User-agent: *\nDisallow: /")
}

func main() {
	http.HandleFunc("/robots.txt", landing)
	http.ListenAndServe(":8081", nil)
}
