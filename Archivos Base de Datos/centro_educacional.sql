--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      Dylan
-- Project :      Centro Educacional v2.5.DM1
-- Author :       Dylan
--
-- Date Created : Tuesday, February 16, 2016 18:06:02
-- Target DBMS : MySQL 4.x
--

-- 
-- TABLE: ASIGNACION_PARQUEO 
--

CREATE TABLE ASIGNACION_PARQUEO(
    codigo_asignacion_parqueo    INT    NOT NULL,
    codigo_parqueo               INT    NOT NULL,
    codigoCarnet                 INT    NOT NULL,
    PRIMARY KEY (codigo_asignacion_parqueo)
)
;



-- 
-- TABLE: ASIGNACION_PENSUM 
--

CREATE TABLE ASIGNACION_PENSUM(
    codigo_asignacion_pensum    INT    NOT NULL,
    codigo_pensum               INT    NOT NULL,
    codigoCarnet                INT    NOT NULL,
    PRIMARY KEY (codigo_asignacion_pensum)
)
;



-- 
-- TABLE: ASIGNACIONCURSO 
--

CREATE TABLE ASIGNACIONCURSO(
    codigoInscripcion     INT         NOT NULL,
    codigoCurso           INT         NOT NULL,
    codigo_empleado       INT         NOT NULL,
    codigo_salon          CHAR(10)    NOT NULL,
    codigo_laboratorio    INT         NOT NULL,
    anio                  CHAR(10),
    ciclo                 CHAR(10),
    PRIMARY KEY (codigoInscripcion, codigoCurso)
)
;



-- 
-- TABLE: BITACORA 
--

CREATE TABLE BITACORA(
    codigo_usuario    CHAR(10)    NOT NULL,
    accion            CHAR(20),
    tabla             CHAR(20),
    fecha             CHAR(20),
    PRIMARY KEY (codigo_usuario)
)
;



-- 
-- TABLE: CARNET 
--

CREATE TABLE CARNET(
    codigoCarnet        INT    NOT NULL,
    jornada             INT    NOT NULL,
    año                 INT    NOT NULL,
    correlativo         INT    NOT NULL,
    codigoestudiante    INT    NOT NULL,
    PRIMARY KEY (codigoCarnet)
)
;



-- 
-- TABLE: CARRERA 
--

CREATE TABLE CARRERA(
    codigoCarrera     INT            NOT NULL,
    nombre            VARCHAR(50)    NOT NULL,
    codigoFacultad    INT            NOT NULL,
    PRIMARY KEY (codigoCarrera)
)
;



-- 
-- TABLE: CONTRATO 
--

CREATE TABLE CONTRATO(
    codigo_contrato    CHAR(10)          NOT NULL,
    fecha_contrato     DATE              NOT NULL,
    salario            DECIMAL(10, 2)    NOT NULL,
    codigo_empleado    INT               NOT NULL,
    PRIMARY KEY (codigo_contrato)
)
;



-- 
-- TABLE: CURSO 
--

CREATE TABLE CURSO(
    codigoCurso      INT            NOT NULL,
    prerequisito     INT            NOT NULL,
    nombre           VARCHAR(50)    NOT NULL,
    valor            CHAR(20),
    creditos         CHAR(20),
    codigo_pensum    INT            NOT NULL,
    PRIMARY KEY (codigoCurso)
)
;



-- 
-- TABLE: CURSOS_APROBADOS 
--

CREATE TABLE CURSOS_APROBADOS(
    codigo_cursos_aprobados    INT         NOT NULL,
    codigo_calificacion        CHAR(10)    NOT NULL,
    PRIMARY KEY (codigo_cursos_aprobados)
)
;



-- 
-- TABLE: DIRECCION 
--

CREATE TABLE DIRECCION(
    codigo_direccion    INT         NOT NULL,
    direccion           CHAR(30),
    codigoestudiante    INT         NOT NULL,
    PRIMARY KEY (codigo_direccion)
)
;



-- 
-- TABLE: DISTRIBUCION_ZONA 
--

