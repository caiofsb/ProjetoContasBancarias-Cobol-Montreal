       0100-INICIAR.                                                    
           MOVE 'N' TO WKR-FIM-ARQ.                                     
           MOVE 'S' TO WKR-PRIMEIRO-REG.                                
           MOVE ZERO TO WKR-TOTAL-LIDAS.                                
           MOVE ZERO TO WKR-TOTAL-VALIDAS.                              
           MOVE ZERO TO WKR-TOTAL-INVALIDAS.                            
           MOVE ZERO TO WKR-QTD-AG.                                     
           MOVE ZERO TO WKR-SALDO-GERAL.                                
           MOVE ZERO TO WKR-SALDO-AG.                                   
                                                                        
           OPEN INPUT ARQ-CONTA.                                        
           OPEN OUTPUT ARQ-RELAT.                                       
                                                                        
           MOVE REL-CAB-1 TO REG-RELAT.                                 
           WRITE REG-RELAT.                                             
           MOVE REL-LINHA-BRANCO TO REG-RELAT.                          
           WRITE REG-RELAT.                                             
           MOVE REL-CAB-2 TO REG-RELAT.                                 
           WRITE REG-RELAT.                                             
           MOVE REL-TRACO TO REG-RELAT.                                 
           WRITE REG-RELAT.                                             
                                                                        
           READ ARQ-CONTA                                               
              AT END MOVE 'S' TO WKR-FIM-ARQ.                           
                                                                        
           IF WKR-FIM-ARQ = 'N'                                         
              MOVE AGENCIA TO WKR-AG-ATUAL.                             
                                                                        
       0200-PROCESSAR.                                                  
           IF AGENCIA NOT EQUAL TO WKR-AG-ATUAL                         
              PERFORM 0600-TOTAL-AGENCIA                                
              MOVE ZERO TO WKR-QTD-AG                                   
              MOVE ZERO TO WKR-SALDO-AG                                 
              MOVE AGENCIA TO WKR-AG-ATUAL.                             
                                                                        
           ADD 1 TO WKR-TOTAL-LIDAS.                                    
                                                                        
           MOVE 'S' TO WKR-CONTA-OK.                                    
           MOVE SPACES TO WKR-DESC-TIPO.                                
            MOVE 'VALIDA' TO WKR-DESC-STATUS.                            
                                                                         
            IF TIPO-CONTA = 'C'                                          
               MOVE 'CORRENTE' TO WKR-DESC-TIPO.                         
                                                                         
            IF TIPO-CONTA = 'P'                                          
               MOVE 'POUPANCA' TO WKR-DESC-TIPO.                         
                                                                         
            IF TIPO-CONTA NOT EQUAL TO 'C'                               
               IF TIPO-CONTA NOT EQUAL TO 'P'                            
                  MOVE 'TIPO INVALIDO' TO WKR-DESC-TIPO                  
                  MOVE 'N' TO WKR-CONTA-OK.                              
                                                                         
            IF SALDO LESS THAN ZERO                                      
               MOVE 'N' TO WKR-CONTA-OK.                                 
                                                                         
            IF WKR-CONTA-OK NOT EQUAL TO 'S'                             
               MOVE 'INVALIDA' TO WKR-DESC-STATUS.                       
                                                                         
            IF WKR-CONTA-OK = 'S'                                        
               ADD 1 TO WKR-TOTAL-VALIDAS                                
               ADD 1 TO WKR-QTD-AG                                       
               ADD SALDO TO WKR-SALDO-GERAL                              
               ADD SALDO TO WKR-SALDO-AG.                                
                                                                         
            IF WKR-CONTA-OK NOT EQUAL TO 'S'                             
               ADD 1 TO WKR-TOTAL-INVALIDAS.                             
                                                                         
            MOVE NUM-CONTA TO RLD-CONTA.                                 
            MOVE NOME-CLIENTE TO RLD-NOME.                               
            MOVE AGENCIA TO RLD-AG.                                      
            MOVE WKR-DESC-TIPO TO RLD-TIPO.                              
            MOVE SALDO TO RLD-SALDO.                                     
            MOVE WKR-DESC-STATUS TO RLD-STATUS.                          
            MOVE REL-DET TO REG-RELAT.                                   
            WRITE REG-RELAT.                                             
                                                                         
            READ ARQ-CONTA                                               
               AT END MOVE 'S' TO WKR-FIM-ARQ.                           
                                                                         
        0600-TOTAL-AGENCIA.                                              
            MOVE REL-TRACO TO REG-RELAT.                                 
            WRITE REG-RELAT.                                             
                                                                         
            MOVE WKR-AG-ATUAL TO RLA-AG.                                 
            MOVE WKR-QTD-AG TO RLA-QTD.                                  
            MOVE WKR-SALDO-AG TO RLA-SALDO.                              
            MOVE REL-TOT-AG TO REG-RELAT.                                
            WRITE REG-RELAT.                                             
                                                                         
            MOVE REL-LINHA-BRANCO TO REG-RELAT.                          
            WRITE REG-RELAT.                                
                                                            
        0900-FINALIZAR.                                     
            IF WKR-TOTAL-LIDAS GREATER THAN ZERO            
               PERFORM 0600-TOTAL-AGENCIA.                  
                                                            
            MOVE REL-TRACO TO REG-RELAT.                    
            WRITE REG-RELAT.                                
                                                            
            MOVE REL-RES-TIT TO REG-RELAT.                  
            WRITE REG-RELAT.                                
                                                            
            MOVE WKR-TOTAL-LIDAS TO RLG-TOT-LIDAS.          
            MOVE REL-RES-LIDAS TO REG-RELAT.                
            WRITE REG-RELAT.                                
                                                            
            MOVE WKR-TOTAL-VALIDAS TO RLG-TOT-VALIDAS.      
            MOVE REL-RES-VALIDAS TO REG-RELAT.              
            WRITE REG-RELAT.                                
                                                            
            MOVE WKR-TOTAL-INVALIDAS TO RLG-TOT-INVALIDAS.  
            MOVE REL-RES-INVALIDAS TO REG-RELAT.            
           WRITE REG-RELAT.                        
                                                   
           MOVE WKR-SALDO-GERAL TO RLG-SALDO-GERAL.
           MOVE REL-RES-SALDO TO REG-RELAT.        
           WRITE REG-RELAT.                        
                                                   
           CLOSE ARQ-CONTA ARQ-RELAT.              
                                                   
           DISPLAY 'PROCESSAMENTO FINALIZADO'.     
           DISPLAY 'RELATORIO GERADO'.             