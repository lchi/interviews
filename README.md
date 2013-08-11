A place for interview questions/topics.

## Topics

## Trivia

#### MYSQL
* For TEXT fields you get a pointer to storage somewhere else where
the actual data is stored - this means that queries on TEXT fields are
usually expensive because of non-sequential disk accesses
* VARCHAR fields (and TEXT) have variable storage sizes where the length
is stored before the record.  CHAR does not do this and pads the extra
space with spaces, so it consumes the entirety of the length specified
* The number in parens for numeric field types ie: bigint_(20)_ or
 tinyint_(1)_ only affects the _display with in number of digits_, meaning
that numbers with fewer than the specified number of digits will be
left padded with the appropriate number of 0's.
