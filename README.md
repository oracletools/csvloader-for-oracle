##
## csvloader32.exe -h ALL 
```
--GENERAL INFO--
---------------------------------------------------------------------- 
#FreeUkraine #SaveUkraine #StopRussia #PutinKhuilo #CrimeaIsUkraine
----------------------------------------------------------------------
CSV*Loader for Oracle (v1.23.5, beta, 2014/11/27 15:10:54) [32bit]
Copyright (c): 2014 Alex Buzunov, All rigts reserved.
Agreement: Use this tool at your own risk. Author is not liable for any damages or losses related to the use of this software.
----------------------------------------------------------------------
From CSV:

Set following command line arguments to copy from CSV to Oracle:

-w copy_vector -o pool_size -r num_of_shards -t field_term -l lame_duck -i input_file -I input_dir -k skip_rows -y shard_size_kb -g to_db -a to_table -e nls_date_format -m nls_timestamp_format -Z target_client_home 

Here:
(Common) -w [--copy_vector]	Data copy direction.	
(Common) -o [--pool_size]	Pool size.	
(Common) -r [--num_of_shards]	Number of shards.	
(Common) -t [--field_term]	Field terminator.	
(Common) -l [--lame_duck]	Limit rows (lame duck run).	
(From CSV) -i [--input_file]	Input CSV file.	
(From CSV) -I [--input_dir]	Input CSV directory.	
(From CSV) -k [--skip_rows]	Header size. Number of rows to skip in input file.	
(From CSV) -y [--shard_size_kb]	Shard size in KBytes (to partition file and to estimate number of lines in input CSV file).	
(To Oracle) -g [--to_db]	To Oracle database.	
(To Oracle) -a [--to_table]	To Oracle table.	
(To Oracle) -e [--nls_date_format]	nls_date_format for target.	
(To Oracle) -m [--nls_timestamp_format]	nls_timestamp_format for target.	
(To Oracle) -Z [--target_client_home]	Path to Oracle client home bin dir.	

--USE CASES--

11 use case(s) available:

1. CSV_ShardedDir - Read each CSV file from a directory "c:\Python27\csvloader_1237\test\v101\data\ora_data_dir".
  Break input CSV files into logical partitions (shards) and run loader 
  process on each shard in thread pool (-o[--pool_size] 3)
  Load CSV file into Oracle table.
2. CSV_ShardedFileSkip1 - Break input CSV file into 3 logical partitions (-r[--num_of_shards] 3) 
  and run loader process on each shard in thread pool (-o[--pool_size] 3).
  Skip 1 rows and load CSV file into Oracle table.
3. CSV_File - Load CSV file into Oracle table.
4. CSV_Dir - Read each CSV file from a directory "c:\Python27\csvloader_1237\test\v101\data\ora_data_dir".
  Load CSV file into Oracle table.
5. CSV_Dir_Limit10 - Read each CSV file from a directory "c:\Python27\csvloader_1237\test\v101\data\ora_data_dir".
  Load only 10 rows from CSV file into Oracle table.
6. CSV_File_Limit10 - Load only 10 rows from CSV file into Oracle table.
7. CSV_FileSkip1 - Skip 1 rows and load CSV file into Oracle table.
8. CSV_DirSkip1 - Read each CSV file from a directory "c:\Python27\csvloader_1237\test\v101\data\ora_data_dir".
  Skip 1 rows and load CSV file into Oracle table.
9. CSV_ShardedDirSkip1 - Read each CSV file from a directory "c:\Python27\csvloader_1237\test\v101\data\ora_data_dir".
  Break input CSV files into logical partitions (shards) and run loader 
  process on each shard in thread pool (-o[--pool_size] 3)
  Skip 1 rows and load CSV file into Oracle table.
10. CSV_ShardedFile - Break input CSV file into 3 logical partitions (-r[--num_of_shards] 3) 
  and run loader process on each shard in thread pool (-o[--pool_size] 3).
  Load CSV file into Oracle table.
11. CSV_ShardedFile_Limit10 - Break input CSV file into 3 logical partitions (-r[--num_of_shards] 3) 
  and run loader process on each shard in thread pool (-o[--pool_size] 3).
  Load only 10 rows from CSV file into Oracle table.

--DETAILS--

-USE-CASE # 1
Use case name: CSV_ShardedDir
Description:  Read each CSV file from a directory "c:\Python27\csvloader_1237\test\v101\data\ora_data_dir".
  Break input CSV files into logical partitions (shards) and run loader 
  process on each shard in thread pool (-o[--pool_size] 3)
  Load CSV file into Oracle table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -I[--input_dir] is "Input CSV directory."
  -y[--shard_size_kb] is "Shard size in KBytes (to partition file and to estimate number of lines in input CSV file)."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\csvloader_dist_32\20141127_151054\csvloader32\csvloader32.exe ^
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

-USE-CASE # 2
Use case name: CSV_ShardedFileSkip1
Description:  Break input CSV file into 3 logical partitions (-r[--num_of_shards] 3) 
  and run loader process on each shard in thread pool (-o[--pool_size] 3).
  Skip 1 rows and load CSV file into Oracle table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -i[--input_file] is "Input CSV file."
  -k[--skip_rows] is "Header size. Number of rows to skip in input file."
  -y[--shard_size_kb] is "Shard size in KBytes (to partition file and to estimate number of lines in input CSV file)."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\csvloader_dist_32\20141127_151054\csvloader32\csvloader32.exe ^
  -w csv2ora ^
  -o 3 ^
  -r 3 ^
  -t "|" ^
  -i c:\Python27\csvloader_1237\test\v101\data\oracle_shard_0.data ^
  -k 1 ^
  -y 10 ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 3
Use case name: CSV_File
Description:  Load CSV file into Oracle table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -i[--input_file] is "Input CSV file."
  -y[--shard_size_kb] is "Shard size in KBytes (to partition file and to estimate number of lines in input CSV file)."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\csvloader_dist_32\20141127_151054\csvloader32\csvloader32.exe ^
  -w csv2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -i c:\Python27\csvloader_1237\test\v101\data\oracle_shard_0.data ^
  -y 1000 ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 4
Use case name: CSV_Dir
Description:  Read each CSV file from a directory "c:\Python27\csvloader_1237\test\v101\data\ora_data_dir".
  Load CSV file into Oracle table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -I[--input_dir] is "Input CSV directory."
  -y[--shard_size_kb] is "Shard size in KBytes (to partition file and to estimate number of lines in input CSV file)."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\csvloader_dist_32\20141127_151054\csvloader32\csvloader32.exe ^
  -w csv2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -I c:\Python27\csvloader_1237\test\v101\data\ora_data_dir ^
  -y 1000 ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 5
Use case name: CSV_Dir_Limit10
Description:  Read each CSV file from a directory "c:\Python27\csvloader_1237\test\v101\data\ora_data_dir".
  Load only 10 rows from CSV file into Oracle table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -l[--lame_duck] is "Limit rows (lame duck run)."
  -I[--input_dir] is "Input CSV directory."
  -y[--shard_size_kb] is "Shard size in KBytes (to partition file and to estimate number of lines in input CSV file)."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\csvloader_dist_32\20141127_151054\csvloader32\csvloader32.exe ^
  -w csv2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -l 10 ^
  -I c:\Python27\csvloader_1237\test\v101\data\ora_data_dir ^
  -y 1000 ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 6
Use case name: CSV_File_Limit10
Description:  Load only 10 rows from CSV file into Oracle table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -l[--lame_duck] is "Limit rows (lame duck run)."
  -i[--input_file] is "Input CSV file."
  -y[--shard_size_kb] is "Shard size in KBytes (to partition file and to estimate number of lines in input CSV file)."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\csvloader_dist_32\20141127_151054\csvloader32\csvloader32.exe ^
  -w csv2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -l 10 ^
  -i c:\Python27\csvloader_1237\test\v101\data\oracle_shard_0.data ^
  -y 1000 ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 7
Use case name: CSV_FileSkip1
Description:  Skip 1 rows and load CSV file into Oracle table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -i[--input_file] is "Input CSV file."
  -k[--skip_rows] is "Header size. Number of rows to skip in input file."
  -y[--shard_size_kb] is "Shard size in KBytes (to partition file and to estimate number of lines in input CSV file)."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\csvloader_dist_32\20141127_151054\csvloader32\csvloader32.exe ^
  -w csv2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -i c:\Python27\csvloader_1237\test\v101\data\oracle_shard_0.data ^
  -k 1 ^
  -y 100 ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 8
Use case name: CSV_DirSkip1
Description:  Read each CSV file from a directory "c:\Python27\csvloader_1237\test\v101\data\ora_data_dir".
  Skip 1 rows and load CSV file into Oracle table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -I[--input_dir] is "Input CSV directory."
  -k[--skip_rows] is "Header size. Number of rows to skip in input file."
  -y[--shard_size_kb] is "Shard size in KBytes (to partition file and to estimate number of lines in input CSV file)."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\csvloader_dist_32\20141127_151054\csvloader32\csvloader32.exe ^
  -w csv2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -I c:\Python27\csvloader_1237\test\v101\data\ora_data_dir ^
  -k 1 ^
  -y 1000 ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 9
Use case name: CSV_ShardedDirSkip1
Description:  Read each CSV file from a directory "c:\Python27\csvloader_1237\test\v101\data\ora_data_dir".
  Break input CSV files into logical partitions (shards) and run loader 
  process on each shard in thread pool (-o[--pool_size] 3)
  Skip 1 rows and load CSV file into Oracle table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -I[--input_dir] is "Input CSV directory."
  -k[--skip_rows] is "Header size. Number of rows to skip in input file."
  -y[--shard_size_kb] is "Shard size in KBytes (to partition file and to estimate number of lines in input CSV file)."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\csvloader_dist_32\20141127_151054\csvloader32\csvloader32.exe ^
  -w csv2ora ^
  -o 3 ^
  -r 3 ^
  -t "|" ^
  -I c:\Python27\csvloader_1237\test\v101\data\ora_data_dir ^
  -k 1 ^
  -y 50 ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 10
Use case name: CSV_ShardedFile
Description:  Break input CSV file into 3 logical partitions (-r[--num_of_shards] 3) 
  and run loader process on each shard in thread pool (-o[--pool_size] 3).
  Load CSV file into Oracle table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -i[--input_file] is "Input CSV file."
  -y[--shard_size_kb] is "Shard size in KBytes (to partition file and to estimate number of lines in input CSV file)."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\csvloader_dist_32\20141127_151054\csvloader32\csvloader32.exe ^
  -w csv2ora ^
  -o 3 ^
  -r 3 ^
  -t "|" ^
  -i c:\Python27\csvloader_1237\test\v101\data\oracle_shard_0.data ^
  -y 10 ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 11
Use case name: CSV_ShardedFile_Limit10
Description:  Break input CSV file into 3 logical partitions (-r[--num_of_shards] 3) 
  and run loader process on each shard in thread pool (-o[--pool_size] 3).
  Load only 10 rows from CSV file into Oracle table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -l[--lame_duck] is "Limit rows (lame duck run)."
  -i[--input_file] is "Input CSV file."
  -y[--shard_size_kb] is "Shard size in KBytes (to partition file and to estimate number of lines in input CSV file)."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\csvloader_dist_32\20141127_151054\csvloader32\csvloader32.exe ^
  -w csv2ora ^
  -o 3 ^
  -r 3 ^
  -t "|" ^
  -l 10 ^
  -i c:\Python27\csvloader_1237\test\v101\data\oracle_shard_0.data ^
  -y 10 ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"
  ```
  
  ## Teardown
https://github.com/pydemo/teardown

[<img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png">](https://www.buymeacoffee.com/0nJ32Xg)

## Snowpipe

https://github.com/pydemo/Snowpipe-For-SQLServer
