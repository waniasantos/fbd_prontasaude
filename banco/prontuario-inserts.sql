SET SCHEMA 'prontuario';

INSERT INTO paciente (nome_completo, data_nascimento, sexo, cpf, numero_cartao_sus, email, telefone)
VALUES
	('Tereza Santos', '1937-06-15', 'f', '695.456.783-00', '935.1947.2456.3574', 'terezasantos@gmail.com', '(88) 9 9201-2345'),
	('Pedro Santana', '2003-07-07', 'm', '605.567.893-01', '611.3642.4121.9729', 'pedro.orped@gmail.com', '(88) 9 9206-7890'),
	('Fernanda Oliveira', '1995-04-11', 'f', '112.678.903-02', '564.7242.9564.3036', 'fernandadesigner@gmail.com', '(88) 9 9612-3456'),
	('Judite Machado', '1946-05-18', 'f', '402.789.013-33', '962.9644.7405.8440', 'judite@gmail.com', '(88) 9 9618-9012'),
	('Sabrina Santos', '1999-05-07', 'f', '231.456.783-05', '147.0083.1928.0672', 'sabrinasantos@gmail.com', '(88) 9 9634-5678'),
	('Joana Carvalho', '1994-04-27', 'f', '596.567.893-15', '833.7460.4501.8770', 'joana.carvalho@gmail.com', '(88) 9 9645-6789'),
	('Gustavo Marques', '1977-01-24', 'm', '562.678.903-02', '810.6961.4114.8743', 'marques.go@gmail.com', '(88) 9 9932-1456'),
	('Samuel Melo', '1957-05-14', 'm', '221.789.013-30', '947.4521.6207.8663', 'samelo@gmail.com', '(88) 9 9947-2368'),
	('Raianne Lima', '1992-08-18', 'f', '459.789.013-03', '154.5723.1519.4953', 'raionthesky@gmail.com', '(88) 9 9986-8901'),
	('Iohana Lopes', '2001-09-22', 'f', '559.890.123-84', '476.0131.8812.2506', 'lopes.xu@gmail.com', '(88) 9 9955-7812');

INSERT INTO unidade_medica (nome_unidade, tipo_unidade, quantidade_leitos, cnpj, email, telefone, estado, cidade, logradouro, numero_endereco)
VALUES
	('Hospital Municipal Eusebio', 'Hospital', 100, '82.345.158/0001-90', 'hospital.eusebio@gmail.com', '(88) 3533-1611', 'Ceará', 'Quixadá', 'Av. Eusebio Queiroz', 1000),
	('Policlínica Santa Maria', 'Policlínica', 30, '55.456.796/0001-01', 'policlinica.bh@gmail.com', '(88) 3533-1252', 'Ceará', 'Quixadá', 'Rua Maria Amaro', 200),
	('Hospital e Maternidade Jesus Maria', 'Hospital', 150, '34.559.590/0001-12', 'maternidade@gmail.com', '(88) 3533-3963', 'Ceará', 'Quixadá', 'Rua Eneas de Lima', 300),
	('Clínica Vera Queiroz', 'Clínica', 20, '22.678.901/0001-23', 'clinica.veraqueiroz@gmail.com', '(88) 3533-7844', 'Ceará', 'Quixadá', 'Rua Oscar Barbosa', 400),
	('UPA', 'UPA', 100, '12.559.678/0001-90', 'upa@gmail.com', '(88) 3533-1651', 'Ceará', 'Quixadá', 'Av. Palácio Castelo', 1000),
	('Policlínica Batista', 'Policlínica', 30, '27.451.725/0001-01', 'clinica.batista@gmail.com', '(88) 3533-2322', 'Ceará', 'Quixadá', 'Rua Raquel de Queiroz', 200),
	('Hospital do Coração', 'Hospital', 150, '31.967.550/0001-12', 'hospital.core@gmail.com', '(88) 3533-3354', 'Ceará', 'Quixadá', 'Rua Doutor Clóvis', 300),
	('Mais Saúde', 'Clínica', 20, '45.678.999/0001-23', 'plus.plus@gmail.com', '(88) 3533-6844', 'Ceará', 'Quixadá', 'Avenida Celerino Nepomuceno', 400),
	('Vicente Lemos', 'Clínica', 20, '45.666.901/0001-23', 'vicente.lemos@gmail.com', '(88) 3533-5987','Ceará', 'Quixadá', 'Avenida Jorge Mar', 400),
	('Lamic', 'Hospital', 80, '44.789.012/0001-34', 'lamic@gmail.com', '(88) 3533-5665', 'Ceará', 'Quixadá', 'Rua dos Andradas', 500);