CREATE TABLE DISTRIBUCION_ZONA(
    codigo_distribucion_zona    INT         NOT NULL,
    valoracion                  CHAR(20),
    PRIMARY KEY (codigo_distribucion_zona)
)
;



-- 
-- TABLE: EMAIL 
--

CREATE TABLE EMAIL(
    codigo_email        INT         NOT NULL,
    email               CHAR(20),
    codigoestudiante    INT         NOT NULL,
    PRIMARY KEY (codigo_email)
)
;



-- 
-- TABLE: EMPLEADO 
--

CREATE TABLE EMPLEADO(
    codigo_empleado     INT         NOT NULL,
    nombres             CHAR(20),
    apellidos           CHAR(20),
    fecha_nacimiento    DATE        NOT NULL,
    dpi                 CHAR(20),
    no_cuenta           INT,
    codigo_rol          INT         NOT NULL,
    codigoestudiante    INT         NOT NULL,
    PRIMARY KEY (codigo_empleado)
)
;



-- 
-- TABLE: ENCABEZADO_INCRIPCION 
--

CREATE TABLE ENCABEZADO_INCRIPCION(
    codigoInscripcion    INT     NOT NULL,
    fecha                DATE    NOT NULL,
    codigoJornada        INT     NOT NULL,
    codigoCarrera        INT     NOT NULL,
    codigoCarnet         INT     NOT NULL,
    PRIMARY KEY (codigoInscripcion)
)
;



-- 
-- TABLE: ENCABEZADO_NOTA 
--

CREATE TABLE ENCABEZADO_NOTA(
    codigo_calificacion    CHAR(10)    NOT NULL,
    calificacion           INT,
    fecha                  CHAR(20),
    codigoCarnet           INT         NOT NULL,
    codigoInscripcion      INT         NOT NULL,
    codigoCurso            INT         NOT NULL,
    PRIMARY KEY (codigo_calificacion)
)
;



-- 
-- TABLE: ENCARGADO 
--

CREATE TABLE ENCARGADO(
    codigo_encargado    INT         NOT NULL,
    nombre              CHAR(20),
    apellido            CHAR(20),
    direccion           CHAR(20),
    telefono            CHAR(20),
    codigoCarnet        INT         NOT NULL,
    PRIMARY KEY (codigo_encargado)
)
;



-- 
-- TABLE: EQUIVALENCIA 
--

CREATE TABLE EQUIVALENCIA(
    codigo_equivalencia    INT         NOT NULL,
    codigo_calificacion    CHAR(10)    NOT NULL,
    PRIMARY KEY (codigo_equivalencia)
)
;



-- 
-- TABLE: FACULTAD 
--

CREATE TABLE FACULTAD(
    codigoFacultad    INT            NOT NULL,
    nombre            VARCHAR(30)    NOT NULL,
    PRIMARY KEY (codigoFacultad)
)
;



-- 
-- TABLE: HORARIO 
--

CREATE TABLE HORARIO(
    codigoHorario    VARCHAR(15)    NOT NULL,
    rangoHora        VARCHAR(30)    NOT NULL,
    PRIMARY KEY (codigoHorario)
)
;



-- 
-- TABLE: JORNADA 
--

CREATE TABLE JORNADA(
    codigoJornada    INT            NOT NULL,
    nombre           VARCHAR(30)    NOT NULL,
    horario          VARCHAR(15)    NOT NULL,
    PRIMARY KEY (codigoJornada)
)
;



-- 
-- TABLE: LABORATORIO 
--

CREATE TABLE LABORATORIO(
    codigo_laboratorio    INT         NOT NULL,
    nombre                CHAR(20),
    numero                CHAR(20),
    tipo                  CHAR(20),
    PRIMARY KEY (codigo_laboratorio)
)
;



-- 
-- TABLE: NOTA 
--

CREATE TABLE NOTA(
    codigo_nota            INT         NOT NULL,
    nota                   INT,
    codigo_calificacion    CHAR(10)    NOT NULL,
    codigo_empleado        INT         NOT NULL,
    codig_tipo_nota        CHAR(10)    NOT NULL,
    PRIMARY KEY (codigo_nota)
)
;



