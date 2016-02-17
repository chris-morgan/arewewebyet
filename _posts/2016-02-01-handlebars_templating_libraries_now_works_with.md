---
layout: news

title: "Handlebars templating libraries now works with Serde data"
date: 2016-02-01
source:
  author: sunng
  link:
    url: "https://www.reddit.com/r/rust/comments/43j6ei/handlebars_templating_libraries_now_works_with/"
    name: "Rust Users Forum"

tags:
 - templates
 - serde
 - handlebars
 - serializer
 - json
---

Just a quick update on my handlebars libraries: You can now use serde for template data.

This is implemented via a feature called `serde_type`. Internally we use `serde_json::value::Value` as data type which is pretty similar to the `Json` enum in rustc_serialize. Anything implements `serde::ser::Serialize` can be rendered. To use serde for handlebars-iron, configure your Cargo.toml like this:

```
 [features]
  default = ["handlebars-iron/serde_type"]
```

The API is fully compatible with default one so you don't have to change any code except the data type.

handlebars core: [github.com/sunng87/handlebars-rust](https://github.com/sunng87/handlebars-rust)
handlebar iron middleware: [github.com/sunng87/handlebars-iron](https://github.com/sunng87/handlebars-iron)
