A place for interview questions/topics.

### Topics

#### Functional Programming
A programming paradigm based on functions whose outputs depend solely
on their inputs, not on any saved state.  We should say that it aims
to eliminate _side effects_ of functions (no saved state).

#### Higher Order Functions
Functions that take other functions as part of their input __or__ output a
function.  Good examples of these are _map_ and _reduce_, as well as
decorators from Python.

#### Dynamic Programming
Solving problems by breaking them down into subproblems.  It is usually
applied where there are many overlapping subproblems, meaning that the
same subproblem gets solved many times.  Dynamic programming attempts
to sovle these problems just once - memoization is often used to
remember solutions to subproblems so they do not need to be solved again.
Aside: described by Wikipedia as an "intelligent brute force" method.

### Trivia

#### MYSQL
* For TEXT fields you get a pointer to storage somewhere else where
the actual data is stored - this means that queries on TEXT fields are
usually expensive because of non-sequential disk accesses
* VARCHAR fields (and TEXT) have variable storage sizes where the length
is stored before the record.  CHAR does not do this and pads the extra
space with spaces, so it consumes the entirety of the length specified
* The number in parens for numeric field types ie: bigint(20) or
 tinyint(1) only affects the _display with in number of digits_, meaning
that numbers with fewer than the specified number of digits will be
left padded with the appropriate number of 0's.
