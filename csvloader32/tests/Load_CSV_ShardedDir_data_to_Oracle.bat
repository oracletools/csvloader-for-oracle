::Load CSV_ShardedDir data to Oracle
echo y|csvloader32.exe ^
-w csv2ora ^
-o 3 ^
-r 3 ^
-t "|" ^
-I c:\Python27\csvloader_1237\test\v101\data\ora_data_dir ^
-y 50 ^
-g SCOTT/tiger2@orcl ^
-a SCOTT.Persons_pipe_datetime_1 ^
-e "YYYY-MM-DD HH24.MI.SS" ^
-m "YYYY-MM-DD HH24.MI.SS.FF2" ^
-Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"