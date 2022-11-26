---------------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA PERSONA

CREATE SEQUENCE SECPERSONA
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECPERSONA;
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------
 
------CREACION DE LA TABLA PERSONA------
  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN PERSONA.Id_persona IS 'Clave principal de la tabla de persona';
  COMMENT ON COLUMN PERSONA.NO_DOC_ID IS 'Documento personal de la persona';
  COMMENT ON COLUMN PERSONA.NOMBRE1 IS 'Primer nombre de la persona';
  COMMENT ON COLUMN PERSONA.NOMBRE2 IS 'Segundo nombre de la persona';
  COMMENT ON COLUMN PERSONA.OTRO_NOMBRE IS 'Por si la persona llegara a tener un tercer nombre';
  COMMENT ON COLUMN PERSONA.APELLIDO1 IS 'Primer apellido de la persona';
  COMMENT ON COLUMN PERSONA.APELLIDO2 IS 'Segundo apellido de la persona';
  COMMENT ON COLUMN PERSONA.APELLIDO_CASADA IS 'Por si la persona utiliza el apellido de casada';
  COMMENT ON COLUMN PERSONA.TELEFONO IS 'Numero telefonico de la persona';
  COMMENT ON COLUMN PERSONA.FECHA_NACIMIENTO IS 'Fecha de nacimiento de la persona';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO PERSONA VALUES(SECPERSONA.nextVal, 520, 'ANDREA', 'ALEJANDRA', '', 'MENDOZA', 'DIAZ', '', '97235434',TO_DATE('26/10/2022','DD/MM/YYYY'));
  INSERT INTO PERSONA VALUES(SECPERSONA.nextVal, 577, 'JOSE', 'MARIO', '', 'ESTRADA', 'GONZALES', '', '73946293',TO_DATE('26/10/2022','DD/MM/YYYY'));
  INSERT INTO PERSONA VALUES(SECPERSONA.nextVal, 523, 'WENDY', 'SUSANA', '', 'HERNANDEZ', 'GARCIA', 'ESTRADA', '63521249',TO_DATE('26/10/2022','DD/MM/YYYY'));
  
  --DELETE FROM PERSONA
  DELETE FROM PERSONA
  WHERE ID_PERSONA = 2;
  
  SELECT * FROM PERSONA;
--------------------------------------------------------------------------
--------------------------------------------------------------------------

------CREACION DE SECUENCIA DE DATOS PARA LA TABLA TIPO_DOC

CREATE SEQUENCE SECTIPO_DOC
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECTIPO_DOC
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------
---------CREACION DE LA TABLA TIPO_DOC
  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN TIPO_DOC.ID_TIPO_DOC IS 'Clave principal de la tabla de tipo doc';
  COMMENT ON COLUMN TIPO_DOC.TIPO_DOC IS 'Tipo de documento de identificacion';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO TIPO_DOC VALUES(SECTIPO_DOC.nextVal, 'DPI');
  INSERT INTO TIPO_DOC VALUES(SECTIPO_DOC.nextVal, 'DPI');
  INSERT INTO TIPO_DOC VALUES(SECTIPO_DOC.nextVal, 'PASAPORTE');
  
  DELETE FROM TIPO_DOC
  SELECT * FROM TIPO_DOC;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA CLIENTE

CREATE SEQUENCE SECCLIENTE
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECCLIENTE
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

---CREACION DE LA TABLA CLIENTE
  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN CLIENTE.Id_CLIENTE IS 'Clave principal de la tabla de cliente';
  COMMENT ON COLUMN CLIENTE.FECHA_NACIMIENTO IS 'Fecha de nacimiento del cliente';
  COMMENT ON COLUMN CLIENTE.Id_ESTADO_CLIENTE IS 'Id del estado en el cual se encuentra el cliente';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO CLIENTE VALUES(SECCLIENTE.nextVal, TO_DATE('26/10/2022','DD/MM/YYYY'), 1);
  INSERT INTO CLIENTE VALUES(SECCLIENTE.nextVal, TO_DATE('26/10/2022','DD/MM/YYYY'), 2);
  INSERT INTO CLIENTE VALUES(SECCLIENTE.nextVal, TO_DATE('26/10/2022','DD/MM/YYYY'), 3);
  
  DELETE FROM CLIENTE
  SELECT * FROM CLIENTE;
