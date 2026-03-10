CREATE DATABASE cropdb;

USE cropdb;

CREATE TABLE disease (
id INT PRIMARY KEY AUTO_INCREMENT,
crop VARCHAR(50),
symptom VARCHAR(200),
disease_name VARCHAR(100),
solution VARCHAR(200)
);

INSERT INTO disease(crop,symptom,disease_name,solution)
VALUES
('Tomato','yellow spots','Leaf Curl','Use neem oil spray'),
('Potato','brown spots','Early Blight','Apply fungicide'),
('Rice','white patches','Rice Blast','Use resistant seeds'),
('Wheat','yellow leaves','Rust Disease','Use sulfur spray');