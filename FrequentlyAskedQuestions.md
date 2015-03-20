**Q: What is C#-SQLite?**

A: C#-SQLite is an independent reimplementation of the SQLite software library

**Q: What is SQLite anyway?**

A: http://sqlite.org SQLite is a software library that implements a self-contained, serverless, zero-configuration, transactional SQL database engine.

Please visit the definitive website sqlite.org for details.

**Q: What version of SQLite is this?**

A: 3.7.7.1 See VersionHistory for details

**Q: Is C#-SQLite threadsafe?**

A: Yes, as of 3.7.5;  However, only Multi-Thread is supported.  SQLITE\_THREADSAFE implies SQLITE\_THREADSAFE=2;

Note: SQLITE\_THREADSAFE=2 sets the default threading mode to Multi-threaded.

**Q: How fast is this compared to the regular SQLite?**

A: See [Benchmarks](Benchmarks.md) for current performance details

**Q: I get lots of compile errors what am I doing wrong**"

A: See HowToCompile for details

**Q: What is the difference of this to other wrappers, such as [SQLite ADO.NET](http://sqlite.phxsoftware.com)?**

A: This is not a driver, dll, or wrapper.  This is a port of the underlying SQLite software.

**Q: Does this create a dll?**

A: Yes, the Community.CsharpSQLite solution will create a dll

**Q: Does this create an exe?**

A: Yes, the Community.CsharpSQLite.shell solution will create an exe

**Q: Since SQLite has a dll and exe you can download why port to C#?**

A: It was an exercise to learn the C# language

**Q: Should I report bugs to the SQLite developers?**

A: No, use the issues tab and report them here.  The developers bear no responsibility for the flaws in the port

**Q: Is this ready for prime time?**

A: Don't know -- let me know what you think