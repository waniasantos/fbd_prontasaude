CREATE SCHEMA prontuario;

SET SCHEMA 'prontuario';

CREATE TABLE paciente (
	id_paciente SERIAL PRIMARY KEY,
	nome_completo VARCHAR(150) NOT NULL,
	data_nascimento DATE,
	sexo CHAR(1) CHECK (sexo IN ('m', 'f')),
	cpf VARCHAR(20) UNIQUE NOT NULL,
	numero_cartao_sus VARCHAR(20) UNIQUE NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	telefone VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE unidade_medica (
	id_unidade_medica SERIAL PRIMARY KEY,
	nome_unidade VARCHAR(150) NOT NULL,
	tipo_unidade VARCHAR(30),
	quantidade_leitos INT,
	cnpj VARCHAR(30) UNIQUE NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	telefone VARCHAR(20) UNIQUE NOT NULL,
	estado VARCHAR(30),
	cidade VARCHAR(30),
	logradouro VARCHAR(100),
	numero_endereco INT
);

CREATE TABLE profissional_saude (
	id_profissional_saude SERIAL PRIMARY KEY,
	nome_completo VARCHAR(150) NOT NULL,
	cargo VARCHAR(30) NOT NULL,
	especialidade_medica VARCHAR(30), 
	registro_profissional VARCHAR(20) UNIQUE NOT NULL,
	cpf VARCHAR(20) UNIQUE NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	telefone VARCHAR(20) UNIQUE NOT NULL,
	id_unidade_medica INT REFERENCES unidade_medica(id_unidade_medica)
);

CREATE TABLE prontuario (
	id_prontuario SERIAL PRIMARY KEY,
	id_paciente INT REFERENCES paciente(id_paciente)
);

CREATE TABLE registro_prontuario (
	id_registro_prontuario SERIAL PRIMARY KEY,
	data_registro DATE NOT NULL,
	id_prontuario INT REFERENCES prontuario(id_prontuario),
	id_profissional_saude INT REFERENCES profissional_saude(id_profissional_saude)
);

CREATE TABLE internacao (
	id_internacao SERIAL PRIMARY KEY,
	motivo_internacao VARCHAR(300) NOT NULL,
	tipo_acomodacao VARCHAR(50),
	data_inicio DATE NOT NULL,
	data_termino DATE,
	alta BOOLEAN NOT NULL DEFAULT FALSE,
	id_registro_prontuario INT REFERENCES registro_prontuario(id_registro_prontuario)
);

CREATE TABLE exame (
	id_exame SERIAL PRIMARY KEY,
	tipo_exame VARCHAR(100) NOT NULL,
	resultado VARCHAR(300) NOT NULL,
	data DATE NOT NULL,
	hora TIME,
	id_registro_prontuario INT REFERENCES registro_prontuario(id_registro_prontuario)
);

CREATE TABLE consulta (
	id_consulta SERIAL PRIMARY KEY,
	diagnostico VARCHAR(300) NOT NULL,
	data DATE NOT NULL,
	hora TIME,
	id_registro_prontuario INT REFERENCES registro_prontuario(id_registro_prontuario)
);

CREATE TABLE prescricao_medica (
	id_prescricao_medica SERIAL PRIMARY KEY,
	medicamento VARCHAR(50) NOT NULL,
	dosagem VARCHAR(50) NOT NULL,
	frequencia VARCHAR(50) NOT NULL,
	id_consulta INT REFERENCES consulta(id_consulta)
);

CREATE TABLE atestado (
	id_registro_prontuario INT REFERENCES registro_prontuario(id_registro_prontuario),
	motivo_atestado VARCHAR(300) NOT NULL,
	data_inicio DATE NOT NULL,
	data_termino DATE NOT NULL,
	duracao_dias INT NOT NULL DEFAULT 1
);


--
--
-- TRIGGERS
--
--

-- Atualizando data_termino em internacao (atributo derivado)
CREATE OR REPLACE FUNCTION atualizar_data_termino_internacao()
RETURNS TRIGGER AS $$
BEGIN
    NEW.data_termino := CURRENT_DATE;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_atualizar_data_termino_internacao
BEFORE UPDATE OF alta ON internacao
FOR EACH ROW
WHEN (NEW.alta = TRUE)
EXECUTE FUNCTION atualizar_data_termino_internacao();



-- Atualizando data_termino em atestado (atributo derivado)
CREATE OR REPLACE FUNCTION atualizar_data_termino_atestado()
RETURNS TRIGGER AS $$
BEGIN
    NEW.data_termino := NEW.data_inicio + INTERVAL '1 day' * NEW.duracao_dias;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_atualizar_data_termino_atestado
BEFORE INSERT OR UPDATE ON atestado
FOR EACH ROW
EXECUTE FUNCTION atualizar_data_termino_atestado();


-- Criando um prontuário assim que um paciente é inserido no sistema
CREATE OR REPLACE FUNCTION criar_prontuario_para_novo_paciente()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO prontuario.prontuario (id_paciente) VALUES (NEW.id_paciente);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_criar_prontuario
AFTER INSERT ON paciente
FOR EACH ROW
EXECUTE FUNCTION criar_prontuario_para_novo_paciente();