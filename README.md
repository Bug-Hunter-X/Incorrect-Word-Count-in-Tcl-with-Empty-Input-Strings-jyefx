# Incorrect Word Count in Tcl with Empty Input Strings

This repository demonstrates a bug in a Tcl procedure designed to count words in a given string. The bug arises when the input string is empty.  The `regexp` command, when used with the `-all` and `-inline` options, behaves unexpectedly in this scenario.  The solution presented handles empty input gracefully.

## Bug Description:

The `count_words` procedure uses `regexp -all -inline` to extract words. However, if the input string `text` is empty, the command returns an empty list instead of an empty list with the length 0.  This leads to an incorrect word count of 0, rather than the expected 0.

## Bug Solution:

The solution modifies the procedure to explicitly check for an empty input string and return 0 in that case. This eliminates the unexpected behavior.
