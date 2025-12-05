# Homework: Higher-order functions

In programming, the term **validator** refers to a function that checks
whether a given value satisfies a specific criterion. Consider a website
where passwords must have a minimum of 8 characters, include at least
one special character (@, % or *), and contain no digits. To determine
whether a password is valid, we need to implement three validators (one
for each criterion), call them with the password, and ensure they all
return true.

For this assignment, your task is to write a function named
`is-password-valid` that determines whether a given password is valid
according to the criteria above.

Once your function works correctly, you can try to refactor it so that
it takes a list of validators instead of hard-coding them inside the
function.