---------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA PERSONA

CREATE SEQUENCE SECTURNO
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECTURNO
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

-------CREACION DE LA TABLA TURNO
  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN TURNO.ID_TURNO IS 'Clave principal de la tabla de turno';
  COMMENT ON COLUMN TURNO.FECHA IS 'Fecha del turno en el que se encuentra';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO TURNO VALUES(SECTURNO.nextVal,'NOCTURNO', TO_DATE('25/10/2022','DD/MM/YYYY'),TO_DATE('25/10/2022','DD/MM/YYYY'));
  INSERT INTO TURNO VALUES(SECTURNO.nextVal, 'DIURNO', TO_DATE('25/10/2022','DD/MM/YYYY'),TO_DATE('25/10/2022','DD/MM/YYYY'));
  INSERT INTO TURNO VALUES(SECTURNO.nextVal, 'MIXTO', TO_DATE('25/10/2022','DD/MM/YYYY'),TO_DATE('25/10/2022','DD/MM/YYYY'));
  SELECT * FROM TURNO;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TURNO_EMPLEADO

CREATE SEQUENCE SECTURNO_EMPLEADO
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECTURNO_EMPLEADO
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------


---CREACION DE LA TABLA TURNO_EMPLEADO
  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN TURNO_EMPLEADO.Id_TURNO_EMPLEADO IS 'Clave principal de la tabla de turno empleado';
  COMMENT ON COLUMN TURNO_EMPLEADO.TIPO_TURNO IS 'Tipo de turno que tiene el empleado';
  COMMENT ON COLUMN TURNO_EMPLEADO.FECHA_INICIO_TURNO IS 'Fecha en la cual inicia el turno';
  COMMENT ON COLUMN TURNO_EMPLEADO.FECHA_FINAL_TURNO IS 'Fecha en la cual finaliza el turno';
  --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO TURNO_EMPLEADO VALUES(SECTURNO_EMPLEADO.nextVal, 'DIURNA', TO_DATE('24/10/2022','DD/MM/YYYY'),TO_DATE('24/10/2022','DD/MM/YYYY'));
  INSERT INTO TURNO_EMPLEADO VALUES(SECTURNO_EMPLEADO.nextVal, 'NOCTURNA',TO_DATE('24/10/2022','DD/MM/YYYY'),TO_DATE('25/10/2022','DD/MM/YYYY'));
  INSERT INTO TURNO_EMPLEADO VALUES(SECTURNO_EMPLEADO.nextVal, 'DIURNA', TO_DATE('25/10/2022','DD/MM/YYYY'),TO_DATE('25/10/2022','DD/MM/YYYY'));
  SELECT * FROM TURNO_EMPLEADO;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA PERSONA

CREATE SEQUENCE SECESTADO
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECESTADO
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------
---CREACION DE LA TABLA ESTADO

  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN ESTADO.Id_ESTADO IS 'Clave principal de la tabla de estado';
  COMMENT ON COLUMN ESTADO.DESCRIPCION_ESTADO IS 'Descripcion del estado en el que se encuentra';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO ESTADO VALUES(SECESTADO.nextVal, 'ACTIVO');
  INSERT INTO ESTADO VALUES(SECESTADO.nextVal, 'ACTIVO');
  INSERT INTO ESTADO VALUES(SECESTADO.nextVal, 'ACTIVO');
  
  DELETE FROM ESTADO
  
  SELECT * FROM ESTADO;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA EMPLEADO_PUESTO

