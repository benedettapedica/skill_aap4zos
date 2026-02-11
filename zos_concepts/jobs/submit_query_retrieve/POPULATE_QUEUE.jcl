//POPULATE JOB (ACCT),'MQ FILL',CLASS=A,MSGCLASS=X
//STEP1    EXEC PGM=CSQUTIL,PARM='CSQ9'
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  COMMAND DDNAME(INPUT)
/*
//INPUT    DD *
  /* Inseriamo i messaggi tramite comandi di test */
  /* Nota: In alcune versioni si usa CSQUSYNC per i dati */
  /* Se vogliamo caricare dati testuali puri: */
  LOAD QUEUE(DEMO.SORGENTE.QUEUE) DDNAME(MSGS)
/*
//MSGS     DD *,DCB=(RECFM=VBS,LRECL=32760)
<pacs><id>TXN001</id><amt>1250</amt><ccy>EUR</ccy></pacs>
{"id":"AUTH99","typ":"PAY","amt":45.5,"mrc":"SHOP01"}
ISO|MT0200|PAN4532X1234|AMT15000|CUR978|LOC42
/*
