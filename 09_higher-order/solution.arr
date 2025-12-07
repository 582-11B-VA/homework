use context starter2024
# In programming, the term validator refers to a function that checks whether a given value satisfies a specific criterion. Consider a website where passwords must have a minimum of 8 characters, include at least one special character (@, % or *), and contain no digits. To determine whether a password is valid, we need to implement three validators (one for each criterion), call them with the password, and ensure they all return true.



fun has-8-chars(password :: String) -> Boolean:
  doc: "Determine if password has at least 8 chars."
  string-length(password) >= 8
where:
  has-8-chars("abc") is false
  has-8-chars("12345678") is true
end

fun has-special-char(password :: String) -> Boolean:
  doc: "Determine if password has a special char."
  special-chars = [list: "@", "%", "*"]
  any(
    lam(char): string-contains(password, char) end,
    special-chars)
where:
  has-special-char("abc") is false
  has-special-char("@bc") is true
end

fun has-no-digit(password :: String) -> Boolean:
  doc: "Determine if the password has no digits."
  digits = [list: "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  has-digit = 
    any(
      lam(digit): string-contains(password, digit) end,
      digits)
  not(has-digit)
where:
  has-no-digit("abc") is true
  has-no-digit("ab3") is false
end

fun is-password-valid(password :: String) -> Boolean:
  doc: "Determine if password is valid."
  has-8-chars(password) and has-special-char(password) and has-no-digit(password)
where:
  is-password-valid("@bcdefgh") is true
  is-password-valid("@bcd3fgh") is false
  is-password-valid("@bc") is false
  is-password-valid("@!*") is false
end

fun is-password-valid-2(
    password :: String, 
    validators :: List<(String -> Boolean)>) -> Boolean:
  doc: "Determine if password is valid."
  all(
    lam(validator): validator(password) end,
    validators)
where:
  is-password-valid-2(
    "abc",
    [list: has-8-chars, has-special-char, has-no-digit]) is false
  is-password-valid-2(
    "@bcdefgh",
    [list: has-8-chars, has-special-char, has-no-digit]) is true
  is-password-valid-2(
    "@bcde",
    [list: has-special-char, has-no-digit]) is true
end