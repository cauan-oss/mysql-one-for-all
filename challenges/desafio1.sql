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

REATE TABLE SpotifyClone.artistas(
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista_nome VARCHAR(20) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.album(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_nome VARCHAR(20) NOT NULL,
    album_ano_lancamento INT NOT NULL,
    artista_id INT,
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
   
   