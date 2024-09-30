* extractor_prog_Version 6.3.1 for SAP ECC5, ECC6.
* DATE 20090930 .
* SAP_Version 700 .
* Dev_Class Z1361_LOINTO .
CLASSPOOL_NAME CLASSPOOL_LOOP_INTO .
method CONSTRUCTOR.
  LOOP AT tab_authors ASSIGNING <line_authors>
                  WHERE tab_authors-au_id CP 'AAA*'.
                  
       LOOP AT tab_titles INTO line_titles
                  WHERE tab_titles-au_id =  <line_authors>-au_id. 
       ENDLOOP.        
  ENDLOOP.            
  
ENDMETHOD.