CREATE SEQUENCE SECEMPPUESTO
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECEMPPUESTO
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

        ---CREACION DE LA TABLA EMPLEADO_PUESTO

  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN EMPLEADO_PUESTO.ID_EMPLEADO_PUESTO IS 'Clave principal de la tabla de empleado puesto';
  COMMENT ON COLUMN EMPLEADO_PUESTO.FECHA_INICIO_PUESTO IS 'Fecha en la cual el empleado fue contratado';
  COMMENT ON COLUMN EMPLEADO_PUESTO.FECHA_FINAL_PUESTO IS 'Fecha en la que el empleado fue despedido';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO EMPLEADO_PUESTO VALUES(SECEMPPUESTO.nextVal, TO_DATE('15/06/2021'), TO_DATE('20/12/2022'));
  INSERT INTO EMPLEADO_PUESTO VALUES(SECEMPPUESTO.nextVal, TO_DATE('04/12/2017'), TO_DATE('29/05/2021'));
  INSERT INTO EMPLEADO_PUESTO VALUES(SECEMPPUESTO.nextVal, TO_DATE('09/08/2015'), TO_DATE('26/10/2022'));
  SELECT * FROM EMPLEADO_PUESTO;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA EMPLEADO

CREATE SEQUENCE SECEMPLEADO
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECEMPLEADO
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------
---CREACION DE LA TABLA EMPLEADO
  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN EMPLEADO.Id_EMPLEADO IS 'Clave principal de la tabla de empleado';
  COMMENT ON COLUMN EMPLEADO.FECHA_CONTRATACION IS 'Fecha en la cual se contrato el empleado';
  COMMENT ON COLUMN EMPLEADO.ID_ESTADO_EMPLEADO IS 'Identificador del puesto del trabajador';
  COMMENT ON COLUMN EMPLEADO.ID_PUESTO_TRABAJADOR IS 'Codigo del puesto del empleado';
  COMMENT ON COLUMN EMPLEADO.FECHA_BAJA IS 'Fecha en la cual el empleado se dio de baja';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO EMPLEADO VALUES(SECEMPLEADO.nextVal, TO_DATE('05/03/2020'), 1, 3, TO_DATE('25/09/2022'));
  INSERT INTO EMPLEADO VALUES(SECEMPLEADO.nextVal, TO_DATE('26/08/2016'), 2, 2, TO_DATE('29/05/2021'));
  INSERT INTO EMPLEADO VALUES(SECEMPLEADO.nextVal, TO_DATE('04/05/2018'), 3, 1, TO_DATE('26/10/2022'));
  SELECT * FROM EMPLEADO;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA PUESTO

CREATE SEQUENCE SECPUESTO
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECPUESTO
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------
 ---CREACION DE LA TABLA PUESTO
  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN PUESTO.ID_PUESTO IS 'Clave principal de la tabla de puesto';
  COMMENT ON COLUMN PUESTO.NOMBRE_PUESTO IS 'Nombre del puesto de trabajo';
  COMMENT ON COLUMN PUESTO.SALARIO IS 'Salario mensual del empleado al puesto correspondiente';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO PUESTO VALUES(SECPUESTO.nextVal, 'JEFE', 7800);
  INSERT INTO PUESTO VALUES(SECPUESTO.nextVal, 'GERENTE', 5000);
  INSERT INTO PUESTO VALUES(SECPUESTO.nextVal, 'CAJERO', 3200);
  SELECT * FROM PUESTO;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA MOTIVO_BAJA

CREATE SEQUENCE SECMOTIVO_BAJA
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECMOTIVO_BAJA
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

---CREACION DE LA TABLA MOTIVO_BAJA  

  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN MOTIVO_BAJA.ID_BAJA IS 'Clave principal de la tabla de motivo baja';
  COMMENT ON COLUMN MOTIVO_BAJA.MOTIVO_BAJA IS 'Motivo por el cual se dio de baja al empleado';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO MOTIVO_BAJA VALUES(SECMOTIVO_BAJA.nextVal, 'RENUNCIA');
  INSERT INTO MOTIVO_BAJA VALUES(SECMOTIVO_BAJA.nextVal, 'DESPIDO');
  INSERT INTO MOTIVO_BAJA VALUES(SECMOTIVO_BAJA.nextVal, 'DESPIDO');
  
  --DELETE FROM MOTIVO_BAJA
  SELECT * FROM MOTIVO_BAJA;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA PROVEEDOR

