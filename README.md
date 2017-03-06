# 01-logic-programming

The goal of these exercises if to simulate the students within the Semantics course
using [logic programming](https://en.wikipedia.org/wiki/Logic_programming).
We will use [LogicKit](https://github.com/kyouko-taiga/LogicKit),
a [MicroKanren](http://minikanren.org) implementation in [Swift](http://minikanren.org).

## Define students

Using the [example](https://github.com/kyouko-taiga/LogicKit/blob/master/Examples/Pokemon/main.swift),
define all the students.

## Find a student

Write a predicate `is_student(who: Term) -> Goal` that returns `true` if its parameter is a student,
or `false` otherwise.

## Find all the students

Write a function `all_students() -> [Student]` that returns all the students.

## Define attendance

Attendance is a relation between a student, a course and a year.
Define it.

## Find attendances

Write a goal `attends(who: Term, course: Term, year: Term) -> Goal` that returns `true`
for the correct attendances.

## Find all students in Semantics 2017

## Find all students that have been or are in the Semantics course

## Find all courses that a student has taken, and their year
