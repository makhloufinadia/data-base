CONNECT system/orcl1
spool C:\Users\HP\Desktop\TP-BDD\--Create a new Package Body

CREATE PACKAGE BODY PACKAGE1 IS
create table CLIENT
  2  (codeC varchar (12) primary key,
  3  Nom varchar (12),
  4  prenom varchar (12),
  5  Email varchar (12),
  6  psw varchar (12),
  7  date_enregistement Date,
  8  date_dernier_acces Date,
  9  ville varchar (12),
 10  pays varchar (12),
 11  code_postal varchar (12),
 12  telephone varchar (12),
 13  age number
 14  );
 create table produit
  2  (codeP varchar(12) primary key,
  3  nomProd varchar (12),
  4  prix_unitaire number,
  5  date_fabrication Date
  6  );
  create table ACHAT
  2  (codeC varchar(12),
  3  codeP varchar (12),
  4  date_achat Date,
  5  quantite number,
  6  constraint c10 primary key (codeC,codeP,date_achat,quantite)
  7  );
  create table sportif
  2  (sexe varchar(12),
  3  age number
  4  );
alter table client add constraint c3 check (age>=21);
alter table client add(date_naissance Date);
alter table client add(sexe varchar(12));
alter table client modify (prenom varchar (15));
alter table client drop column DATE_NAISSANCE;
alter table sportif modify sexe not null;
alter table sportif modify age not null;
alter table client
  2  rename column pays TO willaya;
alter table client
  2  add constraint c9 check (willaya in ('ADRAR','ORAN','BLIDA','BOUMERDES','ANNABA','ALGER','BOUIRA','BISKRA'));


  -- Add procedure body
  PROCEDURE PROCEDURE1 (
    PARAM1 IN NUMBER) IS
    BEGIN
      NULL;
    END PROCEDURE1;

  -- Add function body
  FUNCTION FUNCTION1 (
    PARAM1 IN NUMBER) RETURN NUMBER IS
    BEGIN
      RETURN NULL;
    END FUNCTION1;

END PACKAGE1;
/
