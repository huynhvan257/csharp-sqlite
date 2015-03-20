# Compilation Options For SQLite #

### SHELL ###
> Project (right click) -> Properties -> Build -> Conditional compilation symbols

## TEST/DEBUG environment ##
```
   TRUE 
   WIN32 
   _MSC_VER
   SQLITE_ASCII
   SQLITE_DEBUG
   SQLITE_ENABLE_COLUMN_METADATA
   SQLITE_ENABLE_OVERSIZE_CELL_CHECK
   SQLITE_MUTEX_W32
   SQLITE_THREADSAFE
   VDBE_PROFILE_OFF
```
**Note:** The only THREADSAFE mode supported is Multi-Thread; SQLITE\_THREADSAFE implies SQLITE\_THREADSAFE=2 and sets the default threading mode to Multi-threaded.

I am currently compiling with the following OMIT options:
```
   SQLITE_OMIT_AUTHORIZATION 
   SQLITE_OMIT_DEPRECATED 
   SQLITE_OMIT_GET_TABLE 
   SQLITE_OMIT_INCRBLOB 
   SQLITE_OMIT_LOOKASIDE
   SQLITE_OMIT_SHARED_CACHE 
   SQLITE_OMIT_UTF16 
   SQLITE_OMIT_WAL
```

## RELEASE environment ##
```
   TRUE 
   WIN32 
   _MSC_VER 
   NDEBUG
   SQLITE_ASCII
   SQLITE_ENABLE_COLUMN_METADATA
   SQLITE_MUTEX_W32
   SQLITE_THREADSAFE
   SQLITE_OMIT_AUTHORIZATION 
   SQLITE_OMIT_DEPRECATED 
   SQLITE_OMIT_GET_TABLE 
   SQLITE_OMIT_INCRBLOB 
   SQLITE_OMIT_LOOKASIDE
   SQLITE_OMIT_SHARED_CACHE 
   SQLITE_OMIT_UTF16 
   SQLITE_OMIT_WAL
   VDBE_PROFILE_OFF
```
**Note:** The only THREADSAFE mode supported is Multi-Thread; SQLITE\_THREADSAFE implies SQLITE\_THREADSAFE=2 and sets the default threading mode to Multi-threaded.

## OPTIONAL, If you want to use the database encryption routines ##
```
   SQLITE_HAS_CODEC
```

## TESTFIXTURE PROJECT ONLY ##
```
   SQLITE_TEST
```

## IF RUNNING .NET 2.0 ##
```
   NET_2_0
```

## IF RUNNING .NET 3.5 ##
```
   NET_35
```

## SILVERLIGHT ##
```
   SQLITE_SILVERLIGHT
```

## WINDOWS MOBILE 7 ##
```
   WINDOWS_PHONE 
```

### COMPILER OPTIONS NOT SUPPORTED ###
```
   SQLITE_ENABLE_FTS3
   SQLITE_ENABLE_ICU
   SQLITE_ENABLE_MEMORY_MANAGEMENT
   SQLITE_ENABLE_MEMSYS3
   SQLITE_ENABLE_MEMSYS5
   SQLITE_ENABLE_RTREE
```

### Errors and Warnings ###
> Project (right click) -> Properties -> Build
> Warning Level 4
> Suppress Warnings: 0168 ; 0169; 0414; 0618; 0649

See http://www.sqlite.org/compile.html for details