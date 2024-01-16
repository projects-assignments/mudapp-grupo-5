(https://app.diagrams.net/#Hprojects-assignments%2Fmudapp-grupo-5%2Fmain%2FDiagrama%20sin%20t%C3%ADtulo.drawio)

## Proyecto App de mudanzas MUDAPP
"Nuestro cliente, una start-up innovadora, nos ha encargado el desarrollo de una aplicación revolucionaria destinada a transformar el sector de las mudanzas y el transporte de paquetería.
Inspirada en el modelo de Uber, la aplicación tiene como objetivo principal facilitar el encuentro entre aquellos que requieren servicios de transporte de bienes y transportistas que cuentan con vehículos específicamente adaptados a esas necesidades. 
Este proyecto busca proporcionar una solución eficiente y moderna para optimizar el proceso de mudanzas y brindar una experiencia de transporte de paquetería más rápida y conveniente para todos los usuarios involucrados."

## PROTOTIPO DE DIGRAMA ENTIDAD-RELACIÓN
[link DIAGRAMA ENTIDAD-RELACION](https://app.diagrams.net/#Hprojects-assignments%2Fmudapp-grupo-5%2Fmain%2FDiagrama%20sin%20t%C3%ADtulo.drawio)

Una vez completado el diseño del diagrama de entidades, procedimos a materializar la estructura de la base de datos en MySQL. Se crearon tablas para cada entidad, definiendo cuidadosamente sus atributos y relaciones. Implementamos vinculaciones de tipo 'one-to-many' para establecer conexiones lógicas entre las entidades, garantizando una representación fiel de la interacción entre usuarios, transportistas, servicios, calificaciones y pagos dentro de nuestra aplicación de mudanzas.


## EER DIAGRAM MYSQL 

<a href="https://ibb.co/LCs4r3S"><img src="https://i.ibb.co/0fzPKxq/mudapp-diagram-sql.png" alt="mudapp-diagram-sql" border="0"></a>

[LINK DIAGRAMA MYSQL](https://github.com/projects-assignments/mudapp-grupo-5/blob/main/mudappFinalFinal.sql)

## PRESENTACIÓN PARA CLIENTE:

[LINK PRESENTACIÓN CANVA](https://www.canva.com/design/DAF5_793lvA/UERLepFqQju73PzsFOrAwA/edit?utm_content=DAF5_793lvA&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)

<a href="https://ibb.co/bJs8NVN"><img src="https://i.ibb.co/rsx15h5/Captura-de-pantalla-45.png" alt="Captura-de-pantalla-45" border="0"></a>























![](https://www.gifsanimados.org/data/media/1373/transporte-y-mudanza-imagen-animada-0044.gif)

# MUDAPP: La app de las mudanzas

## Intro
Una start-up de nueva creación ha solicitado una aplicación para dinamizar el mundo de las mudanzas y del transporte de paquetería en general.

La aplicación tiene cierta semejanza con la aplicación de UBER y, su objetivo principal es poner en contacto a personas con necesidades de transporte de bienes con transportistas que tengan un vehículo de las características adecuadas a esas necesidades.

## Requerimientos

- Un usuario se debe poder registrar en la aplicación con sus datos personales, incluidas su dirección.
- Un provisionador de transporte (pt) se debe poder registrar en la aplicación con sus datos personales, incluidas su dirección, los datos del vehículo con el prestará el servicio y los trayectos que está dispuesto a realizar.
- Un usuario debe estar autenticado para poder hacer uso de la aplicación.
- Un transportista debe estar autenticado para poder hacer uso de la aplicación.
- Todos los usuarios pueden editar su información de perfil.
- Servicio de transporte:
  - Un usuario solicita un servicio de transporte; para ello, introduce las características de la mercancía que quiere transportar, la fecha y la dirección de salida y de destino.
  - El sistema proporciona una lista de transportistas al usuario ordenados por ranking, según la disponibilidad de transportistas de la zona que más se adecúe a las características solicitadas.
  - El usuario selecciona una de los opciones.
  - El usuario hace el pago del servicio contratado a través de la aplicación.
  - El sistema bloquea el transportista.
  - El sistema notifica al transportista que tiene un transporte pendiente.
- Evaluación del transportista
  - El usuario es invitado a evaluar el servicio prestado.
- Usuario administrador deberá poder mantener la información de usuarios y transportistas: puede leer, editar o eliminar información.

## Requisitos técnicos

- Se utilizará un SGBD MySQL o MongoDB para la implementación.

## Entregables

- Modelo lógico de la base de datos.
- Fichero de dump de la base de datos.
- Fichero con los modelos de consultas que habría que implementar en la API.
- Presentación, debe incluir alguna consulta a la base de datos

## Modalidad

- Trabajo en grupo
- Tiempo máximo 1 semana - Entrega 16/01/2024

## Rúbrica de autoevaluación

1. Comprendo el problema y los requisitos:
   - El diseño refleja una comprensión clara de los requisitos del problema
   - Se han considerado todos los aspectos del problema
2. Diseño del esquema de la base de datos:
   - Se han identificado correctamente todas las entidades y relaciones
   - Se han identificado correctamente todas las colecciones y documentos
   - Se han definido correctamente los atributos de cada entidad
   - Se han aplicado correctamente las restricciones de integridad, SI LAS HAY.
3. Se ha normalizado el esquema de la base de datos para eliminar redundancias y dependencias
4. Implementación:
   - Se ha hecho un uso efectivo de las características específicas de MongoDB, como los documentos embebidos y las referencias
   - Se ha creado correctamente la base de datos a partir del esquema
   - Se han implementado correctamente las consultas requeridas
   - Se ha hecho una carga de datos y una copia de seguridad de los mismos
5. Documentación y presentación (10%)
   - Se ha documentado correctamente el diseño y la implementación de la base de datos
   - Se ha presentado de manera clara y profesional
