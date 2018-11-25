package go_restS

import (
	"github.com/gorilla/mux"
	"net/http"
	"fmt"
	"encoding/json"
)

func init() {
	r := mux.NewRouter()
	r.HandleFunc("/api/users/{id:[0-9]+}", UserHandler).Methods("GET")
	r.Host("localhost")
	http.Handle("/", r)
}

type Reply struct {
	Message string `json:"message"`
}

func UserHandler(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	id := vars["id"]

	reply := Reply {
		Message: "id(" + id + ")を取得しました",
	}

	json, _ := json.Marshal(reply)

	fmt.Fprint(w, string(json))
}
