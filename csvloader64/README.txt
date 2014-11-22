##
##csvloader64.exe -h ALL 
##
----------------------------------------------------------------------
CSV*Loader for Oracle (v1.23.5, beta, 2014/11/21 19:15:49) [64bit]
Copyright (c): 2014 Alex Buzunov, All rigts reserved.
Agreement: Use this tool at your own risk. Author is not liable for any damages or losses related to the use of this software.
----------------------------------------------------------------------
From CSV:

Set following command line arguments to copy from CSV to Oracle:

-w copy_vector -o pool_size -r num_of_shards -t field_term -l limit -i input_file -I input_dir -k skip_rows -y shard_size_kb -g to_db -a to_table -e nls_date_format -m nls_timestamp_format -Z target_client_home 

Here:
(Common) -w [--copy_vector]	Data copy direction.	
(Common) -o [--pool_size]	Pool size.	
(Common) -r [--num_of_shards]	Number of shards.	
(Common) -t [--field_term]	Field terminator.	
(Common) -l [--limit]	Limit rows (test run).	
(From CSV) -i [--input_file]	Input CSV file.	
(From CSV) -I [--input_dir]	Input CSV directory.	
(From CSV) -k [--skip_rows]	Header size. Number of rows to skip in input file.	
(From CSV) -y [--shard_size_kb]	Shard size in Kbytes to extimate number of lines in input CSV file.	
(To Oracle) -g [--to_db]	To Oracle database.	
(To Oracle) -a [--to_table]	To Oracle table.	
(To Oracle) -e [--nls_date_format]	nls_date_format for target.	
(To Oracle) -m [--nls_timestamp_format]	nls_time_format for target.	
(To Oracle) -Z [--target_client_home]	Path to Oracle client home bin dir.	
