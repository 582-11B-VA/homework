use context starter2024
width = 50
height = 100 / 3

radius = height / 3

red-circle = circle(radius, "solid", "red")
green-rectangle = rectangle(width, height, "solid", "dark-green")

bangladesh-flag =
  overlay-onto-offset(
    red-circle,
    "right",
    "center",
    radius * -1,
    0,
    green-rectangle,
    "center",
    "center"
    )


pole = rectangle(width / 40, height * 2, "solid", "brown")

beside-align(
  "top",
  pole,
  bangladesh-flag)