INSERT INTO profissional_saude (nome_completo, cargo, especialidade_medica, registro_profissional, cpf, email, telefone, id_unidade_medica)
VALUES
	('João Pereira', 'Médico(a)', NULL, 'CRM-549456', '678.901.233-15', 'joao.pereira@gmail.com', '(88) 9 9458-6566', 1),
	('Luana Santos', 'Médico(a)', 'Obstetricia', 'CRM-265967', '789.012.343-60', 'luana.santos@gmail.com', '(88) 9 9226-7847', 3),
	('Ricardo Lima', 'Médico(a)', 'Neurologia', 'CRM-996578', '890.133.483-78', 'ricardo.lima@gmail.com', '(88) 9 9654-8668', 3),
	('Fernanda Silva', 'Enfermeiro(a)', NULL, 'COREN-CE 605.990-EN', '901.236.563-80', 'fernanda.silva@gmail.com', '(88) 9 9988-9269', 3),
	('Marcelo Almeida', 'Médico(a)', 'Ginecologia', 'CRM-111890', '010.375.173-09', 'marcelo.almeida@gmail.com', '(88) 9 9600-0100', 4),
	('Ana Costa', 'Médico(a)', 'Ortopedia', 'CRM-678901', '123.456.789-01', 'ana.costa@gmail.com', '(88) 9 9777-1234', 4),
	('Beatriz Lima', 'Médico(a)', 'Oftalmologia', 'CRM-789012', '234.567.890-12', 'beatriz.lima@gmail.com', '(88) 9 9688-2345', 6),
	('Carlos Duarte', 'Diretor(a) Hospitalar', NULL, 'CRM-890123', '345.678.901-23', 'carlos.duarte@gmail.com', '(88) 9 9999-3456', 7),
	('Daniela Martins', 'Enfermeiro(a)', NULL, 'COREN-CE 056.993-EN', '456.789.012-34', 'daniela.martins@gmail.com', '(88) 9 9477-4567', 8),
	('Eduardo Ferreira', 'Médico(a)', 'Cardiopatia', 'CRM-056985', '567.890.123-45', 'eduardo.ferreira@gmail.com', '(88) 9 9666-5678', 8);


INSERT INTO registro_prontuario (data_registro, id_prontuario, id_profissional_saude)
VALUES 
	(CURRENT_DATE, 1, 1),
	(CURRENT_DATE, 2, 6),
	(CURRENT_DATE, 3, 3),
	(CURRENT_DATE, 5, 1),
	(CURRENT_DATE, 4, 2),
	(CURRENT_DATE, 6, 9),
	(CURRENT_DATE, 7, 10),
	(CURRENT_DATE, 8, 1),
	(CURRENT_DATE, 4, 2),
	(CURRENT_DATE, 9, 1),
	(CURRENT_DATE, 5, 1),
	(CURRENT_DATE, 5, 1),
	(CURRENT_DATE, 5, 1),
	(CURRENT_DATE, 7, 10),
	(CURRENT_DATE, 4, 2),
	(CURRENT_DATE, 4, 2),
	(CURRENT_DATE, 9, 1),
	(CURRENT_DATE, 3, 3),
	(CURRENT_DATE, 1, 1),
	(CURRENT_DATE, 9, 1),
	(CURRENT_DATE, 3, 3),
	(CURRENT_DATE, 1, 1),
	(CURRENT_DATE, 4, 2),
	(CURRENT_DATE, 2, 6),
	(CURRENT_DATE, 5, 1),
	(CURRENT_DATE, 6, 9),
	(CURRENT_DATE, 7, 10),
	(CURRENT_DATE, 8, 1),
	(CURRENT_DATE, 9, 3),
	(CURRENT_DATE, 10, 7);
	
INSERT INTO internacao (motivo_internacao, tipo_acomodacao, data_inicio, id_registro_prontuario)
VALUES
	('Infecção respiratória', 'Quarto individual', '2024-01-10', 1),
	('Cirurgia ortopédica', 'Quarto particular', '2024-01-12', 2),
	('Tratamento neurológico', 'Enfermaria', '2024-01-15', 3),
	('Acidente automobilístico', 'UTI', '2024-01-20', 4),
	('Gestação de alto risco', 'Quarto particular', '2024-01-25', 5),
	('Doença renal crônica', 'Enfermaria', '2024-02-01', 6),
	('Cardiopatia', 'Quarto particular', '2024-02-05', 7),
	('Doença pulmonar obstrutiva crônica', 'Quarto individual', '2024-02-10', 8),
	('Parto normal', 'Quarto particular', '2024-02-15', 9),
	('Trauma craniano', 'UTI', '2024-02-20', 10);


