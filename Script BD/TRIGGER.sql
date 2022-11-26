
--LLEVA UN CONTROL SOBRE LAS MODIFICACIONES, INGRESO Y ELIMINACION SOBRE LOS DATOS DE LOS EMPLEADOS

create or replace NONEDITIONABLE TRIGGER TR_CONTROL_EMPLEADO
 BEFORE INSERT OR UPDATE OR DELETE
 ON EMPLEADO
 FOR EACH ROW
BEGIN
 IF INSERTING THEN
   INSERT INTO CONTROL_EMPLEADO VALUES (USER, SYSDATE,'INGRESO');
  END IF;
  IF DELETING THEN
   INSERT INTO CONTROL_EMPLEADO VALUES (USER, SYSDATE,'BORRADO');
 END IF; 
 IF UPDATING THEN
  INSERT INTO CONTROL_EMPLEADO VALUES (USER, SYSDATE,'ACTUALIZACIÓN');
 END IF;
END TR_CONTROL_EMPLEADO;

----------------------------------------------------------------------
----------------------------------------------------------------------

--CONTROL DEL PUESTO EN EL CUAL NO SE PUEDE MODIFICAR LOS DATOS DEL GERENTE NI
--MODIFICAR EL ID DE LOS PUESTOS DE TRABAJO

create or replace NONEDITIONABLE TRIGGER TR_CONTROL_PUESTO
BEFORE INSERT OR UPDATE OR DELETE
ON PUESTO
FOR EACH ROW
    BEGIN
    IF(:NEW.SALARIO>5000)THEN
        RAISE_APPLICATION_ERROR(-20000, 'SUELDO NO PUEDE SUPERAR LOS Q5000.00');
    END IF;
        INSERT INTO CONTROL_PUESTO VALUES (USER, SYSDATE, 'INSERCION');
        IF(:OLD.NOMBRE_PUESTO='GERENTE')THEN
        RAISE_APPLICATION_ERROR(-20000, 'NO SE PUEDE ELIMINAR EL PUESTO DE GERENTE');
    END IF;
        INSERT INTO CONTROL_PUESTO VALUES(USER, SYSDATE, 'BORRADO');
        IF UPDATING('ID_PUESTO')THEN
        RAISE_APPLICATION_ERROR(-20000, 'NO SE PUEDE ACTUALIZAR EL ID DEL PUESTO');
    END IF;
END TR_CONTROL_PUESTO;

----------------------------------------------------------------------
----------------------------------------------------------------------

--VALIDA EL VALOR TOTAL DE LA VENTA 

create or replace NONEDITIONABLE TRIGGER VALIDARTOTAL
BEFORE INSERT ON DETALLE_FACTURA
FOR EACH ROW
DECLARE
BEGIN
	IF :NEW.TOTAL < 0 THEN
	   :NEW.TOTAL := 0;
	END IF;
END;

----------------------------------------------------------------------
----------------------------------------------------------------------
create or replace NONEDITIONABLE TRIGGER TR_HORARIO 
BEFORE INSERT ON TURNO_EMPLEADO
BEGIN 
	IF (TO_CHAR(SYSDATE, 'DY') IN ('SAT', 'SUN'))
	OR (TO_CHAR(SYSDATE, 'HH24:MI') NOT BETWEEN '07:00' AND '18:00')
	THEN RAISE_APPLICATION_ERROR(-20500, 'NO SE ENCUENTRA EN HORARIO OPERATIVO, FAVOR DE CONTACTAR A SOPORTE DB');
	END IF;
END;