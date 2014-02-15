echo off

rem for encryption use 'SQLITE_HAS_CODEC'
rem for excluding virtual tables use 'SQLITE_OMIT_VIRTUALTABLE'

:start
    echo 
    echo Building csharp-sqlite

:select_platform
    set platform=
    IF /I "%~1"=="NET2"     set platform=NET_2_0;SQLITE_THREADSAFE;SQLITE_MUTEX_W32
    IF /I "%~1"=="NET35"    set platform=NET_35;SQLITE_THREADSAFE;SQLITE_MUTEX_W32
    IF /I "%~1"=="NET4"     set platform=NET_40;SQLITE_THREADSAFE;SQLITE_MUTEX_W32
    IF /I "%~1"=="SL"       set platform=SQLITE_SILVERLIGHT;NET_40;SQLITE_MUTEX_OMIT
    IF /I "%~1"=="WP"       set platform=WINDOWS_PHONE;SQLITE_SILVERLIGHT;NET_40;SQLITE_MUTEX_OMIT
    IF /I "%~1"=="WM"       set platform=WINDOWS_MOBILE;NET_2_0;SQLITE_MUTEX_OMIT
    IF /I "%~1"=="RT"       set platform=NETFX_CORE;SQLITE_WINRT;SQLITE_MUTEX_OMIT
    IF /I "%platform%"==""  goto error
    echo Using platform definitions:      %platform%

:select_configuration
    set configuration=
    IF /I "%~2"=="debug"         set configuration=TRACE;DEBUG;SQLITE_DEBUG;SQLITE_ENABLE_OVERSIZE_CELL_CHECK
    IF /I "%~2"=="release"       set configuration=NDEBUG
    IF /I "%configuration%"==""  goto error
    echo Using configuration definitions: %configuration%

:select_solution
    set solution=
    IF /I "%~1"=="NET2"     set solution=Community.CsharpSqlite\Community.CsharpSqlite.csproj
    IF /I "%~1"=="NET35"    set solution=Community.CsharpSqlite\Community.CsharpSqlite.csproj
    IF /I "%~1"=="NET4"     set solution=Community.CsharpSqlite\Community.CsharpSqlite.csproj
    IF /I "%~1"=="SL"       set solution=Community.CsharpSqlite.Silverlight\Community.CsharpSqlite.Silverlight.csproj
    IF /I "%~1"=="WP"       set solution=Community.CsharpSqlite.WinPhone\Community.CsharpSqlite.WinPhone.csproj
    IF /I "%~1"=="WM"       set solution=Community.CsharpSqlite.WinMobile\Community.CsharpSqlite.WinMobile.csproj
    IF /I "%~1"=="RT"       set solution=Community.CsharpSqlite.WinRT\Community.CsharpSqlite.WinRT.csproj
    echo Using solution file:             %solution%


:select_signed
    set keyFile=
    IF /I "%~3"=="signed"         set keyFile=../csharp-sqlite.snk
    echo Using key file:                  %keyFile%

:build
    set omits=SQLITE_OMIT_AUTHORIZATION;SQLITE_OMIT_DEPRECATED;SQLITE_OMIT_GET_TABLE;SQLITE_OMIT_INCRBLOB;SQLITE_OMIT_LOOKASIDE;SQLITE_OMIT_SHARED_CACHE;SQLITE_OMIT_UTF16;SQLITE_OMIT_WAL
    set conditionals=TRUE;WIN32;_MSC_VER;SQLITE_ASCII;SQLITE_ENABLE_COLUMN_METADATA;VDBE_PROFILE_OFF;;;SQLITE_DISABLE_LFS;SQLITE_MEM_POOL;NO_TCL;SQLITE_OS_WIN;SQLITE_SYSTEM_MALLOC

    set allConditionals=%platform%;%configuration%;%omits%;%conditionals%
    echo Using conditional symbols:       %allConditionals%

    set msbuildPlatform=Any CPU
    IF /I "%~1"=="RT"         set msbuildPlatform=AnyCPU
    set msbuildConfiguration=
    IF /I "%~2"=="debug"         set msbuildConfiguration=Debug
    IF /I "%~2"=="release"       set msbuildConfiguration=Release

    echo Starting build...

    msbuild %solution% /p:DefineConstants="%allConditionals%" /p:Configuration="%msbuildConfiguration%" /p:Platform="%msbuildPlatform%" /p:SignAssembly=true /p:AssemblyOriginatorKeyFile="%keyFile%" /p:OutputPath="../Output/%msbuildConfiguration%" /t:Rebuild

    goto end


:error
    echo An error occurred, please verify your arguments:
    echo build.bat PLATFORM CONFIGURATION [SIGNED]
    echo 
    echo OPTIONS:
    echo     PLATFORM:       NET2 / NET35 / NET4 / SL / WP / WM / RT
    echo     CONFIGURATION:  release / debug
    echo     SIGNED:         signed / [unsigned]
    echo 


:end