CREATE SEQUENCE SECPROVEEDOR
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECPROVEEDOR
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------
  ---CREACION DE LA TABLA PROVEEDOR  
  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN PROVEEDOR.ID_PROVEEDOR IS 'Clave principal de la tabla de proveedor';
  COMMENT ON COLUMN PROVEEDOR.DIRECCION IS 'Direccion en la cual se encuentra el proveedor';
  COMMENT ON COLUMN PROVEEDOR.ID_ESTADO_PRODUCTO IS 'Codigo del estado en el cual se encuentra el producto';
  COMMENT ON COLUMN PROVEEDOR.ID_PUESTO_PROVEEDOR IS 'Codigo del puesto del proveedor';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO PROVEEDOR VALUES(SECPROVEEDOR.nextVal, 'CIUDAD', 3, 1);
  INSERT INTO PROVEEDOR VALUES(SECPROVEEDOR.nextVal, 'ZONA 10',2, 3);
  INSERT INTO PROVEEDOR VALUES(SECPROVEEDOR.nextVal, 'ZONA 14',1, 2);
  SELECT * FROM PROVEEDOR;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
---CREACION DE LA TABLA SERVICIO_PROVEEDOR  

  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN SERVICIO_PROVEEDOR.ID_PRODUCTO_PROVEEDOR IS 'Clave principal de la tabla de servicio proveedor';
  COMMENT ON COLUMN SERVICIO_PROVEEDOR.NOMBRE_PRODUCTO IS 'Nombre del producto';
  COMMENT ON COLUMN SERVICIO_PROVEEDOR.NOMBRE_SERVICIO IS 'Nombre del servicio que se brindara';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO SERVICIO_PROVEEDOR VALUES(1, 'LUBRICANTE', 'SERVICIO DE LUBRICANTE');
  INSERT INTO SERVICIO_PROVEEDOR VALUES(2, 'GASOLINA', 'SERVICIO DE GASOLINA');
  INSERT INTO SERVICIO_PROVEEDOR VALUES(3, 'LUBRICANTE', 'SERVICIO DE LUBRICANTE');
  SELECT * FROM SERVICIO_PROVEEDOR;
--------------------------------------------------------------------------
--------------------------------------------------------------------------  
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA SEDE

CREATE SEQUENCE SECSEDE
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECSEDE
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

---CREACION DE LA TABLA SEDE
  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN SEDE.ID_SEDE IS 'Clave principal de la tabla de sede';
  COMMENT ON COLUMN SEDE.NOMBRE_SEDE IS 'Nombre de la sede';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO SEDE VALUES(SECSEDE.nextVal, 'PUMA');
  INSERT INTO SEDE VALUES(SECSEDE.nextVal, 'UNO');
  INSERT INTO SEDE VALUES(SECSEDE.nextVal, 'TEXACO');
  SELECT * FROM SEDE;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA MUNICIPIO

CREATE SEQUENCE SECMUNICIPIO
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECMUNICIPIO
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

---CREACION DE LA TABLA MUNICIPIO

  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN MUNICIPIO.ID_MUNICIPIO IS 'Clave principal de la tabla de municipio';
  COMMENT ON COLUMN MUNICIPIO.NOMBRE_MUNICIPIO IS 'Municipio donde se encuentra la sede';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO MUNICIPIO VALUES(SECMUNICIPIO.nextVal, 'Guatemala');
  INSERT INTO MUNICIPIO VALUES(SECMUNICIPIO.nextVal, 'Barberena');
  INSERT INTO MUNICIPIO VALUES(SECMUNICIPIO.nextVal, 'FLORES');
  SELECT * FROM MUNICIPIO;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA PERSONA

CREATE SEQUENCE SECDEPARTAMENTO
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECDEPARTAMENTO
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

