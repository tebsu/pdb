sleep 60;
_sql_res = "extDB3" callExtension format["0:SQL:DELETE FROM vehicles WHERE rec_date < NOW() - INTERVAL 120 MINUTE AND mission_FK = '%1'",pdb_mission_fk];
_sql_res = "extDB3" callExtension format["0:SQL:DELETE FROM objects WHERE objRecDate < NOW() - INTERVAL 120 MINUTE AND mission_FK = '%1'",pdb_mission_fk];