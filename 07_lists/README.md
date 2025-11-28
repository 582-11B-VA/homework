# Homework: Lists

A **Uniform Resource Locator** (**URL**) is a text string that specifies
where a resource (such as a web page, image, or video) can be found on
the Internet. A URL is composed of different parts, some mandatory and
others optional:

![URL anatomy](https://developer.mozilla.org/en-US/docs/Learn_web_development/Howto/Web_mechanics/What_is_a_URL/mdn-url-all.png)

Your task for this assignment is to implement a function named
`parse-url` that tranform a given URL into a list of its given parts.
Here are a few examples:

```pyret
parse-url("http://www.example.com")
  is [list: "http", "www.example.com"]
parse-url("http://www.example.com:80")
  is [list: "http", "www.example.com", "80"]
parse-url("http://www.example.com/path/to/myfile.html")
  is [list: "http", "www.example.com", "/path/to/myfile.html"]
```

Note that Pyret comes with a [string-split] function.

[string-split]: https://pyret.org/docs/latest/strings.html#%28part._strings_string-split%29
