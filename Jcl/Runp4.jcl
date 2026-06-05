//HERC01XX JOB (COBOL),                                
//             ' ',                                    
//             CLASS=C,                                
//             MSGCLASS=X,                             
//             REGION=8M,TIME=1440,                    
//             MSGLEVEL=(1,1),NOTIFY=HERC01            
//DELREL   EXEC PGM=IEFBR14                            
//RELAT    DD DSNAME=HERC01.RELAT.P4,                  
//             DISP=(MOD,DELETE,DELETE),               
//             UNIT=SYSDA,                             
//             SPACE=(TRK,(1,1)),                      
//             DCB=(RECFM=FB,LRECL=132,BLKSIZE=1320)   
//SORTP4   EXEC PGM=SORT                               
//SORTLIB  DD DSNAME=SYS1.SORTLIB,DISP=SHR             
//SYSOUT   DD SYSOUT=*                                 
//SORTIN   DD DSNAME=HERC01.CONTAS.TXT,DISP=SHR        
//         DD DSNAME=HERC01.CONTAS.NOVAS.TXT,DISP=SHR  
//SORTOUT  DD DSNAME=&&ORD,                            
//             DISP=(NEW,PASS),                        
//             UNIT=SYSDA,                             
//             SPACE=(TRK,(2,2)),                      
//             DCB=(RECFM=FB,LRECL=54,BLKSIZE=540)     
//SYSIN    DD *                                        
  SORT FIELDS=(39,4,CH,A,1,8,CH,A)                     
/*                                                     
//RUNCOB   EXEC PGM=PROJETO4,COND=(0,NE,SORTP4)        
//STEPLIB  DD DSNAME=HERC01.LOAD,DISP=SHR              
//SYSOUT   DD SYSOUT=*                                 
//CONTA    DD DSNAME=&&ORD,                            
//             DISP=(OLD,DELETE),                      
//             DCB=(RECFM=FB,LRECL=54,BLKSIZE=540)     
//RELAT    DD DSNAME=HERC01.RELAT.P4,                  
//             DISP=(NEW,CATLG,CATLG),                 
//             UNIT=SYSDA,                             
//             SPACE=(TRK,(3,2),RLSE),                 
//             DCB=(RECFM=FB,LRECL=132,BLKSIZE=1320)   
//                                                     