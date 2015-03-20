# Version 3.7.11 #
  * Development work started for current version
## 2012-2-14 progress report ##
  * Porting done, initial testing started
  * Quick tests -> 750 errors out of 41549 tests

## Version 3.7.9 ##
  * Development work started for current version
### 2011-9-26 progress report ###
  * Quick tests -> 0 errors out of 60151 tests
  * All tests   -> 1 errors out of 275182 tests
  * 2 modules remaining to convert:
    * os\_win changes, new vdbesort
  * After initial code release, plans are to include WAL


## Version 3.7.7.1 ##
  * Supports VFS
  * Quick tests -> 0 errors out of 59795 tests
  * All tests   -> 0 errors out of 274826 tests
## Version 3.7.7 ##
  * conversion finished w/o FTS, VFS & WAL
## Version 3.7.6.3 ##
  * Posted 2011-06-24
  * 0 errors out of 58100 tests
## 2011-5-15 updates ##
  * SILVERLIGHT samples being added
## 2011-3-23 updates ##
  * Added built in REGEXP using C# Regex
## 2011-3-21 updates ##
  * Added TCL commands lset and `{*`} syntax
  * 88 errors out of 55601 tests
> > (all error relate to e\_select2.test and the `{*`} syntax)
## Version 3.7.5 ##
  * Supports SQLITE\_MUTEX\_W32 and SQLITE\_THREADING
## Version 3.7.5 RC2 ##
  * Posted 2011-02-28
  * WAL will not be implemented
  * Repository reset for 3.7.5 branch
  * Mercurial repository defined as native = CRLF
  * Conversion finished; Testing Started
  * Tests ran in  (5:05)
  * 32 errors out of 54651 tests

## Version 3.7.5 (Feature Request) ##
  * RSSBus sponsors development of the Multi-threading features

## Version 3.6.23.2 ##
  * Posted 2010-06-21
  * Added SQLITE\_HAS\_CODEC COMPILER OPTION with crypto AES256
  * 0 errors out of 35028 tests

## Version 3.6.23 ##
  * Posted 2010-03-12
  * 0 errors out of 35271 tests

## 2010-2-22 updates ##
  * Corrected page cache linkage error
  * 0 errors out of 33051 tests

## 2010-2-18 updates ##
  * Reorganized source code tree
  * Changed namespace to Community.CsharpSQLite
  * Changed public class to Sqlite3

## 2010-2-16 updates ##
  * Added SQLITE\_MEMORY\_POOL for performance enhancements
  * Added Community.Data.SQLiteClient from teravus.wmcv.com

# Version 3.6.22 #
  * Update to current SQLite version;
  * Implements Foreign Keys and Recursive Triggers
  * 0 errors out of 32703 tests

# Version 3.6.17 #
  * Updated to current SQLite version;
  * Resolved errors in backup, collate3, memsubsys1, pcache2,  & trigger2 tests
  * Currently 0 errors out of 30992 tests
  * 4 tests being skipped; See outstanding Issues

# Version 3.6.16 #
## 08 Aug-2009 ##
  * Added SQLITE\_OMIT\_DEPRECATED to list of compiler options;
  * Posted new & improved benchmark project with SQLite and C#-SQLite test routines

## 05 Aug-2009 ##
  * Moved to new project and reposted as C#-SQLite
  * 2 errors out of 30054 tests

## 01-Aug-2009 ##
  * Removed source to avoid confusion over name.  See [LettersFromSQLite](LettersFromSQLite.md) for details

## 31 Jul-2009 ##
  * Source code tree for C# and solution posted

## 30 Jul-2009 ##
  * 0 errors out of 29724 tests
  * 11 test file decisions to resolve

## 29 Jul-2009 ##
  * 0 errors out of 29102 tests
  * resolved corrupt2.test

## 28-Jul-2009 ##
  * 1 errors out of 29013 tests
  * 13 test file decisions to resolve

## 27-Jul-2009 ##
  * 1 errors out of 28641 tests
  * Entered issue for corrupt2-13.1... Expected: [1073741824](1073741824.md)     Got: [65536](65536.md)
  * **18 addition test file decisions to make before initial release**

## 25-Jul-2009 ##
**Progress Report**

I now get 0 errors out of 28420 tests in the test harness;

**31 addition test file decisions to make before initial release**

## 24-Jul-2009 ##
**Progress Report**

  * [CompilerOptions](CompilerOptions.md)
  * Full MSVC C# Solution will be released with 2 projects; the shell and the testharness;
  * The C# TCL port has also been included as part of the testharness project
  * I am currently waiting for google to approve changing licensing terms from "Artistic License/GPL" to "Public Domain"

I now get 0 errors out of 28079 tests in the test harness;

**35 addition test file decisions to make before initial release**

**I would anticipating posting the full C# code in the next few weeks**
## 17-Jul-2009 ##
Initial File Loads