# Homework: Tests

For this assignment, your task is to define, document and test functions
to help a freelancer communicate with their clients about the price of
certain projects. Remember to start with two example expressions, then
follow the [steps].

1. Clients often contact our freelancer to enquire about their _day
   rate_. But the freelancer only knows their _hourly rate_. Create a
   `day_rate` function that estimates their day rate given an hourly
   rate. The freelancer works 8 hours per day.

2. Project managers sometimes contact our freelancer to work on projects
   with a _fixed budget_. Create a `days_in_budget` function that
   calculates the number of days they would work until the budget is
   exhausted. When called, the function receives the fixed budget and
   the freelancer's hourly rate. The result must be rounded down to the
   nearest whole number.

3. When clients hire our freelancer for projects spanning over multiple
   months, they get a _discount_ for every _full month_. The remaining
   days are billed at day rate. Given that every month has 22 billable
   days, create a `price_with_discount` function that estimates the cost
   for such projects. When called, the function receives the hourly
   rate, the number of billable days the project contains, and a monthly
   discount rate. The result must be rounded up to the nearest whole
   number.

The built-in functions [num-ceiling] and [num-floor] might be useful.

[steps]: https://github.com/582-11B-VA/lecture-notes/tree/main/04_functions#defining-functions
[num-ceiling]: https://pyret.org/docs/latest/numbers.html#%28part._numbers_num-ceiling%29
[num-floor]: https://pyret.org/docs/latest/numbers.html#%28part._numbers_num-floor%29
