-- Tabla de usuarios
CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    contraseña_hash VARCHAR(255),
    fecha_creacion DATE,
    vida_actual INT DEFAULT 100,
    nivel_general INT DEFAULT 1,
    monedas INT DEFAULT 0,
    estado_personaje ENUM('vivo', 'muerto') DEFAULT 'vivo'
);

-- Tabla de áreas de vida
CREATE TABLE Areas (
    id_area INT AUTO_INCREMENT PRIMARY KEY,
    nombre_area VARCHAR(100)
);

-- Tabla de niveles por área
CREATE TABLE Niveles_por_Area (
    id_nivel_area INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_area INT,
    nivel INT DEFAULT 1,
    xp INT DEFAULT 0,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_area) REFERENCES Areas(id_area)
);

-- Tabla de hábitos
CREATE TABLE Habitos (
    id_habito INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    nombre VARCHAR(100),
    descripcion TEXT,
    tipo ENUM('bueno', 'malo'),
    area_asociada INT,
    xp_ganado INT DEFAULT 0,
    monedas_ganadas INT DEFAULT 0,
    vida_afectada INT DEFAULT 0,
    frecuencia ENUM('diario', 'semanal', 'mensual'),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (area_asociada) REFERENCES Areas(id_area)
);

-- Registro de cumplimiento de hábitos
CREATE TABLE Registro_Habitos (
    id_registro INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_habito INT,
    fecha DATE,
    resultado ENUM('completado', 'omitido'),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_habito) REFERENCES Habitos(id_habito)
);

-- Tienda de ítems
CREATE TABLE Tienda (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    costo_monedas INT,
    tipo ENUM('recompensa', 'mal_habito_controlado'),
    efecto_vida INT DEFAULT 0,
    efecto_xp INT DEFAULT 0
);

-- Historial de compras
CREATE TABLE Historial_Compras (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_item INT,
    fecha DATE,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_item) REFERENCES Tienda(id_item)
);

-- Esfuerzos para revivir personaje
CREATE TABLE Esfuerzos_para_Revivir (
    id_esfuerzo INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    descripcion TEXT,
    fecha DATE,
    estado ENUM('pendiente', 'completado') DEFAULT 'pendiente',
    validado BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);