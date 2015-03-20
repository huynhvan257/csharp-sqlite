# Code Changing Rules #
## Before starting ##
Be sure that you can run testfixture before and after your changes.
Compile with the standard [CompilerOptions](CompilerOptions.md):

Set the DEBUG and TRACE flags

Errors and Warnings: 0168 ; 0169; 0414; 0618; 0649

Use the source file $testdir/^testscripts.test and confirm that there are no errors;

## Comment Changes ##
Please do not change SQLite.org's comment.  Add your own comments in a separate block or on a separate line.

## Classes ##
  * Please discuss before changing classes
  * Please discuss before adding classes

## Functions ##
  * Please discuss before changing functions
  * I'm an not opposed to adding "helper" functions or "conversion" functions; However a discussion of why there are needed would be helpful
  * If a SQLite function (especially in os\_win\_c) needs to be changed, leave the old in place, with a comment about what is going on.
  * I am not opposed to replacing the entire os\_win\_c source file, but this is a delicate task.  Be careful

## Line Endings ##
Use Unix style LF line Endings;

Add the following lines to your hgrc file to prevent CRLF checkins

```
[extensions]
hgext.win32text=

[hooks]
# Reject commits which would introduce windows-style text files

pretxncommit.crlf = python:hgext.win32text.forbidcrlf
```