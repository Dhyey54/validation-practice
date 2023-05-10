import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  post_create() {
    alert("Post Created Successfully")
    console.log("Post created")
  }
  comment_create() {
    alert("Comment Created Successfully")
    console.log("Comment created")
  }
  connect() {
    alert("Hello")
    console.log("Hello!!!")
  }
}
