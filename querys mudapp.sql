-- para hacer una prueba de si el usuario 1 esta registrado
Select user_id from USER where user_id = 1

-- para hacer una prueba de si el transportista 1 esta registrado
Select carrier_id from USER where carrier_id = 1

-- hacer un registro de usuario
Select user_id from USER where user_id = 1
-- si no esta registrado
INSERT INTO user (user_id,user_firstname,user_lastname,user_email,user_phone,user_address,user_dni,user_password)
VALUES (1, 'Pepe', 'grillo','pepe@gmail.com',0303456,'calle falsa 123','dni12345','passwordA');

-- hacer un registro de transportista
Select carrier_id from USER where carrier_id = 1
-- si no esta registrado:
INSERT INTO carrier (carrier_id,carrier_firstname,carrier_lastname,carrier_email,carrier_phone,vehicle_id,carrier_dni,carrier_address,carrier_maxkm,carrier_password)
VALUES (1, 'PepeT', 'transportista','pepeT@gmail.com',01303456,1,'dni123457','calle falsa T 123','10km''passwordT');

-- para insertar el vehiculo del transportista
INSERT INTO vehicle (vehicle_id,vehicle_brand,vehicle_model,vehicle_licenseplate,vehicle_height,vehicle_length,vehicle_width,vehicle_weight) 
VALUES (1,'fiat','kangoo','abc123','3','3','3','100kg')

-- realizar un servicio
-- realizar la busqueda primeramente ejemplo fecha "2024-01-10"
SELECT *
FROM carrier 
WHERE NOT EXISTS (
    FROM carrier
    WHERE fecha = '2024-01-10' -- Aquí debes poner la fecha que deseas verificar
);

-- realizar la subida de datos del servicio
INSERT INTO service (service_id,user_id,carrier_id,service_date,service_time,service_departureaddress,service_destinationaddress,service_remarks,rating_id,payment_id) 
VALUES (1,1,1,'2024-01-10','15hs','calle inicial 123','calle final 123','contenido un poco fragil',1,1)

-- realizar el pago
INSERT INTO payment (payment_id,payment_method,payment_amount,payment_status) 
VALUES(1,'tarjeta','80€','pagado')

-- realizar la valoración

INSERT INTO rating (rating_id,service_id,carrier_id,rating_rating,rating_comment) 
VALUES(1,1,1,'5','muy amable')