-- 
-- TABLE: PAQUETE 
--

CREATE TABLE PAQUETE(
    ccodigo_paquete       INT            NOT NULL,
    codigoCurso           INT            NOT NULL,
    codigo_salon          CHAR(10)       NOT NULL,
    codigo_laboratorio    INT            NOT NULL,
    codigoHorario         VARCHAR(15)    NOT NULL,
    codigo_seccion        INT            NOT NULL,
    codigo_empleado       INT            NOT NULL,
    PRIMARY KEY (ccodigo_paquete)
)
;



-- 
-- TABLE: PARQUEO 
--

CREATE TABLE PARQUEO(
    codigo_parqueo    INT         NOT NULL,
    numero_parqueo    INT,
    cantidad          INT,
    ubicacion         CHAR(30),
    PRIMARY KEY (codigo_parqueo)
)
;



-- 
-- TABLE: PENSUM 
--

CREATE TABLE PENSUM(
    codigo_pensum    INT         NOT NULL,
    ano              CHAR(10),
    codigoCarrera    INT         NOT NULL,
    PRIMARY KEY (codigo_pensum)
)
;



-- 
-- TABLE: PERSONA 
--

CREATE TABLE PERSONA(
    codigoestudiante    INT             NOT NULL,
    nombre              VARCHAR(20),
    apellido            VARCHAR(120),
    fechaNacimiento     DATE,
    dpi                 VARCHAR(15),
    PRIMARY KEY (codigoestudiante)
)
;



-- 
-- TABLE: PRIVILEGIOS 
--

CREATE TABLE PRIVILEGIOS(
    codigo_privilegios    INT         NOT NULL,
    formulario            CHAR(20),
    permiso               CHAR(20),
    codigo_rol            INT         NOT NULL,
    PRIMARY KEY (codigo_privilegios)
)
;



-- 
-- TABLE: PUESTO 
--

CREATE TABLE PUESTO(
    codigo_rol    INT         NOT NULL,
    nombre        CHAR(20),
    PRIMARY KEY (codigo_rol)
)
;



-- 
-- TABLE: ROL 
--

CREATE TABLE ROL(
    codigo_rol     INT         NOT NULL,
    tipo           CHAR(10),
    descripcion    CHAR(20),
    PRIMARY KEY (codigo_rol)
)
;



-- 
-- TABLE: SALON 
--

CREATE TABLE SALON(
    codigo_salon    CHAR(10)    NOT NULL,
    nombre_salon    CHAR(10),
    cupo            CHAR(10),
    PRIMARY KEY (codigo_salon)
)
;



-- 
-- TABLE: SECCION 
--

CREATE TABLE SECCION(
    codigo_seccion    INT         NOT NULL,
    nombre            CHAR(20),
    PRIMARY KEY (codigo_seccion)
)
;



-- 
-- TABLE: SERVICIO 
--

CREATE TABLE SERVICIO(
    codigo_servicio         INT               NOT NULL,
    codigo_tipo_servicio    INT               NOT NULL,
    cod_tipo_pago           INT               NOT NULL,
    codigo_contrato         CHAR(10)          NOT NULL,
    codigoCarnet            INT               NOT NULL,
    monto                   DECIMAL(10, 2),
    fecha                   DATE,
    estado                  CHAR(10),
    PRIMARY KEY (codigo_servicio)
)
;



-- 
-- TABLE: TELEFONO 
--

CREATE TABLE TELEFONO(
    codigo_telefono     INT         NOT NULL,
    telefono            CHAR(20),
    codigoestudiante    INT         NOT NULL,
    PRIMARY KEY (codigo_telefono)
)
;



-- 
-- TABLE: TIPO_NOTA 
--

CREATE TABLE TIPO_NOTA(
    codig_tipo_nota    CHAR(10)     NOT NULL,
    descripcion        CHAR(100),
    valor              INT,
    ccodigo_paquete    INT          NOT NULL,
    PRIMARY KEY (codig_tipo_nota)
)
;



-- 
-- TABLE: TIPO_PAGO 
--

