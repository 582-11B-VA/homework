use context starter2024

# A function that applies the provincial and federal taxes to a given subtotal. In Quebec, the federal tax (GST) is 5%, and the provincial tax (QST) is 9.975%.

fun calc-total(subtotal :: Number) -> Number:
  doc: "Apply taxes to the given subtotal."
  subtotal + (0.05 * subtotal) + (0.09975 * subtotal)
end

# A function that turns a given sentence into a question. A sentence always ends with a period, while a question ends with a question mark. Be careful: a sentence may contain other periods besides the final one (e.g.: "J.D. Salinger is an author.").

fun question(sentence :: String) -> String:
  doc: "Turn a given sentence into a question."
  period-index = string-length(sentence) - 1
  string-append(string-substring(sentence, 0, period-index), "?")
end