INSERT INTO exame (tipo_exame, data, hora, resultado, id_registro_prontuario)
VALUES
	('Raio-X de tórax', '2024-01-11', '10:00:00', 'Fratura no tórax', 11),
	('Raio-X de joelho', '2024-01-13', '14:00:00', 'Fratura de fêmur', 12),
	('Raio-X da clavicula', '2024-01-16', '09:00:00', 'Lesão clavicular', 13),
	('Eletrocardiograma', '2024-01-16', '09:00:00', 'Alterações significativas', 14),
	('Ultrassom obstétrico', '2024-01-26', '09:00:00', 'Gestação em curso com complicações', 15),
	('Exame de glicemia', '2024-02-01', '08:30:00', 'Glicemia normal', 16),
	('Tomografia de crânio', '2024-02-21', '14:00:00', 'Hematoma subdural identificado', 17),
	('Eletroencefalograma', '2024-01-16', '10:00:00', 'Atividade cerebral anormal', 18),
	('Hemograma completo', '2024-01-12', '08:00:00', 'Leucocitose', 19),
	('Tomografia de crânio', '2024-02-21', '14:00:00', 'Hematoma subdural identificado', 20);


INSERT INTO consulta (diagnostico, data, hora, id_registro_prontuario)
VALUES
	('Condições neurológicas adequadas', '2024-01-20', '14:00:00', 21),
	('Início de Oteoporose', '2024-01-05', '09:00:00', 22),
	('Dilatação pélvica acentuada', '2024-02-14', '09:00:00', 23),
	('Recuperação pós-cirúrgica', '2024-01-15', '10:00:00', 24), 
	('Sinais vitais pós-acidente estabilizados', '2024-01-21', '11:00:00', 25), 
	('Alterações renais', '2024-02-02', '10:00:00', 26),   
	('Alterações significativas no eletrocardiograma', '2024-02-06', '14:00:00', 27), 
	('Progressão da doença pumonar obstrusiva crônica', '2024-02-11', '16:00:00', 28), 
	('Identificação de possíveis sequelas', '2024-02-22', '09:00:00', 29),
	('Deslocamento acentuado de retina', '2024-02-22', '09:00:00', 30);


INSERT INTO prescricao_medica (medicamento, dosagem, frequencia, id_consulta)
VALUES
	('Paracetamol', '500mg', 'A cada 8 horas', 1), 
	('Ibuprofeno', '400mg', 'A cada 6 horas', 2), 
	('Aspirina', '100mg', 'Uma vez ao dia', 3), 
	('Lisinopril', '10mg', 'Uma vez ao dia', 4), 
	('Metformina', '500mg', 'A cada 12 horas', 5), 
	('Broncodilatador', 'Inalação', 'A cada 6 horas', 6),
	('Metoprolol', '50mg', 'Uma vez ao dia', 7),
	('Analgésico', '250mg', 'A cada 8 horas', 8), 
	('Antibiótico', '500mg', 'A cada 8 horas', 9),
	('Antidiabético', '10mg', 'A cada 12 horas', 10);


INSERT INTO atestado (id_registro_prontuario, motivo_atestado, data_inicio, data_termino, duracao_dias)
VALUES
	(21, 'Recuperação de cirurgia neurológica', '2024-01-20', '2024-01-30', 10),
	(22, 'Tratamento de osteoporose', '2024-01-05', '2024-01-15', 10),
	(23, 'Gestação de risco', '2024-02-14', '2024-02-28', 14),
	(24, 'Recuperação pós-cirúrgica', '2024-01-15', '2024-01-25', 10),
	(25, 'Tratamento pós-acidente automobilístico', '2024-01-21', '2024-01-31', 10),
	(26, 'Tratamento de doença renal', '2024-02-02', '2024-02-12', 10),
	(27, 'Tratamento de cardiopatia', '2024-02-06', '2024-02-16', 10),
	(28, 'Tratamento de doença pulmonar', '2024-02-11', '2024-02-21', 10),
	(29, 'Tratamento de trauma craniano', '2024-02-22', '2024-03-04', 10),
	(30, 'Tratamento de deslocamento de retina', '2024-02-22', '2024-03-01', 7);