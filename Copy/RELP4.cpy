           05 REL-LINHA-BRANCO.                                         
              10 FILLER           PIC X(132) VALUE SPACES.              
           05 REL-CAB-1.                                                
              10 FILLER           PIC X(132) VALUE                      
                 'RELATORIO DE CONTAS BANCARIAS'.                       
           05 REL-CAB-2.                                                
              10 FILLER           PIC X(08) VALUE 'CONTA   '.           
              10 FILLER           PIC X(02) VALUE SPACES.               
              10 FILLER           PIC X(30) VALUE 'NOME CLIENTE'.       
              10 FILLER           PIC X(02) VALUE SPACES.               
              10 FILLER           PIC X(04) VALUE 'AG  '.               
              10 FILLER           PIC X(02) VALUE SPACES.               
              10 FILLER           PIC X(14) VALUE 'TIPO'.               
              10 FILLER           PIC X(02) VALUE SPACES.               
              10 FILLER           PIC X(13) VALUE 'SALDO'.              
              10 FILLER           PIC X(02) VALUE SPACES.               
              10 FILLER           PIC X(10) VALUE 'STATUS'.             
              10 FILLER           PIC X(43) VALUE SPACES.               
           05 REL-TRACO.                                                
              10 FILLER           PIC X(132) VALUE ALL '-'.             
           05 REL-DET.                                                  
              10 RLD-CONTA        PIC 9(08).                            
              10 FILLER           PIC X(02) VALUE SPACES.               
              10 RLD-NOME         PIC X(30).                            
              10 FILLER           PIC X(02) VALUE SPACES.               
              10 RLD-AG           PIC 9(04).                            
              10 FILLER           PIC X(02) VALUE SPACES.               
              10 RLD-TIPO         PIC X(14).                            
              10 FILLER           PIC X(02) VALUE SPACES.               
              10 RLD-SALDO        PIC -ZZZZZZZZ9.99.                    
              10 FILLER           PIC X(02) VALUE SPACES.               
              10 RLD-STATUS       PIC X(10).                            
              10 FILLER           PIC X(43) VALUE SPACES.               
           05 REL-TOT-AG.                                               
               10 FILLER           PIC X(15) VALUE 'TOTAL AGENCIA '.
               10 RLA-AG           PIC 9(04).                       
               10 FILLER           PIC X(09) VALUE ' VALIDAS:'.     
               10 RLA-QTD          PIC ZZZZZ9.                      
               10 FILLER           PIC X(09) VALUE ' SALDO: '.      
               10 RLA-SALDO        PIC -ZZZZZZZZZZZZ9.99.           
               10 FILLER           PIC X(72) VALUE SPACES.          
            05 REL-RES-TIT.                                         
               10 FILLER           PIC X(132) VALUE 'RESUMO GERAL'. 
            05 REL-RES-LIDAS.                                       
               10 FILLER           PIC X(20) VALUE 'TOTAL LIDAS:'.  
               10 RLG-TOT-LIDAS    PIC ZZZZZ9.                      
               10 FILLER           PIC X(106) VALUE SPACES.         
            05 REL-RES-VALIDAS.                                     
               10 FILLER           PIC X(20) VALUE 'TOTAL VALIDAS:'.
               10 RLG-TOT-VALIDAS  PIC ZZZZZ9.                      
               10 FILLER           PIC X(106) VALUE SPACES.         
            05 REL-RES-INVALIDAS.              
               10 FILLER           PIC X(20) VALUE 'TOTAL INVALIDAS:'.
               10 RLG-TOT-INVALIDAS PIC ZZZZZ9.                       
               10 FILLER           PIC X(106) VALUE SPACES.           
            05 REL-RES-SALDO.                                         
               10 FILLER           PIC X(20) VALUE 'SALDO GERAL:'.    
               10 RLG-SALDO-GERAL  PIC -ZZZZZZZZZZZZ9.99.             
               10 FILLER           PIC X(95) VALUE SPACES.                                 