CREATE TABLE TIPO_PAGO(
    cod_tipo_pago    INT         NOT NULL,
    descripcion      CHAR(35),
    cuotas           CHAR(10),
    PRIMARY KEY (cod_tipo_pago)
)
;



-- 
-- TABLE: TIPO_SERVICIO 
--

CREATE TABLE TIPO_SERVICIO(
    codigo_tipo_servicio    INT               NOT NULL,
    descripcion             CHAR(50),
    fecha_corte             DATE,
    monto                   DECIMAL(10, 2),
    accion                  CHAR(20),
    PRIMARY KEY (codigo_tipo_servicio)
)
;



-- 
-- TABLE: USUARIO 
--

CREATE TABLE USUARIO(
    codigo_usuario      CHAR(10)     NOT NULL,
    nombre_usuario      CHAR(100),
    password_usuario    CHAR(100),
    codigoestudiante    INT          NOT NULL,
    codigo_rol          INT          NOT NULL,
    PRIMARY KEY (codigo_usuario)
)
;



-- 
-- TABLE: ASIGNACION_PARQUEO 
--

ALTER TABLE ASIGNACION_PARQUEO ADD CONSTRAINT RefPARQUEO24 
    FOREIGN KEY (codigo_parqueo)
    REFERENCES PARQUEO(codigo_parqueo)
;

ALTER TABLE ASIGNACION_PARQUEO ADD CONSTRAINT RefCARNET25 
    FOREIGN KEY (codigoCarnet)
    REFERENCES CARNET(codigoCarnet)
;


-- 
-- TABLE: ASIGNACION_PENSUM 
--

ALTER TABLE ASIGNACION_PENSUM ADD CONSTRAINT RefPENSUM47 
    FOREIGN KEY (codigo_pensum)
    REFERENCES PENSUM(codigo_pensum)
;

ALTER TABLE ASIGNACION_PENSUM ADD CONSTRAINT RefCARNET48 
    FOREIGN KEY (codigoCarnet)
    REFERENCES CARNET(codigoCarnet)
;


-- 
-- TABLE: ASIGNACIONCURSO 
--

ALTER TABLE ASIGNACIONCURSO ADD CONSTRAINT RefEMPLEADO17 
    FOREIGN KEY (codigo_empleado)
    REFERENCES EMPLEADO(codigo_empleado)
;

ALTER TABLE ASIGNACIONCURSO ADD CONSTRAINT RefSALON20 
    FOREIGN KEY (codigo_salon)
    REFERENCES SALON(codigo_salon)
;

ALTER TABLE ASIGNACIONCURSO ADD CONSTRAINT RefLABORATORIO23 
    FOREIGN KEY (codigo_laboratorio)
    REFERENCES LABORATORIO(codigo_laboratorio)
;

ALTER TABLE ASIGNACIONCURSO ADD CONSTRAINT RefENCABEZADO_INCRIPCION35 
    FOREIGN KEY (codigoInscripcion)
    REFERENCES ENCABEZADO_INCRIPCION(codigoInscripcion)
;

ALTER TABLE ASIGNACIONCURSO ADD CONSTRAINT RefCURSO42 
    FOREIGN KEY (codigoCurso)
    REFERENCES CURSO(codigoCurso)
;


-- 
-- TABLE: BITACORA 
--

ALTER TABLE BITACORA ADD CONSTRAINT RefUSUARIO57 
    FOREIGN KEY (codigo_usuario)
    REFERENCES USUARIO(codigo_usuario)
;


-- 
-- TABLE: CARNET 
--

ALTER TABLE CARNET ADD CONSTRAINT RefPERSONA1 
    FOREIGN KEY (codigoestudiante)
    REFERENCES PERSONA(codigoestudiante)
;


-- 
-- TABLE: CARRERA 
--

ALTER TABLE CARRERA ADD CONSTRAINT RefFACULTAD13 
    FOREIGN KEY (codigoFacultad)
    REFERENCES FACULTAD(codigoFacultad)
;


-- 
-- TABLE: CONTRATO 
--

