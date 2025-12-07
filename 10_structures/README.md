# Homework: Structures

For this assignments, your goal is to implement the following data
structures and functions to model a task management application.

1. Define a new type of data structure called `Task` with fields for ID,
   name, description, and a boolean indicating whether it is done.
2. Define another data type called `TaskStore` with a list of tasks.
3. Write a function named `add-task` that adds a new task with the given
   name and description to a given task store. The task's ID should be
   set to the total number of tasks plus one.
4. Write a function named `search-tasks` that returns tasks from a given
   task store whose names include a specified search query.
5. Write a function named `complete-task` that takes a task store and an
   ID, and marks the corresponding task as done.