---CREACION DE LA TABLA DEPARTAMENTO

  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN DEPARTAMENTO.ID_DEPARTAMENTO IS 'Clave principal de la tabla de departamento';
  COMMENT ON COLUMN DEPARTAMENTO.NOMBRE_DEPARTAMENTO IS 'Nombre del departamento de donde se encuentra la sede';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO DEPARTAMENTO VALUES(SECDEPARTAMENTO.nextVal, 'GUATEMALA');
  INSERT INTO DEPARTAMENTO VALUES(SECDEPARTAMENTO.nextVal, 'ESCUINTLA');
  INSERT INTO DEPARTAMENTO VALUES(SECDEPARTAMENTO.nextVal, 'PETEN');
  SELECT * FROM DEPARTAMENTO;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA DETALLE_FACTURA

CREATE SEQUENCE SECDETALLE_FACTURA
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECDETALLE_FACTURA
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

---CREACION DE LA TABLA DETALLE_FACTURA
  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN DETALLE_FACTURA.ID_DETALLE_FACTURA IS 'Clave principal de la tabla de detalle factura';
  COMMENT ON COLUMN DETALLE_FACTURA.CANTIDAD IS 'Cantidad de la compra';
  COMMENT ON COLUMN DETALLE_FACTURA.PRECIO IS 'Precio del producto';
  COMMENT ON COLUMN DETALLE_FACTURA.TOTAL IS 'Total de la venta';
  COMMENT ON COLUMN DETALLE_FACTURA.DESCRIPCION IS 'Descripcion de la venta realizada';
  COMMENT ON COLUMN DETALLE_FACTURA.NIT IS 'Nit del consumidor';
  COMMENT ON COLUMN DETALLE_FACTURA.FECHA IS 'Fecha de la venta';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO DETALLE_FACTURA VALUES(SECDETALLE_FACTURA.nextVal, 2, 75, 150, 'COMPRA DE 2 LUBRICANTES', 53435753-5,TO_DATE('26/10/2022','DD/MM/YYYY'));
  INSERT INTO DETALLE_FACTURA VALUES(SECDETALLE_FACTURA.nextVal, 1, 200, 200, 'COMPRA DE COMVUSTIBLE', 93259877-4,TO_DATE('26/10/2022','DD/MM/YYYY'));
  INSERT INTO DETALLE_FACTURA VALUES(SECDETALLE_FACTURA.nextVal, 1, 35, 35, 'COMPRA DE COMBUSTIBLE', 99235213-7,TO_DATE('26/10/2022','DD/MM/YYYY'));
  SELECT * FROM DETALLE_FACTURA;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA PERSONA

CREATE SEQUENCE SECFACTURA
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECFACTURA
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

---CREACION DE LA TABLA FACTURA

  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN FACTURA.ID_VENTA IS 'Clave principal de la tabla de factura';
  COMMENT ON COLUMN FACTURA.FECHA_FACTURA IS 'Fecha en la cual fue emitida la factura';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO FACTURA VALUES(SECFACTURA.nextVal, TO_DATE('26/10/2022','DD/MM/YYYY'));
  INSERT INTO FACTURA VALUES(SECFACTURA.nextVal, TO_DATE('26/10/2022','DD/MM/YYYY'));
  INSERT INTO FACTURA VALUES(SECFACTURA.nextVal, TO_DATE('26/10/2022','DD/MM/YYYY'));
  SELECT * FROM FACTURA;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA CONTROL_PAGO

CREATE SEQUENCE SECCONTROL_PAGO
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECCONTROL_PAGO
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

---CREACION DE LA TABLA CONTROL_PAGO
 
  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN CONTROL_PAGO.ID_CONTROL_PAGO IS 'Clave principal de la tabla de control pago';
  COMMENT ON COLUMN CONTROL_PAGO.MONTO IS 'Monto a pagar';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO CONTROL_PAGO VALUES(SECCONTROL_PAGO.nextVal, 150);
  INSERT INTO CONTROL_PAGO VALUES(SECCONTROL_PAGO.nextVal, 200);
  INSERT INTO CONTROL_PAGO VALUES(SECCONTROL_PAGO.nextVal, 50);
  SELECT * FROM CONTROL_PAGO;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA PAGO

CREATE SEQUENCE SECPAGO
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECPAGO
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

