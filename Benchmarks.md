Current [Benchmark application](http://code.google.com/p/csharp-sqlite/source/browse/#hg/Benchmark)

## Sep 1, 2011 3.7.7.1 with SQLITE\_POOL\_MEM ##
```
          # Records Inserting Searching Iterating  Deleting
   SQLite    10,000       .1s       .2s       .1s       .1s
C#-SQLite    10,000       .3s       .2s       .1s       .2s
C#/SQLite    10,000      2.3x       .6x       .8x      1.6x
          # Records Inserting Searching Iterating  Deleting
   SQLite    20,000       .2s       .4s       .1s       .2s
C#-SQLite    20,000       .5s       .2s       .1s       .3s
C#/SQLite    20,000      2.3x       .5x       .6x      1.5x
          # Records Inserting Searching Iterating  Deleting
   SQLite    40,000       .4s       .8s       .2s       .3s
C#-SQLite    40,000       .9s       .5s       .1s       .5s
C#/SQLite    40,000      2.3x       .5x       .6x      1.4x
          # Records Inserting Searching Iterating  Deleting
   SQLite    80,000      1.5s      2.5s       .3s      1.5s
C#-SQLite    80,000      3.1s      2.2s       .2s      2.6s
C#/SQLite    80,000      2.0x       .9x       .7x      1.7x
          # Records Inserting Searching Iterating  Deleting
   SQLite   160,000      5.0s      6.3s       .6s      5.0s
C#-SQLite   160,000     10.1s      6.0s       .4s      8.3s
C#/SQLite   160,000      2.0x      1.0x       .7x      1.7x

+-----------------------------------+
| LEGEND:                           |
| SQLite is the native code         |
| C#-SQLite is the ported version   |
| C#/SQLite is ratio of the ported  |
| code to the native. values < 1    |
| indicate where the port is faster |
+-----------------------------------+
```

## Feb 28, 2011 3.7.5 with SQLITE\_POOL\_MEM ##
```
          # Records Inserting Searching Iterating  Deleting
   SQLite   160,000      4.6s      6.1s       .5s      4.6s
C#-SQLite   160,000      9.8s      5.9s       .5s      8.0s
C#/SQLite   160,000      2.1x      1.0x       .9x      1.7x
```


## Jan 20, 2010 Updated to 3.6.22 ##
### Larger Databases ###
| |# Records|Inserting|Searching 2X|Iteration 2X|Deleting|
|:|:--------|:--------|:-----------|:-----------|:-------|
|SQLite|1,000,000|69.2s|59.7s|3.9s|71.7s|
|C#-SQLite|1,000,000|140.3s|72.4s|3.3s|127.2s|
|C#/SQLite|  |2.0x|1.2x|0.9x|1.8x|

## Aug 21, 2009 Updated to 3.6.17 ##
### Larger Databases ###
| |# Records|Inserting|Searching 2X|Iteration 2X|Deleting|
|:|:--------|:--------|:-----------|:-----------|:-------|
|SQLite|1,000,000|42.8s|43.3s|3.0s|35.5s|
|C#-SQLite|1,000,000|116.0s|60.0s|2.9s|89.2s|
|C#/SQLite|  |2.7x|1.4x|1.0x|2.5x|

## Aug 10, 2009 Update ##
### Larger Databases ###
|# Records| |Inserting|Searching 2X|Iteration 2X|Deleting|
|:--------|:|:--------|:-----------|:-----------|:-------|
|SQLite|1,000,000|5432|4782|358|4558|
|C#-SQLite|1,000,000|21208|13361|419|17661|
|  |  |3.90|2.79|1.17|3.87|


## Initial Port ##
### Larger Databases ###
|# Records| |Inserting|Searching 2X|Iteration 2X|Deleting|
|:--------|:|:--------|:-----------|:-----------|:-------|
|SQLite|1,000,000|55.13|49.01|3.52|46.40|
|C#-SQLite|1,000,000|222.05|140.68|4.49|191.99|
|  |  |4.03|4.85|1.27|4.14|

As of the initial release, the SQLite dll version is between 2 and 5 times faster than C#-SQLite depending on the operations


## Initial Benchmark Results ##
### All Results are in Rows per Second ###
| **Test** | **SQLite3C#** | **SQLite3** |
|:---------|:--------------|:------------|
| Inserts| 300K |1300K|
| Selects| 1500K|8450K |
| Updates| 60K|300K |
| Deletes| 250K|700K |

## Size of the executable ##
| filename| **C#-SQLite** | **SQLite3** |
|:--------|:--------------|:------------|
| C#-SQLite3.exe| 528KB |  |
| SQLite3.exe|  | 506KB|