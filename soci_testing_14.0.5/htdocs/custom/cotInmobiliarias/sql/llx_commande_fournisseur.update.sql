ALTER TABLE llx_commande_fournisseur ADD presupuesto_fk integer(11) DEFAULT NULL;
ALTER TABLE llx_commande_fournisseur ADD cotinm_administracion_tipo char(1) DEFAULT NULL;
ALTER TABLE llx_commande_fournisseur ADD cotinm_administracion_valor float(9,4) DEFAULT NULL;
ALTER TABLE llx_commande_fournisseur ADD cotinm_administracion_iva float(9,4) DEFAULT NULL;
ALTER TABLE llx_commande_fournisseur ADD cotinm_gravamen_tipo char(1) DEFAULT NULL;
ALTER TABLE llx_commande_fournisseur ADD cotinm_gravamen_valor float(9,4) DEFAULT NULL;
ALTER TABLE llx_commande_fournisseur ADD cotinm_seguros_tipo char(1) DEFAULT NULL;
ALTER TABLE llx_commande_fournisseur ADD cotinm_seguros_valor float(9,4) DEFAULT NULL;
ALTER TABLE llx_commande_fournisseur ADD cotinm_seguros_iva float(9,4) DEFAULT NULL;
ALTER TABLE llx_commande_fournisseur ADD cotinm_costo_transaccion_valor float(9,4) DEFAULT NULL;
ALTER TABLE llx_commande_fournisseur ADD cotinm_costo_transaccion_tipo char(1) DEFAULT NULL;