---CREACION DE LA TABLA PAGO

  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN PAGO.ID_PAGO IS 'Clave principal de la tabla de pago';
  COMMENT ON COLUMN PAGO.FORMA_PAGO IS 'Forma en la cual el consumidor pagara';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO PAGO VALUES(SECPAGO.nextVal, 'TARJETA');
  INSERT INTO PAGO VALUES(SECPAGO.nextVal, 'TARJETA');
  INSERT INTO PAGO VALUES(SECPAGO.nextVal, 'EFECTIVO');
  SELECT * FROM PAGO;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA PERSONA

CREATE SEQUENCE SECTIPO_PRODUCTO
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECTIPO_PRODUCTO
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

  ---CREACION DE LA TABLA TIPO_PRODUCTO

  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN TIPO_PRODUCTO.ID_TIPO_PRODUCTO IS 'Clave principal de la tabla de tipo producto';
  COMMENT ON COLUMN TIPO_PRODUCTO.TIPO_PRODUCTO IS 'Tipo del producto del que se vendera';
  COMMENT ON COLUMN TIPO_PRODUCTO.TIPO_MEDIDA IS 'Medida del producto';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO TIPO_PRODUCTO VALUES(SECTIPO_PRODUCTO.nextVal, 'LUBRICANTE', 'LITROS');
  INSERT INTO TIPO_PRODUCTO VALUES(SECTIPO_PRODUCTO.nextVal, 'GASOLINA', 'GALONES');
  INSERT INTO TIPO_PRODUCTO VALUES(SECTIPO_PRODUCTO.nextVal, 'GASOLINA', 'GALONES');
  SELECT * FROM TIPO_PRODUCTO;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA PERSONA

CREATE SEQUENCE SECVEHICULO
 START WITH     1000
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECVEHICULO
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

  ---CREACION DE LA TABLA VEHICULO

  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN VEHICULO.ID_VEHICULO IS 'Clave principal de la tabla de vehiculo';
  COMMENT ON COLUMN VEHICULO.NUMERO_MATRICULA IS 'Numero de matricula del vehiculo';
  COMMENT ON COLUMN VEHICULO.ANIO IS 'Anio del vehiculo';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO VEHICULO VALUES(SECVEHICULO.nextVal, '435-HFD', 2000);
  INSERT INTO VEHICULO VALUES(SECVEHICULO.nextVal, '525-FGC', 2021);
  INSERT INTO VEHICULO VALUES(SECVEHICULO.nextVal, '753-MHB', 2008);
  SELECT * FROM VEHICULO;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA TIPO_MATRICULA

CREATE SEQUENCE SECTIPO_MATRICULA
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECTIPO_MATRICULA
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

  ---CREACION DE LA TABLA TIPO_MATRICULA

  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN TIPO_MATRICULA.ID_TIPO_MATRICULA IS 'Clave principal de la tabla de tipo matricula';
  COMMENT ON COLUMN TIPO_MATRICULA.NOMBRE_MATRICULA IS 'Datos de la matricula';
  COMMENT ON COLUMN TIPO_MATRICULA.TIPO_MATRICULA IS 'Codigo de la matricula';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO TIPO_MATRICULA VALUES(SECTIPO_MATRICULA.nextVal, '435-HFD', 'PARTICULAR');
  INSERT INTO TIPO_MATRICULA VALUES(SECTIPO_MATRICULA.nextVal, '525-FGC', 'PARTICULAR');
  INSERT INTO TIPO_MATRICULA VALUES(SECTIPO_MATRICULA.nextVal, '753-MHB', 'MOTOCICLET');
  SELECT * FROM TIPO_MATRICULA;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA MARCA

CREATE SEQUENCE SECMARCA
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECMARCA
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

  ---CREACION DE LA TABLA MARCA

  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN MARCA.ID_MARCA IS 'Clave principal de la tabla de marca';
  COMMENT ON COLUMN MARCA.NOMBRE_MARCA IS 'Nombre de la marca del vehiculo';
   --INGRESO DE DATOS A LAS TABLAS 
  INSERT INTO MARCA VALUES(SECMARCA.nextVal, 'BMW');
  INSERT INTO MARCA VALUES(SECMARCA.nextVal, 'AUDI');
  INSERT INTO MARCA VALUES(SECMARCA.nextVal, 'HONDA');
  SELECT * FROM MARCA;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA COLOR