ALTER TABLE CONTRATO ADD CONSTRAINT RefEMPLEADO18 
    FOREIGN KEY (codigo_empleado)
    REFERENCES EMPLEADO(codigo_empleado)
;


-- 
-- TABLE: CURSO 
--

ALTER TABLE CURSO ADD CONSTRAINT RefCURSO27 
    FOREIGN KEY (prerequisito)
    REFERENCES CURSO(codigoCurso)
;

ALTER TABLE CURSO ADD CONSTRAINT RefPENSUM46 
    FOREIGN KEY (codigo_pensum)
    REFERENCES PENSUM(codigo_pensum)
;


-- 
-- TABLE: CURSOS_APROBADOS 
--

ALTER TABLE CURSOS_APROBADOS ADD CONSTRAINT RefENCABEZADO_NOTA49 
    FOREIGN KEY (codigo_calificacion)
    REFERENCES ENCABEZADO_NOTA(codigo_calificacion)
;


-- 
-- TABLE: DIRECCION 
--

ALTER TABLE DIRECCION ADD CONSTRAINT RefPERSONA30 
    FOREIGN KEY (codigoestudiante)
    REFERENCES PERSONA(codigoestudiante)
;


-- 
-- TABLE: EMAIL 
--

ALTER TABLE EMAIL ADD CONSTRAINT RefPERSONA32 
    FOREIGN KEY (codigoestudiante)
    REFERENCES PERSONA(codigoestudiante)
;


-- 
-- TABLE: EMPLEADO 
--

ALTER TABLE EMPLEADO ADD CONSTRAINT RefPUESTO12 
    FOREIGN KEY (codigo_rol)
    REFERENCES PUESTO(codigo_rol)
;

ALTER TABLE EMPLEADO ADD CONSTRAINT RefPERSONA51 
    FOREIGN KEY (codigoestudiante)
    REFERENCES PERSONA(codigoestudiante)
;


-- 
-- TABLE: ENCABEZADO_INCRIPCION 
--

ALTER TABLE ENCABEZADO_INCRIPCION ADD CONSTRAINT RefJORNADA3 
    FOREIGN KEY (codigoJornada)
    REFERENCES JORNADA(codigoJornada)
;

ALTER TABLE ENCABEZADO_INCRIPCION ADD CONSTRAINT RefCARRERA5 
    FOREIGN KEY (codigoCarrera)
    REFERENCES CARRERA(codigoCarrera)
;

ALTER TABLE ENCABEZADO_INCRIPCION ADD CONSTRAINT RefCARNET16 
    FOREIGN KEY (codigoCarnet)
    REFERENCES CARNET(codigoCarnet)
;


-- 
-- TABLE: ENCABEZADO_NOTA 
--

ALTER TABLE ENCABEZADO_NOTA ADD CONSTRAINT RefCARNET40 
    FOREIGN KEY (codigoCarnet)
    REFERENCES CARNET(codigoCarnet)
;

ALTER TABLE ENCABEZADO_NOTA ADD CONSTRAINT RefASIGNACIONCURSO41 
    FOREIGN KEY (codigoInscripcion, codigoCurso)
    REFERENCES ASIGNACIONCURSO(codigoInscripcion, codigoCurso)
;


-- 
-- TABLE: ENCARGADO 
--

ALTER TABLE ENCARGADO ADD CONSTRAINT RefCARNET52 
    FOREIGN KEY (codigoCarnet)
    REFERENCES CARNET(codigoCarnet)
;


-- 
-- TABLE: EQUIVALENCIA 
--

ALTER TABLE EQUIVALENCIA ADD CONSTRAINT RefENCABEZADO_NOTA50 
    FOREIGN KEY (codigo_calificacion)
    REFERENCES ENCABEZADO_NOTA(codigo_calificacion)
;


-- 
-- TABLE: NOTA 
--

ALTER TABLE NOTA ADD CONSTRAINT RefTIPO_NOTA73 
    FOREIGN KEY (codig_tipo_nota)
    REFERENCES TIPO_NOTA(codig_tipo_nota)
;

