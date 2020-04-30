import gleam/should
import gleam/atom
import gleam/http

pub fn parse_method_test() {
  "Connect"
  |> http.parse_method
  |> should.equal(Ok(http.Connect))

  "CONNECT"
  |> http.parse_method
  |> should.equal(Ok(http.Connect))

  "connect"
  |> http.parse_method
  |> should.equal(Ok(http.Connect))

  "Delete"
  |> http.parse_method
  |> should.equal(Ok(http.Delete))

  "DELETE"
  |> http.parse_method
  |> should.equal(Ok(http.Delete))

  "delete"
  |> http.parse_method
  |> should.equal(Ok(http.Delete))

  "Get"
  |> http.parse_method
  |> should.equal(Ok(http.Get))

  "GET"
  |> http.parse_method
  |> should.equal(Ok(http.Get))

  "get"
  |> http.parse_method
  |> should.equal(Ok(http.Get))

  "Head"
  |> http.parse_method
  |> should.equal(Ok(http.Head))

  "HEAD"
  |> http.parse_method
  |> should.equal(Ok(http.Head))

  "head"
  |> http.parse_method
  |> should.equal(Ok(http.Head))

  "Options"
  |> http.parse_method
  |> should.equal(Ok(http.Options))

  "OPTIONS"
  |> http.parse_method
  |> should.equal(Ok(http.Options))

  "options"
  |> http.parse_method
  |> should.equal(Ok(http.Options))

  "Patch"
  |> http.parse_method
  |> should.equal(Ok(http.Patch))

  "PATCH"
  |> http.parse_method
  |> should.equal(Ok(http.Patch))

  "patch"
  |> http.parse_method
  |> should.equal(Ok(http.Patch))

  "Post"
  |> http.parse_method
  |> should.equal(Ok(http.Post))

  "POST"
  |> http.parse_method
  |> should.equal(Ok(http.Post))

  "post"
  |> http.parse_method
  |> should.equal(Ok(http.Post))

  "Put"
  |> http.parse_method
  |> should.equal(Ok(http.Put))

  "PUT"
  |> http.parse_method
  |> should.equal(Ok(http.Put))

  "put"
  |> http.parse_method
  |> should.equal(Ok(http.Put))

  "Trace"
  |> http.parse_method
  |> should.equal(Ok(http.Trace))

  "TRACE"
  |> http.parse_method
  |> should.equal(Ok(http.Trace))

  "trace"
  |> http.parse_method
  |> should.equal(Ok(http.Trace))

  "thingy"
  |> http.parse_method
  |> should.equal(Error(Nil))
}

external fn to_charlist(String) -> List(Int) =
  "unicode" "characters_to_list"

pub fn method_from_erlang_test() {
  "Connect"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Connect))

  "CONNECT"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Connect))

  "connect"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Connect))

  "Delete"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Delete))

  "DELETE"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Delete))

  "delete"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Delete))

  "Get"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Get))

  "GET"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Get))

  "get"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Get))

  "Head"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Head))

  "HEAD"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Head))

  "head"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Head))

  "Options"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Options))

  "OPTIONS"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Options))

  "options"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Options))

  "Patch"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Patch))

  "PATCH"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Patch))

  "patch"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Patch))

  "Post"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Post))

  "POST"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Post))

  "post"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Post))

  "Put"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Put))

  "PUT"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Put))

  "put"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Put))

  "Trace"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Trace))

  "TRACE"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Trace))

  "trace"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Ok(http.Trace))

  "thingy"
  |> atom.create_from_string
  |> http.method_from_erlang
  |> should.equal(Error(Nil))

  "Connect"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Connect))

  "CONNECT"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Connect))

  "connect"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Connect))

  "Delete"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Delete))

  "DELETE"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Delete))

  "delete"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Delete))

  "Get"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Get))

  "GET"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Get))

  "get"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Get))

  "Head"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Head))

  "HEAD"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Head))

  "head"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Head))

  "Options"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Options))

  "OPTIONS"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Options))

  "options"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Options))

  "Patch"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Patch))

  "PATCH"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Patch))

  "patch"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Patch))

  "Post"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Post))

  "POST"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Post))

  "post"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Post))

  "Put"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Put))

  "PUT"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Put))

  "put"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Put))

  "Trace"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Trace))

  "TRACE"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Trace))

  "trace"
  |> http.method_from_erlang
  |> should.equal(Ok(http.Trace))

  "thingy"
  |> http.method_from_erlang
  |> should.equal(Error(Nil))

  "Connect"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Connect))

  "CONNECT"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Connect))

  "connect"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Connect))

  "Delete"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Delete))

  "DELETE"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Delete))

  "delete"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Delete))

  "Get"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Get))

  "GET"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Get))

  "get"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Get))

  "Head"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Head))

  "HEAD"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Head))

  "head"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Head))

  "Options"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Options))

  "OPTIONS"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Options))

  "options"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Options))

  "Patch"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Patch))

  "PATCH"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Patch))

  "patch"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Patch))

  "Post"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Post))

  "POST"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Post))

  "post"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Post))

  "Put"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Put))

  "PUT"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Put))

  "put"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Put))

  "Trace"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Trace))

  "TRACE"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Trace))

  "trace"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Ok(http.Trace))

  "thingy"
  |> to_charlist
  |> http.method_from_erlang
  |> should.equal(Error(Nil))
}

pub fn method_to_string_test() {
  http.Connect
  |> http.method_to_string
  |> should.equal("connect")

  http.Delete
  |> http.method_to_string
  |> should.equal("delete")

  http.Get
  |> http.method_to_string
  |> should.equal("get")

  http.Head
  |> http.method_to_string
  |> should.equal("head")

  http.Options
  |> http.method_to_string
  |> should.equal("options")

  http.Patch
  |> http.method_to_string
  |> should.equal("patch")

  http.Post
  |> http.method_to_string
  |> should.equal("post")

  http.Put
  |> http.method_to_string
  |> should.equal("put")

  http.Trace
  |> http.method_to_string
  |> should.equal("trace")
}