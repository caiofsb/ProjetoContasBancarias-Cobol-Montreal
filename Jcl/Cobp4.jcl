//HERC01XX JOB (COBOL),                                             
//             ' ',                                                 
//             CLASS=C,                                             
//             MSGCLASS=X,                                          
//             REGION=8M,TIME=1440,                                 
//             MSGLEVEL=(1,1),NOTIFY=HERC01                         
//PROJETO4 EXEC COBUCL,                                             
//             PARM.COB='FLAGW,LOAD,SUPMAP,SIZE=2048K,BUF=1024K,LIB'
//COB.SYSPUNCH DD DUMMY                                             
//COB.SYSIN    DD DSNAME=HERC01.COBOL(PROJETO4),DISP=SHR            
//COB.SYSLIB   DD DSNAME=HERC01.COPY,DISP=SHR                       
//LKED.SYSLMOD DD DSNAME=HERC01.LOAD(PROJETO4),DISP=SHR             
//LKED.SYSIN   DD DUMMY                                             
//                                                                  
//                                                                  