DROP DATABASE IF EXISTS TodoList;
CREATE DATABASE TodoList;
USE TodoList;

CREATE TABLE USERS (
    id_user SMALLINT AUTO_INCREMENT PRIMARY KEY,
    fname_user VARCHAR(100),
    name_user VARCHAR(100),
    mail_user VARCHAR(255),
    password_user VARCHAR(255)
);

CREATE TABLE TODOLIST (
    id_todo SMALLINT AUTO_INCREMENT PRIMARY KEY,
    id_user SMALLINT,
    title_todo VARCHAR(100) NOT NULL,
    description_todo VARCHAR(500) NOT NULL,
    due_date DATE NOT NULL,
    is_completed BOOLEAN DEFAULT 0,
    CONSTRAINT foreign_key_id_user FOREIGN KEY(id_user) REFERENCES USERS(id_user)
);

INSERT INTO USERS VALUES
(NULL, 'Ewen', 'Buhot', 'ewen.buhot@gmail.com', 'ewenbuhot'),
(NULL, 'Tom', 'Delangle', 'tom.delangle@gmail.com', 'tomdelangle'),
(NULL, 'Thomas', 'Quero', 'thomas.quero@gmail.com', 'thomasquero');

INSERT INTO TODOLIST VALUES
(NULL, 1, 'Faire les courses', 'Acheter du lait, des œufs et du pain', '2022-04-10', 0),
(NULL, 1, 'Terminer le rapport', 'Finaliser le rapport pour le projet ABC', '2022-04-15', 0),
(NULL, 2, 'Appeler le médecin', 'Prendre rendez-vous pour un bilan de santé', '2022-04-12', 0),
(NULL, 2, 'Réviser pour l''examen', 'Réviser le chapitre sur les bases de données', '2022-04-20', 0),
(NULL, 3, 'Faire le ménage', 'Nettoyer la cuisine et la salle de bain', '2022-04-11', 0);
