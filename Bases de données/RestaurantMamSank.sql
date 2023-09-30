
/*==============================================================*/
/* Table : BON_DE_REDUCTION                                     */
/*==============================================================*/
create table BON_DE_REDUCTION 
(
   IDBON                integer                        not null,
   LIBELLEBON           char(20)                       not null,
   constraint PK_BON_DE_REDUCTION primary key (IDBON)
);

/*==============================================================*/
/* Table : CLIENT                                               */
/*==============================================================*/
create table CLIENT 
(
   IDCLIENT             integer                        not null,
   NOM                  char(20)                       not null,
   PRENOM               char(20)                       not null,
   GENRE                char(10)                       not null,
   CONTACT              integer                        not null,
   LOCALISATION_GEOGRAPHIQUE char(20)                       not null,
   constraint PK_CLIENT primary key (IDCLIENT)
);

/*==============================================================*/
/* Table : COMMANDE                                             */
/*==============================================================*/
create table COMMANDE 
(
   IDCOMMANDE           integer                        not null,
   IDCLIENT             integer                        not null,
   LIVRAISON            char(10)                       not null,
   MODE_DE_PAYEMENT     char(10)                       not null,
   LIBELLECOMMANDE      char(20)                       not null,
   constraint PK_COMMANDE primary key (IDCOMMANDE)
);

/*==============================================================*/
/* Table : PLAT                                                 */
/*==============================================================*/
create table PLAT 
(
   IDPLAT               integer                        not null,
   IDTYPE               integer                        not null,
   PRIX                 integer                        not null,
   LIBELLEPLAT          char(20)                       null,
   constraint PK_PLAT primary key (IDPLAT)
);

/*==============================================================*/
/* Table : PRENDRE                                              */
/*==============================================================*/
create table PRENDRE 
(
   IDCOMMANDE           integer                        not null,
   IDPLAT               integer                        not null,
   constraint PK_PRENDRE primary key (IDCOMMANDE, IDPLAT)
);

/*==============================================================*/
/* Table : PRESTATION                                           */
/*==============================================================*/
create table PRESTATION 
(
   IDPRESTATION         integer                        not null,
   IDSALLE              integer                        null,
   IDTYPE_DE_PRESTATION integer                        not null,
   LIBELLEPRESTATION    char(20)                       not null,
   constraint PK_PRESTATION primary key (IDPRESTATION)
);

/*==============================================================*/
/* Table : REDUIR                                               */
/*==============================================================*/
create table REDUIR 
(
   IDBON                integer                        not null,
   IDCOMMANDE           integer                        not null,
   constraint PK_REDUIR primary key (IDBON, IDCOMMANDE)
);

/*==============================================================*/
/* Table : RESERVATION                                          */
/*==============================================================*/
create table RESERVATION 
(
   IDRESERVATION        integer                        not null,
   IDCLIENT             integer                        not null,
   LIBELLERESERVATION   char(20)                       not null,
   constraint PK_RESERVATION primary key (IDRESERVATION)
);

/*==============================================================*/
/* Table : SALLE                                                */
/*==============================================================*/
create table SALLE 
(
   IDSALLE              integer                        not null,
   LIBELLESALLE         char(10)                       not null,
   constraint PK_SALLE primary key (IDSALLE)
);

/*==============================================================*/
/* Table : TABLESALLE                                           */
/*==============================================================*/
create table TABLESALLE 
(
   IDTABLESALLE         integer                        not null,
   IDRESERVATION        integer                        not null,
   IDSALLE              integer                        not null,
   TYPE_DE_TABLE        char(10)                       null,
   LIBELLETABLESALLE    char(20)                       null,
   ATTRIBUT_31          char(10)                       null,
   constraint PK_TABLESALLE primary key (IDTABLESALLE)
);

/*==============================================================*/
/* Table : TYPE_DE_PLAT                                         */
/*==============================================================*/
create table TYPE_DE_PLAT 
(
   IDTYPE               integer                        not null,
   LIBELLETYPEPLAT      char(20)                       not null,
   constraint PK_TYPE_DE_PLAT primary key (IDTYPE)
);

/*==============================================================*/
/* Table : TYPE_DE_PRESTATION                                   */
/*==============================================================*/
create table TYPE_DE_PRESTATION 
(
   IDTYPE_DE_PRESTATION integer                        not null,
   LIBELLE_TYPE_        char(20)                       not null,
   constraint PK_TYPE_DE_PRESTATION primary key (IDTYPE_DE_PRESTATION)
);

alter table COMMANDE
   add constraint FK_COMMANDE_LANCE_CLIENT foreign key (IDCLIENT)
      references CLIENT (IDCLIENT)
      on update restrict
      on delete restrict;

alter table PLAT
   add constraint FK_PLAT_CONCERNE_TYPE_DE_ foreign key (IDTYPE)
      references TYPE_DE_PLAT (IDTYPE)
      on update restrict
      on delete restrict;

alter table PRENDRE
   add constraint FK_PRENDRE_PRENDRE_COMMANDE foreign key (IDCOMMANDE)
      references COMMANDE (IDCOMMANDE)
      on update restrict
      on delete restrict;

alter table PRENDRE
   add constraint FK_PRENDRE_PRENDRE2_PLAT foreign key (IDPLAT)
      references PLAT (IDPLAT)
      on update restrict
      on delete restrict;

alter table PRESTATION
   add constraint FK_PRESTATI_CONNAITRE_TYPE_DE_ foreign key (IDTYPE_DE_PRESTATION)
      references TYPE_DE_PRESTATION (IDTYPE_DE_PRESTATION)
      on update restrict
      on delete restrict;

alter table PRESTATION
   add constraint FK_PRESTATI_SAVOIR_SALLE foreign key (IDSALLE)
      references SALLE (IDSALLE)
      on update restrict
      on delete restrict;

alter table REDUIR
   add constraint FK_REDUIR_REDUIR_BON_DE_R foreign key (IDBON)
      references BON_DE_REDUCTION (IDBON)
      on update restrict
      on delete restrict;

alter table REDUIR
   add constraint FK_REDUIR_REDUIR2_COMMANDE foreign key (IDCOMMANDE)
      references COMMANDE (IDCOMMANDE)
      on update restrict
      on delete restrict;

alter table RESERVATION
   add constraint FK_RESERVAT_FAIRE_CLIENT foreign key (IDCLIENT)
      references CLIENT (IDCLIENT)
      on update restrict
      on delete restrict;

alter table TABLESALLE
   add constraint FK_TABLESAL_APPARTENI_SALLE foreign key (IDSALLE)
      references SALLE (IDSALLE)
      on update restrict
      on delete restrict;

alter table TABLESALLE
   add constraint FK_TABLESAL_RESERVE_RESERVAT foreign key (IDRESERVATION)
      references RESERVATION (IDRESERVATION)
      on update restrict
      on delete restrict;

