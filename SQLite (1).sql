CREATE TABLE professor (
  matricula_funcional VARCHAR(6),
  nome VARCHAR(60),
  valor_hora_aula DECIMAL(4,2)
  );
  
 CREATE TABLE disciplina ( 
   codigo VARCHAR(5) PRIMARY KEY,
   nome VARCHAR(30) NOT NULL,
   carga_horario_total INT
);

CREATE TABLE professor_ministra_disciplina (
  fk_matricula_funcional VARCHAR(6),
  fk_codigo VARCHAR(5),
  PRIMARY KEY (fk_matricula_funcional,fk_codigo_disciplina),
  FOREIGN KEY (fk_matriucla_funcional) REFERENCES professor(matricula_funcional),
  FOREIGN KEY (fk_codigo_disciplina) REFERENCES disciplina(codigo)
);


INSERT INTO professor (matricula_funcional, nome, valor_hora_aula)
VALUES('012548', 'Ana Maria da Silva', 38.56),
       ('741258', 'Luiz de Souza', 27.33),
       ('5879966','Leonardo Perim de Almeida', 45.98),
       ('020248', 'Marilza Amorim', 29.18),
       ('018745', 'Ana Silva', 35.18),
       ('540098', 'Bruno Costa', 40.89),
       ('330981', 'Carla Souza', 48.10),
       ('189045', 'Jucimar Amorim', 28.97),
       ('067101', 'Amanda Perim', 38.16),
       ('789903', 'Lourdes de Assis', 31.15);

INSERT INTO disciplina (codigo, nome, carga_horario_total)
VALUES ('WEB01', 'Desenvolvimento Web', 160),
       ('WEB02', 'Desenvolvimento Web II', 140),
       ('PJF01', 'Projeto Final I', 140),
       ('PJF02', 'Projeto Final II', 120),
       ('PJF03', 'Projeto Final III', 120);
       
INSERT INTO professor_ministra_disciplina (fk_matricula_funcional, fk_codigo_disciplina)
VALUES ('012548', 'WEB01'), ('012548', 'WEB02'), ('741258', 'WEB01'), ('741258', 'PJF01'),
       ('020248', 'PJF02'), ('018745', 'WEB02'), ('540098', 'PJF03'), ('330981', 'PJF01'),
       ('189045', 'WEB01');