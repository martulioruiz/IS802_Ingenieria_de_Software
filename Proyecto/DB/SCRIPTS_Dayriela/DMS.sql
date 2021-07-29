
USE Ecommerce;
INSERT INTO USER( Id, Firts_Name, Last_Name, Email, Address, Password, Check_email ) VALUES 
	(1, "Manuel", "Perez", "ManuelP@email.com", "Col.Kennedy", "Mmp_567",false),
    (2, "Pedro", "Martinez", "PedroM@email.com", "Col. San Miguel","Pmm_123",false),
    (3, "Sara", "Izaguirre", "SaraI@email.com", "Barrio Guamilito","Sim_234",false),
    (4, "Katerin", "Matute", "KaterinM@email.com", "Col. Cerro Grande","Kfm_569",false),
    (5, "Dayriela", "Montes", "Dayrielam@email.com", "Col.Carrizal","Dmm_357",false)
;
INSERT INTO USER_TYPE(Id_User_type,Name, Description)VALUES
(1,"Administrador","Administrador de la pagina"),
(2,"Vendedor","Distribuidor de productos"),
(3,"Comprador","Persona que adquiere productos")
;

INSERT INTO USER_USER_TYPE(Id , Id_User_FK , Id_User_Type_FK)VALUES
(1,2,2),
(2,1,1)
;


INSERT INTO DEPARTMENT(Id, Name)VALUES
(1,"Francisco Morazan"),
(2,"Comayagua"),
(3,"Islas de la Bahia"),
(4,"Santa Barbara"),
(5,"Colon"),
(6,"Olancho"),
(7,"Yoro"),
(8,"Gracias a Dios"),
(9,"Cortes"),
(10,"El Paraiso"),
(11,"Copan"),
(12,"Ocotepeque"),
(13,"Lempira"),
(14,"Intibuca"),
(15,"La Paz"),
(16,"Valle"),
(17,"Atlantida"),
(18,"Choluteca");

INSERT INTO CATEGORY(Id, Name , Description) VALUES
    (1,"Tecnologia","Articulos Tecnologicos"),
    (2,"Arte y Artesania","Obras y trabajos realizados con las manos"),
    (3,"Hogar","Los mejores: adornos , decoracion utencilios etc"),
    (4,"Automotriz","Desde herramientas hasta atencion personalizada"),
    (5,"Salud y belleza","Piel reluciente, y una apariencia cuidada"),
    (6,"Deporte","Desde pelotas hasta equipo acuatico, de montaña etc "),
    (7,"Juguetes","Peluches, Muñecas, Vehiculos y mucho mas"),
    (8,"Mascotas","Todo tipo de mascotas"),
    (9,"Ropa y Accesorios","Lo ultimo en moda y accesorios")
;

INSERT INTO STATE(Id, Name) VALUES
(1,"Nuevo"),
(2,"Usado"),
(3,"Usado como nuevo"),
(4,"Usado-Buen estado"),
(5,"Usado-Aceptable")
;


