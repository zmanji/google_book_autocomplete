$(document).ready ->
  console.log("Whatevs")
  autocomplete_options =
    source: (request,callback) ->
      term = request["term"]

      google_ops =
        projection: "lite"
        printType: "books"

      $.getJSON("https://www.googleapis.com/books/v1/volumes",
      google_ops,
      (data) ->
        console.log(data)
      )

      callback(["BUTS"])

  $("#book-input").autocomplete(autocomplete_options)