ALTER TABLE NOTA ADD CONSTRAINT RefENCABEZADO_NOTA44 
    FOREIGN KEY (codigo_calificacion)
    REFERENCES ENCABEZADO_NOTA(codigo_calificacion)
;

ALTER TABLE NOTA ADD CONSTRAINT RefEMPLEADO58 
    FOREIGN KEY (codigo_empleado)
    REFERENCES EMPLEADO(codigo_empleado)
;


-- 
-- TABLE: PAQUETE 
--

ALTER TABLE PAQUETE ADD CONSTRAINT RefCURSO65 
    FOREIGN KEY (codigoCurso)
    REFERENCES CURSO(codigoCurso)
;

ALTER TABLE PAQUETE ADD CONSTRAINT RefSALON66 
    FOREIGN KEY (codigo_salon)
    REFERENCES SALON(codigo_salon)
;

ALTER TABLE PAQUETE ADD CONSTRAINT RefLABORATORIO67 
    FOREIGN KEY (codigo_laboratorio)
    REFERENCES LABORATORIO(codigo_laboratorio)
;

ALTER TABLE PAQUETE ADD CONSTRAINT RefHORARIO68 
    FOREIGN KEY (codigoHorario)
    REFERENCES HORARIO(codigoHorario)
;

ALTER TABLE PAQUETE ADD CONSTRAINT RefSECCION69 
    FOREIGN KEY (codigo_seccion)
    REFERENCES SECCION(codigo_seccion)
;

ALTER TABLE PAQUETE ADD CONSTRAINT RefEMPLEADO70 
    FOREIGN KEY (codigo_empleado)
    REFERENCES EMPLEADO(codigo_empleado)
;


-- 
-- TABLE: PENSUM 
--

ALTER TABLE PENSUM ADD CONSTRAINT RefCARRERA26 
    FOREIGN KEY (codigoCarrera)
    REFERENCES CARRERA(codigoCarrera)
;


-- 
-- TABLE: PRIVILEGIOS 
--

ALTER TABLE PRIVILEGIOS ADD CONSTRAINT RefROL56 
    FOREIGN KEY (codigo_rol)
    REFERENCES ROL(codigo_rol)
;


-- 
-- TABLE: SERVICIO 
--

ALTER TABLE SERVICIO ADD CONSTRAINT RefCONTRATO61 
    FOREIGN KEY (codigo_contrato)
    REFERENCES CONTRATO(codigo_contrato)
;

ALTER TABLE SERVICIO ADD CONSTRAINT RefCARNET63 
    FOREIGN KEY (codigoCarnet)
    REFERENCES CARNET(codigoCarnet)
;

ALTER TABLE SERVICIO ADD CONSTRAINT RefTIPO_SERVICIO59 
    FOREIGN KEY (codigo_tipo_servicio)
    REFERENCES TIPO_SERVICIO(codigo_tipo_servicio)
;

ALTER TABLE SERVICIO ADD CONSTRAINT RefTIPO_PAGO60 
    FOREIGN KEY (cod_tipo_pago)
    REFERENCES TIPO_PAGO(cod_tipo_pago)
;


-- 
-- TABLE: TELEFONO 
--

ALTER TABLE TELEFONO ADD CONSTRAINT RefPERSONA31 
    FOREIGN KEY (codigoestudiante)
    REFERENCES PERSONA(codigoestudiante)
;


-- 
-- TABLE: TIPO_NOTA 
--

ALTER TABLE TIPO_NOTA ADD CONSTRAINT RefPAQUETE72 
    FOREIGN KEY (ccodigo_paquete)
    REFERENCES PAQUETE(ccodigo_paquete)
;


-- 
-- TABLE: USUARIO 
--

ALTER TABLE USUARIO ADD CONSTRAINT RefPERSONA53 
    FOREIGN KEY (codigoestudiante)
    REFERENCES PERSONA(codigoestudiante)
;

ALTER TABLE USUARIO ADD CONSTRAINT RefROL54 
    FOREIGN KEY (codigo_rol)
    REFERENCES ROL(codigo_rol)
;