INSERT INTO PRODUCT(Id, Name, Brand, Cost, Description, Id_Category_FK, Id_User_FK, Id_Department_FK, Image, Date_Product, Id_State_FK) VALUES 
    (1, "Camisa Deportiva", "Nike", 800, "Prenda para vestir de alta calidad", 9, 1, 1, "https://i.ibb.co/sKrKGmq/Camisa-Nike.jpg","2021-05-02", 1),
    (2, "Calcetines Negros", "Nike" ,250, "Prenda para vestir de alta calidad", 9, 1, 1, "https://i.ibb.co/LvHggWZ/Calcetines-Nike-Negros.jpg","2021-03-01", 1),
    (3, "Calcetines Blancos", "Nike", 250, "Prenda de vestir de alta calidad", 9, 1, 1, "https://i.ibb.co/6NrLwYT/Calcetines-Nike.jpg","2021-03-07", 2),
    (4, "Gorra", "Nike", 300, "Prenda de vestir de alta calidad", 9, 1, 1, "https://i.ibb.co/CWp3VRB/Gorra-nike.jpg","2021-01-06", 4),
    (5, "Mochila", "Adidas", 620, "Para llevar a donde quieras todo lo que necesitas", 9, 1, 1, "https://i.ibb.co/pRGpm28/DA2571-010-01.jpg","2021-05-03", 3),
    (6, "Leggins", "Under Armour", 305, "Prenda para hacer ejercicio", 9, 1, 1, "https://i.ibb.co/HTk73Gj/Leggins-Nike.jpg", "2021-04-02", 4),
    (7, "Maletin", "Nike", 1000, "Para salir de viaje preparado", 9, 2, 1, "https://i.ibb.co/xHYNb2k/Maletin-Nike.jpg" , "2021-07-07", 1),
    (8, "Telefono Celular", "Iphone 12", 20000, "Smartphone de gama alta", 1, 1, 1, "https://i.ibb.co/j8PzL4k/Iphone12.jpg","2021-04-03", 1),
    (9, "Tenis negro", "Puma", 1200, "Calzado de calidad", 9, 1, 1, "https://i.ibb.co/Nj5xkyW/Tenis-Puma-Negros.jpg","2021-05-06", 2),
    (10,"Tenis Dorados", "Puma", 1230, "Calzado de calidad", 9, 1, 1, "https://i.ibb.co/bXmdHgM/Tenis-Puma.jpg", "2021-03-05", 3),
    (11, "Cuchillos de cocina", "Tramontina", 506, "Para que prepares tus mejores platos", 3, 1, 1, "https://i.ibb.co/HXy2DTD/Cuchillos.jpg","2021-06-06", 4),
    (12, "Armario de zapatos", "HomeFort", 4000, "Para guardar tu calzado preferido", 3, 1, 1, "https://i.ibb.co/6X4BB5t/Armario-zapatos.jpg","2021-07-01", 1),
    (13, "Cafetera de presion", "Oster", 2500, "Para preparar rico cafe", 3, 1, 1, "https://i.ibb.co/vXZ6g2b/Cafetera.jpg","2021-05-05", 2),
    (14, "Silla Gamer azul", "Tresko", 1200, "Comoda y llamativa", 3, 1, 1, "https://i.ibb.co/0hr4kyW/Silla-gamer.jpg","2021-07-01", 3),
    (15, "Silla Gamer gris", "Woltu Racing", 1300, "Comoda y llamativa", 3, 1, 1, "https://i.ibb.co/YQfPWJL/Sila-Gamer-Roja.jpg","2021-02-05", 5),
    (16, "Parlante de sonido", "Electro-Voice", 2000, "Audio de alta calidad", 1, 1, 1, "https://i.ibb.co/pXXqGGb/Parlante.jpg","2021-06-01", 1),
    (17, "Moto pulsar 125ns", "Pulsar", 25000, "Satisfacion garantizada", 4, 1, 1, "https://i.ibb.co/pKLTqqr/Pulsar125ns.jpg","2021-01-07", 1),
    (18, "TV 52 Pulgadas", "Sony", 25687, "4k alta definicion", 1, 1, 1, "https://i.ibb.co/WPw0N2b/TV-52-pulgadas.jpg","2021-07-05", 2),
	(19, "Juguete nina uno", "Muneca", 400, "Barbie uno", 7, 1, 1, "https://i.ibb.co/cxKtRRT/Barbie-4.jpg","2021-01-01", 1),
    (20, "Juguete nina dos", "Muneca" ,400, "Barbie dos", 7, 2, 2, "https://i.ibb.co/z6j0RJ2/Barbie-5.jpg","2021-02-02", 2),
    (21, "Juguete nina tres", "Muneca", 400, "Barbie tres", 7, 3, 3, "https://i.ibb.co/JqT5bW8/Barbie-y-ken.jpg","2021-03-03", 3),
    (22, "Juguete nino uno", "Carro uno", 300, "Amarillo y rojo", 7, 1, 4, "https://i.ibb.co/1v2FPkv/Car-3.jpg","2021-04-04", 4),
    (23, "Juguete nino dos", "Carro dos", 300, "Azul", 7, 4, 5, "https://i.ibb.co/FbMGNrX/Car-4.jpg","2021-05-05", 5),
    (24, "Juguete nino tres", "Carro tres", 300, "Amarillo", 7, 5, 6, "https://i.ibb.co/GcG0HMX/Car-6.jpg", "2021-06-06", 1),
    (25, "Juguete nino cuatro", "Carro cuatro", 300, "Verde", 7, 1, 7, "https://i.ibb.co/wRL2qX4/Car-7.jpg" , "2021-07-07", 2),
    (26, "Juguete nino cinco", "Rastra", 500, "Roja y gris", 7, 2, 8, "https://i.ibb.co/2hbpKwM/Rastra.jpg","2021-01-03", 3),
    (27, "Juguete nina cuatro", "Muneca", 300, "Barbie hada", 7, 3, 9, "https://i.ibb.co/mcxDgW3/barbie-hada.jpg","2021-02-06", 4),
    (28,"Juguete nina cinco", "Muneca", 450, "Barbie moto", 7, 4, 10, "https://i.ibb.co/x1Th2Kq/barbie-moto.jpg", "2021-03-05", 5),
    (29, "Juguete nina seis", "Muneca", 400, "Muneca Danessa", 7, 5, 11, "https://i.ibb.co/3YpBWHq/danessa.jpg","2021-06-04", 1),
    (30, "Muneca nina siete", "Muneca", 450, "Muneca y aves", 7, 1, 12, "https://i.ibb.co/chRc6BR/reindeer.jpg","2021-07-02", 2),
    (31, "Juguete nina ocho", "Unicornio", 500, "Rosado y blanco", 7, 2, 13, "https://i.ibb.co/3m6h88Y/unicornio.jpg","2021-05-01", 3),
