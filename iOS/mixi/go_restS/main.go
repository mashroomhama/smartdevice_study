package main

import (
    "github.com/ant0ine/go-json-rest/rest"
    "log"
    "net/http"
    "time"
    "math/rand"
)

func main() {
    api := rest.NewApi()
    api.Use(rest.DefaultDevStack...)
    api.SetApp(rest.AppSimple(func(w rest.ResponseWriter, r *rest.Request) {
        w.WriteJson(add())
    }))
    log.Fatal(http.ListenAndServe(":8080", api.MakeHandler()))
}

func add() map[string]string{
    rand.Seed(time.Now().UnixNano())
    var i = rand.Intn(10)
    if i % 2 == 0 {
        return map[string]string{"Body": "https://fujifilm.jp/personal/digitalcamera/x/fujinon_lens_xf16mmf14_r_wr/sample_images/img/index/pic_04.jpg"}
    } else{
        return map[string]string{"Body": "https://fujifilm.jp/personal/digitalcamera/x/fujinon_lens_xf16mmf14_r_wr/sample_images/img/index/ff_xf16mmf14_r_wr_005.JPG"}
    }
}