CREATE SEQUENCE SECCOLOR
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECCOLOR
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

  ---CREACION DE LA TABLA COLOR

  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN COLOR.ID_COLOR IS 'Clave principal de la tabla de color';
  COMMENT ON COLUMN COLOR.NOMBRE_COLOR IS 'Color del vehiculo';
    --INGRESO DE DATOS A LAS TABLAS
  INSERT INTO COLOR VALUES(SECCOLOR.nextVal, 'NEGRO');
  INSERT INTO COLOR VALUES(SECCOLOR.nextVal, 'GRIS');
  INSERT INTO COLOR VALUES(SECCOLOR.nextVal, 'ROJO');
  SELECT * FROM COLOR;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA LINEA

CREATE SEQUENCE SECLINEA
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECLINEA
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

  ---CREACION DE LA TABLA LINEA

  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN LINEA.ID_LINEA IS 'Clave principal de la tabla de linea';
  COMMENT ON COLUMN LINEA.NOMBRE_LINEA IS 'Nombre de la Linea del vehiculo';
    --INGRESO DE DATOS A LAS TABLAS
   INSERT INTO LINEA VALUES(SECLINEA.nextVal, 'X6');
  INSERT INTO LINEA VALUES(SECLINEA.nextVal, 'PROLOGUE');
  INSERT INTO LINEA VALUES(SECLINEA.nextVal, 'AKRAPOVIC');
  SELECT * FROM LINEA;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA PRODUCTO

CREATE SEQUENCE SECPRODUCTO
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECPRODUCTO
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

    ---CREACION DE LA TABLA PRODUCTO

  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN PRODUCTO.ID_PRODUCTO IS 'Clave principal de la tabla de producto';
  COMMENT ON COLUMN PRODUCTO.NOMBRE_PRODUCTO IS 'Nombre del producto';
  COMMENT ON COLUMN PRODUCTO.PRECIO_PRODUCTO IS 'Precio del producto';
    --INGRESO DE DATOS A LAS TABLAS
     INSERT INTO PRODUCTO VALUES(SECPRODUCTO.nextVal, 'LUBRICANTE CASTROL', 40);
  INSERT INTO PRODUCTO VALUES(SECPRODUCTO.nextVal, 'GASOLINA SUPER', 36.72);
  INSERT INTO PRODUCTO VALUES(SECPRODUCTO.nextVal, 'GASOLINA SUPER', 36.72);
  SELECT * FROM PRODUCTO;
--------------------------------------------------------------------------
--------------------------------------------------------------------------
------CREACION DE SECUENCIA DE DATOS PARA LA TABLA SEDE_PRODUCTO

CREATE SEQUENCE SECSEDE_PRODUCTO
 START WITH     1
 INCREMENT BY   1;  
 
 --ELIMINACION DE LA SECUENCIA

 DROP SEQUENCE SECSEDE_PRODUCTO
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------

          ---CREACION DE LA TABLA SEDE_PRODUCTO

  --COMENTARIOS DE LA TABLA
  COMMENT ON COLUMN SEDE_PRODUCTO.ID_SEDE_PRODUCTO IS 'Clave principal de la tabla de sede producto';
  COMMENT ON COLUMN SEDE_PRODUCTO.CANTIDAD IS 'Cantidad del producto dentro de la sede';
    --INGRESO DE DATOS A LAS TABLAS
    INSERT INTO SEDE_PRODUCTO VALUES(SECSEDE_PRODUCTO.nextVal, 1);
  INSERT INTO SEDE_PRODUCTO VALUES(SECSEDE_PRODUCTO.nextVal, 100);
  INSERT INTO SEDE_PRODUCTO VALUES(SECSEDE_PRODUCTO.nextVal, 50.5);
  SELECT * FROM SEDE_PRODUCTO;
--------------------------------------------------------------------------
--------------------------------------------------------------------------