(32, "Jarra uno", "Jarra grande con dibujo", 500, "Jarra con dibujo verde", 2, 1, 1, "https://i.ibb.co/4sWRkWs/Jarra-con-dibujo.jpg","2021-02-02", 1),
    (33, "Jarra dos", "Jarra para acumular agua", 400, "Jarra blanca", 2, 2, 2, "https://i.ibb.co/8jCc44R/Jarra-de-agua.jpg","2021-01-01", 2),
    (34, "Jarra tres", "Vaso de barrro", 400, "Vaso para beber agua", 2, 3, 3, "https://i.ibb.co/ZTdpTJ6/Jarra-de-vaso.jpg","2021-04-04", 3),
    (35, "Jarra cuatro", "Jarra figura de un gato", 300, "De color gris", 2, 1, 4, "https://i.ibb.co/SRhRrbV/Jarra-gato.jpg","2021-03-03", 4),
    (36, "Jarra cinco", "Jarra con cuatro vasos", 300, "Juego de jarra y vasos", 2, 4, 5, "https://i.ibb.co/Pm2DHmx/Jarra-junto-con-vasos.jpg","2021-06-06", 5),
    (37, "Jarra seis", "Maceta de barro", 300, "Amarillo", 2, 5, 6, "https://i.ibb.co/c2kxGYj/Maceta-de-barro.jpg", "2021-05-05", 1),
    (38, "Pintura uno", "Pintura mona lisa", 500, "Pintura co recuadro", 2, 2, 8, "https://i.ibb.co/XWtRPDQ/Pintura-una.jpg","2021-07-07", 3),
    (39, "Pintura dos", "Pintura de nacimiento Jesus", 300, "Pintura con recuadro", 2, 1, 7, "https://i.ibb.co/xfvjC0W/Pintura-dos.jpg" , "2021-03-07", 2),
    (40, "Atarraya", "Atarraya para pesca", 300, "Atarraya grande", 2, 3, 9, "https://i.ibb.co/XXn2rFc/Atarraya-uno.jpg","2021-03-05", 4),
    (41,"Hamaca uno", "Hamaca de Honduras", 450, "Blanca, gris y negro", 2, 4, 10, "https://i.ibb.co/kHpx6ky/Hamaca-1.jpg", "2021-02-06", 5),
    (42, "Hamaca dos", "Hamaca grande", 400, "Verde y azul", 2, 5, 11, "https://i.ibb.co/SwmFt85/Hamaca-2.jpg","2021-04-02", 1)
;


