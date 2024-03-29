SELECT '&&cs_file_dir.'||'&&cs_reference_sanitized._&&cs_file_date_time.Z_'||
       UPPER('&&cs_realm._')||UPPER('&&cs_rgn._')||UPPER('&&cs_locale._')||UPPER('&&cs_db_name._')||UPPER(TRANSLATE('&&cs_con_name.', '*@#$"''', '_____'))||
       UPPER(NVL2('&&cs_other_acronym.', '_&&cs_other_acronym.', NULL))||CASE '&&cs_onsr.' WHEN 'Y' THEN '_ONSR' END||CASE '&&cs_dedicated.' WHEN 'Y' THEN '_DEDICATED' END AS cs_file_prefix 
  FROM DUAL
/
--
