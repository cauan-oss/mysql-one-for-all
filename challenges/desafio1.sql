DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.usuarios(
  id INT PRIMARY KEY  AUTO_INCREMENT, 
  nome_pessoa_usuaria VARCHAR(45) NULL,
  idade VARCHAR(45) NULL,
  planos int,
  data_assinatura not null date,
  artista int,
   FOREIGN KEY (id_plano) REFERENCES plano(id_plano),
   FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;


CREATE TABLE SpotifyClone.planos(
     id_plano INT PRIMARY KEY AUTO_INCREMENT,
     valor double not null,
     plano varchar(20) not null
 ) engine = InnoDB;

 INSERT INTO SpotifyClone.planos(valor, plano)
 VALUES
   (0, 'gratuito'), 
   (7.99, 'familiar'), 
   (5.99, 'universitario'), 
   (6.99, 'pessoal');
   
   