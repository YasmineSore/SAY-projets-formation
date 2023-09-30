
create table CLIENT 
(
   IDCLIENT             integer                        not null,
   NOM                  char(10)                       not null,
   PRENOM               char(20)                       not null,
   constraint PK_CLIENT primary key (IDCLIENT)
);

/*==============================================================*/
/* Table : COMMANDE                                             */
/*==============================================================*/
create table COMMANDE 
(
   IDCOMMANDE           integer                        not null,
   IDCLIENT             integer                        not null,
   LIBELLE              char(20)                       not null,
   QUANTITE             integer                        not null,
   constraint PK_COMMANDE primary key (IDCOMMANDE)
);

/*==============================================================*/
/* Table : CONCERNER                                            */
/*==============================================================*/
create table CONCERNER 
(
   IDPRODUIT            integer                        not null,
   IDCOMMANDE           integer                        not null,
   constraint PK_CONCERNER primary key (IDPRODUIT, IDCOMMANDE)
);

/*==============================================================*/
/* Table : PRODUIT                                              */
/*==============================================================*/
create table PRODUIT 
(
   IDPRODUIT            integer                        not null,
   LIBELLE              char(20)                       not null,
   PRIX                 integer                        not null,
   constraint PK_PRODUIT primary key (IDPRODUIT)
);

alter table COMMANDE
   add constraint FK_COMMANDE_LANCER_CLIENT foreign key (IDCLIENT)
      references CLIENT (IDCLIENT)
      on update restrict
      on delete restrict;

alter table CONCERNER
   add constraint FK_CONCERNE_CONCERNER_PRODUIT foreign key (IDPRODUIT)
      references PRODUIT (IDPRODUIT)
      on update restrict
      on delete restrict;

alter table CONCERNER
   add constraint FK_CONCERNE_CONCERNER_COMMANDE foreign key (IDCOMMANDE)
      references COMMANDE (IDCOMMANDE)
      on update restrict
      on delete restrict;

