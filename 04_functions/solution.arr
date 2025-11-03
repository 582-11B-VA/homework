use context starter2024
# A function that determines the weight of a given object on the Moon. On the Moon, an object weighs one sixth of its weight on Earth.

fun moon-weight(earth-weight):
    earth-weight / 6
end

# A function that produces the greeting "Hi <name>!", where <name> is the name of a given person.

fun greet(name):
  string-append(string-append("Hi ", name), "!")
end

# A function that calculates the total price of a given order of personalized pencils with a message. Each pencil costs 25 cents, plus 2 additional cents for each character in the message, including spaces.

fun order-total(qty, msg):
  unit-cost = 25
  qty * (unit-cost + msg-cost(msg))
end

fun msg-cost(msg):
  char-cost = 2
  char-cost * string-length(msg)
end

