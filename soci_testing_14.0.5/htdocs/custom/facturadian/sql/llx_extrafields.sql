LOCK TABLES `llx_extrafields` WRITE;
INSERT INTO `llx_extrafields` VALUES (1001,'sepfe',1,'facture','FACTURACIÓN ELECTRÓNICA','separate','',NULL,NULL,0,0,NULL,'1',100,0,'a:1:{s:7:\"options\";a:1:{s:0:\"\";N;}}','3',0,0,NULL,NULL,1,1,'2020-03-10 21:39:14','2020-03-11 02:39:14'),(1002,'invoicetypecode',1,'facture','Tipo de Documento','select','',NULL,NULL,0,1,NULL,'1',101,1,'a:1:{s:7:\"options\";a:5:{s:2:\"01\";s:20:\"Factura de venta (1)\";i:21;s:29:\"Nota Credito x Devolucion (1)\";i:22;s:28:\"Nota Credito x Anulacion (2)\";i:31;s:26:\"Nota Debito x Intereses(1)\";i:32;s:24:\"Nota Debito x Gastos (2)\";}}','1',0,0,NULL,NULL,1,1,'2020-03-10 21:41:17','2020-03-11 02:41:17'),(1003,'envio',1,'facture','Envío DIAN','select','',NULL,NULL,0,0,NULL,'1',102,1,'a:1:{s:7:\"options\";a:2:{i:1;s:7:\"Enviado\";i:0;s:10:\"Sin enviar\";}}','1',0,0,NULL,NULL,1,1,'2020-03-10 21:42:43','2020-03-11 02:42:43'),(1004,'isvalid',1,'facture','Validado Dian','select','',NULL,NULL,0,0,NULL,'1',105,1,'a:1:{s:7:\"options\";a:3:{s:1:\"-\";s:12:\"Para validar\";s:5:\"false\";s:5:\"false\";s:4:\"true\";s:4:\"true\";}}','1',0,0,NULL,NULL,1,1,'2020-03-10 21:47:00','2020-03-11 02:47:00'),(1005,'statuscode',1,'facture','StatusCode','varchar','5',NULL,NULL,0,0,NULL,'1',106,1,'a:1:{s:7:\"options\";a:1:{s:0:\"\";N;}}','1',0,0,NULL,NULL,1,1,'2020-03-10 21:48:17','2020-03-11 02:48:17'),(1006,'success',1,'facture','Success','varchar','20',NULL,NULL,0,0,NULL,'1',100,1,'a:1:{s:7:\"options\";a:1:{s:0:\"\";N;}}','0',0,0,NULL,NULL,1,1,'2020-03-10 21:50:55','2020-03-11 02:50:55'),(1007,'pdf21',1,'facture','Pdf','select','',NULL,NULL,0,0,NULL,'1',108,1,'a:1:{s:7:\"options\";a:3:{s:1:\"-\";s:9:\"Sin subir\";s:5:\"false\";s:5:\"false\";s:4:\"true\";s:4:\"true\";}}','1',0,0,NULL,NULL,1,1,'2020-03-10 21:52:54','2020-03-11 02:52:54'),(1008,'errormessage',1,'facture','ErrorMessage','text','2000',NULL,NULL,0,0,NULL,'1',100,1,'a:1:{s:7:\"options\";a:1:{s:0:\"\";N;}}','3',0,0,NULL,NULL,1,1,'2020-03-10 22:00:46','2020-03-11 03:00:46'),(1009,'cufe',1,'facture','Cufe','varchar','100',NULL,NULL,0,0,NULL,'1',103,1,'a:1:{s:7:\"options\";a:1:{s:0:\"\";N;}}','0',0,0,NULL,NULL,1,1,'2020-03-12 10:54:29','2020-03-12 15:54:29'),(1010,'zipkey',1,'facture','Zipkey','varchar','100',NULL,NULL,0,0,NULL,'1',104,1,'a:1:{s:7:\"options\";a:1:{s:0:\"\";N;}}','0',0,0,NULL,NULL,1,1,'2020-03-12 10:54:38','2020-03-12 15:54:38'),(1011,'condicionmsg',1,'facture','CondiciónMSG','varchar','255',NULL,NULL,0,0,NULL,'1',150,1,'a:1:{s:7:\"options\";a:1:{s:0:\"\";N;}}','3',0,0,NULL,NULL,1,1,'2020-03-12 15:17:16','2020-03-12 20:17:16'),(1012,'condicion',1,'facture','Condición','varchar','20',NULL,NULL,0,0,NULL,'1',145,1,'a:1:{s:7:\"options\";a:1:{s:0:\"\";N;}}','1',0,0,NULL,NULL,1,1,'2020-03-12 15:17:28','2020-03-12 20:17:28'),(1013,'evento',1,'facture','Evento','varchar','50',NULL,NULL,0,0,NULL,'1',140,1,'a:1:{s:7:\"options\";a:1:{s:0:\"\";N;}}','1',0,0,NULL,NULL,1,1,'2020-03-12 15:17:37','2020-03-12 20:17:37'),(1014,'processedmessage',1,'facture','Processed Message','varchar','100',NULL,NULL,0,0,NULL,'1',135,1,'a:1:{s:7:\"options\";a:1:{s:0:\"\";N;}}','0',0,0,NULL,NULL,1,1,'2020-03-12 15:17:47','2020-03-12 20:17:47'),(1015,'dateevento',1,'facture','Date Evento','varchar','50',NULL,NULL,0,0,NULL,'1',130,1,'a:1:{s:7:\"options\";a:1:{s:0:\"\";N;}}','3',0,0,NULL,NULL,1,1,'2020-03-12 15:17:57','2020-03-12 20:17:57'),(1016,'messageid',1,'facture','Envío Email','select','',NULL,NULL,0,0,NULL,'1',125,1,'a:1:{s:7:\"options\";a:3:{s:1:\"-\";s:11:\"Para enviar\";s:5:\"false\";s:5:\"false\";s:4:\"true\";s:4:\"true\";}}','1',0,0,NULL,NULL,1,1,'2020-03-23 16:25:35','2020-03-23 21:25:35'),(1017,'statusdescription',1,'facture','StatusDescription','varchar','250',NULL,NULL,0,0,NULL,'1',107,1,'a:1:{s:7:\"options\";a:1:{s:0:\"\";N;}}','1',0,0,NULL,NULL,1,1,'2020-05-13 19:34:44','2020-05-14 00:34:44');
UNLOCK TABLES;