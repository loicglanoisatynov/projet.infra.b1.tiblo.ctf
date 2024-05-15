package main

import (
	"fmt"
	"net/http"
)

var guessed = false

func main() {
	// Serve the HTML file and handle requests
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		http.ServeFile(w, r, "index.html")
	})

	// Handle the guess endpoint
	http.HandleFunc("/guess", handleGuess)

	// Start the server
	fmt.Println("Server listening on port 8080")
	http.ListenAndServe(":8080", nil)
}

func handleGuess(w http.ResponseWriter, r *http.Request) {
	correctInput := "hello"

	r.ParseForm()
	guess := r.FormValue("guess")

	if guess == correctInput && !guessed {
		fmt.Fprintf(w, "Congratulations! You won!\n")
		guessed = true
	} else if guess == correctInput && guessed {
		fmt.Fprintf(w, "Sorry, your input is correct, but you were not the first.\n")
	} else {
		fmt.Fprintf(w, "Sorry, your input is incorrect. Please try again.\n")
	}
}
