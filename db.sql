/*Category*/
INSERT INTO category (name)
VALUES ('Mouse');
INSERT INTO category (name)
VALUES ('Keyboad');
INSERT INTO category (name)
VALUES ('Headphone');
INSERT INTO category (name)
VALUES ('Screen');
INSERT INTO category (name)
VALUES ('Laptop');

/*producer*/
INSERT INTO producers (name)
VALUES ('Logitech');
INSERT INTO producers (name)
VALUES ('Asus');
INSERT INTO producers (name)
VALUES ('Razer');
INSERT INTO producers (name)
VALUES ('Corsair');
INSERT INTO producers (name)
VALUES ('Fuhlen');
INSERT INTO producers (name)
VALUES ('Steelseries');



/*chuột logitect*/
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S001', 'Logitech G102 Lightsync RGB Black',17,10, now(),1,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",85,"IPS: 200 - Switch: Omron - LED: RGB Lightsync","S001");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S002', 'Logitech G102 Lightsync RGB White',17,10, now(),1,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","White",85,"IPS: 200 - Switch: Omron - LED: RGB Lightsync","S002");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S003', 'Logitech G402 Hyperion',30,10, now(),1,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",100,"IPS: 500 - Switch: Omron - LED: RGB Lightsync","S003");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S004', 'Logitech G502 Hero',43,10, now(),1,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",121,"IPS: 400 - USB reporting speed: 1000Hz","S004");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S005', 'Logitech G Pro X Superlight Wireless Black',125,10, now(),1,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",63,"IPS: 400 - USB reporting speed: 1000Hz","S005");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S006', 'Logitech POP with Emoji Button Daydream Purple',26,10, now(),1,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",82,"Pin: 1 pin AA","S006");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S007', 'Logitech G304 Lightspeed Wireless',35,10, now(),1,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",99,"IPS: >400 - LIGHTSPEED technology: Yes","S007");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S008', 'Logitech G Pro Hero',35,10, now(),1,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",99,"DPI: 100-25600 DPI - USB reporting speed: 1000Hz","S008");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S009', 'Logitech G903 Hero Lightspeed Wireless',115,10, now(),1,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",99,"DPI: 100-25600 DPI - USB reporting speed: 1000Hz","S009");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S010', 'Logitech Lift Vertical',59,10, now(),1,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",99,"DPI: 100-25600 DPI - USB reporting speed: 1000Hz","S010");

/*chuột razer*/
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S011', 'Razer Mouse Dock Pro',80,10, now(),1,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",112,"Integration: Razer ™ HyperPolling 4K Hz","S011");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S012', 'Razer Deathadder Essential',21,10, now(),1,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",94,"DPI: 6400 - LED: LED GREEN - Sensor: Optical","S012");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S013', 'Razer Deathadder Essential White',21,10, now(),1,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","White",94,"DPI: 6400 - LED: LED GREEN - Sensor: Optical","S013");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S014', 'Razer Basilisk V3',56,10, now(),1,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","White",101,"DPI: 26000 - Reliability: 70 million clicks","S014");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S015', 'Razer Deathadder V2 Halo Infinite Edition',51,10, now(),1,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Green",82,"DPI: 20000 - Reliability: 70 million clicks","S015");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S016', 'Razer Viper Mini',30,10, now(),1,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",82,"DPI: 20000 - Reliability: 70 million clicks","S016");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S017', 'Razer Basilisk X HyperSpeed',47,10, now(),1,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",83,"DPI: 16000 - Compatible: Razer Synapse 3","S017");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S018', 'Razer DeathAdder V3 Pro Wireless',169,10, now(),1,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",64,"DPI: 30000 - Switch: Optical Gen-3 - IPS: 750","S018");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S019', 'Razer Viper V2 Pro',156,10, now(),1,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",58,"DPI: 30000 - Switch: Optical Gen-3 - IPS: 750","S019");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S020', 'Razer Basilisk V3 Pro',187,10, now(),1,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",112,"DPI: 30000 - Switch: Optical Gen-3 - IPS: 750","S020");

/*chuột consair*/
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S021', 'Corsair Sabre RGB Pro Wireless',77.8,10, now(),1,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",79,"DPI: 26,000 - IPS: 750","S021");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S022', 'Corsair Harpoon Pro RGB',18,10, now(),1,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",85,"DPI: 12000 - Sensor: PMW3320 - CUE Software: Supported in CUE 2.0","S022");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S023', 'Corsair Katar Pro Wireless',38.6,10, now(),1,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",96,"DPI: 10000 ","S023");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S024', 'Corsair Sabre RGB Pro',64.7, 10,now(),1,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",74,"DPI: 18.000 - Sensor : PMW 3392","S024");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S025', 'Corsair Katar Pro Ultra Light',18,10, now(),1,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",69,"DPI: 124000","S025");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S026', 'Corsair M65 RGB ULTRA Black',69.1,10, now(),1,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",97,"DPI: 24000","S026");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S027', 'Corsair DarkCore RGB Pro Wireless',96.5,10, now(),1,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",133,"DPI: 18000 - Latency: 1000Hz/2000Hz","S027");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S028', 'Corsair NightSword RGB',86.5,10, now(),1,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",119,"DPI: 18000 - Sensor: Optical PMW3391","S028");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S029', 'Corsair M55 RGB Pro',34.3,10, now(),1,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",86,"DPI: 12400 - Sensor: Optical PMW3327","S029"); 

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S030', 'Corsair Glaive RGB Pro Black',77.8,10, now(),1,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",115,"DPI: 18000 - Sensor: Optical PMW3391","S030");

/*chuot Fuhlen*/
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S031', 'Fuhlen L102 Optical Pink USB',6,10, now(),1,5);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Pink",60,"DPI: 1000","S031");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S032', 'Fuhlen L102 Optical Black USB',6,10, now(),1,5);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",60,"DPI: 1000","S032");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S033', 'Fuhlen G90 Pink',14.7,10, now(),1,5);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Pink",60,"DPI: 3500","S033");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S034', 'Fuhlen G90 Black',14.7,10, now(),1,5);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Pink",60,"DPI: 3500","S034");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S035', 'Fuhlen G90 Pro X',19.5,10, now(),1,5);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",60,"DPI: 5000","S035");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S036', 'Fuhlen D90S White',24,10, now(),1,5);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","White",60,"DPI: 5000","S036");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S037', 'Fuhlen D90S',24,10, now(),1,5);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",87,"DPI: 10000","S037");

/*chuot Steelseries*/

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S038', 'Steelseries Rival 3',37,10, now(),1,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",77,"DPI: 10000 - Sensor: SteelSeries TrueMove Core","S038");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S039', 'Steelseries Rival 5',56,10, now(),1,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",85,"CPI: 18000 - Switch Type: SteelSeries IP54 mechanical switches","S039");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S040', 'Steelseries Rival 600',56,10, now(),1,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",85,"DPI: 12000 - Sensor: SteelSeries TrueMove3","S040");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S041', 'Steelseries Rival 600',64.7,10, now(),1,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",57,"DPI: 8500 - LED: RGB - Sensor: Steelseries TrueMove Core","S041");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S042', 'Steelseries Aerox 3 Wireless',93.4,10, now(),1,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",66,"DPI: 18000 - Switch: Steelseries","S042");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S043', 'Steelseries Aerox 3 Wireless Snow Edition',93.4,10, now(),1,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","White",66,"DPI: 18000 - Switch: Steelseries","S043");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S044', 'SteelSeries Aerox 5 Wireless',134.4,10, now(),1,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",74,"IPS: 400 - Switch: SteelSeries TrueMove Air","S044");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S045', 'SteelSeries Aerox 5',96.5,10, now(),1,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",66,"IPS: 400 - Switch: SteelSeries TrueMove Air","S045");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S046', 'SteelSeries Sensei Ten',96.5,10, now(),1,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",92,"IPS: 450 - CPI: 18000","S046");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S047', 'Steelseries Prime Mini Wireless',121.5,10, now(),1,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",73,"IPS: 450 - CPI: 18000","S047");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S048', 'Steelseries Rival 650',112.5,10, now(),1,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",73,"DPI: 15000 - Sensor: SteelSeries TrueMove3+ Depth Sensing Linear Optical Detection","S048");

/*Keyboad logitect*/

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S049', 'Logitech Mechanical Gaming G413 TKL SE',56.5,10, now(),2,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",650,"Switch: Tactile - Size: 355 x 127 x 36.3 (mm)","S049");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S050', 'Logitech Mechanical Gaming G413 SE',56.5,10, now(),2,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",780,"Switch: Tactile - Size: 435 x 127 x 36.3 (mm)","S050");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S051', 'Logitech G610 Orion',71.7,10,now(),2,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1259,"Switch: Cherry MX Blue switch - Size: 153 x 443.5 x 34.3 mm","S051");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S052', 'Logitech G Pro X',71,10,now(),2,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1000,"Switch: Cherry MX Blue switch - Size: 361 x 153 x 34 mm","S052");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S053', 'Logitech G512 GX RGB (Clicky)',65.5,10,now(),2,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1000,"Switch: GX Switch Blue (Clicky) - Size: 132 x 445 x 35,5 mm","S053");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S054',"Logitech G512 GX RGB (Tactile/Linear)",73.4,10,now(),2,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1000,"Switch: GX Brown (Tactile)/ GX Red (Linear) - Size: 132 x 445 x 35,5 mm","S054");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S055', 'Logitech G PRO Mechanical Gaming',112.3,10,now(),2,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1000,"Switch: Logitech GX Switch Blue - Size: 361 x 153 x 34 mm","S055");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S056', 'Logitech G PRO KDA',142.1,10,now(),2,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1000,"Switch: GX Switch tactile brown - Size: 361 x 153 x 34 mm","S056");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S057', 'Logitech G Pro League Of Legends',11.3,10,now(),2,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1000,"Switch: GX Switch tactile - Size: 361 x 153 x 34 mm","S057");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S058', 'Logitech G913 TKL Lightspeed Wireless',190.8,10,now(),2,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1000,"Switch: GL (Clicky / Tactile / Linear) - Size: 368 x 150 x 22 mm","S058");

/*Keyboad razer*/
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S059', 'Razer Blackwidow V3 Tenkeyless',86.5,10,now(),2,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1000,"Switch: Razer Green switch/ Razer Yellow Switch - Size: 368 x 150 x 22 mm","S059");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S060', 'Razer DeathStalker V2',169.1,10,now(),2,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1000,"Switch: Razer™ Low-Profile Optical (Linear) - Keycaps:	ABS","S060");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S061', 'Razer DeathStalker V2 Pro TKL',204,10,now(),2,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1000,"Switch: Razer™ Low-Profile Optical (Linear) - Keycaps:	ABS","S061");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S062', 'Razer DeathStalker V2 Pro TKL',247.3,10,now(),2,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1000,"Switch: Razer™ Low-Profile Optical (Linear) - Keycaps:	ABS","S062");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S063', 'Razer Ornata V3 X',47.7,10,now(),2,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1000,"Switch: UV-coated ABS - LED: Razer Chroma RGB","S063");

/*ban phim Corsair*/

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S064', 'Corsair K70 PRO',125.6,10,now(),2,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1150,"Switch: Cherry MX Red / Brown / Blue - LED: RGB","S064");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S065', 'Corsair K60 Pro SE RGB',82.1,10,now(),2,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",880,"Switch: CHERRY - Keycaps: 	PBT doubleshot","S065");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S066', 'Corsair K55 RGB Pro',45.5,10,now(),2,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1190,"Switch: Rubber Dome Memberance - Size: 510.5 x 251 x 48.2 mm","S066");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S067', 'Corsair K70 TKL RGB Champion Series',143,10,now(),2,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",990,"Switch: Cherry MX Speed Silver / Red - Size: 327x101x42 mm","S067");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S068', 'Corsair K65 RGB MINI White',112.6,10,now(),2,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","White",810,"Switch: Cherry MX Speed / Red - LED: LED RGB 16.8","S068");

/*ban phim Steelseries*/
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S069', 'Steelseries Apex 3',71.3,10,now(),2,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",810,"Switch: SteelSeries Whisper-Quiet Switches - LED: RGB 10","S069");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S070', 'Steelseries Apex 5',125.2,10,now(),2,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",925,"Switch: SteelSeries Hybrid RGB Switch - LED: RGB Dynamic","S070");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S071', 'Steelseries Apex 7 TKL',134.3,10,now(),2,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",771,"Switch: SteelSeries QX2 Mechanical RGB Switch - LED: RGB Dynamic","S071");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S072', 'Steelseries Apex PRO TKL',190.3,10,now(),2,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",770,"Switch: OmniPoint - LED: RGB Dynamic","S072");

/*tai nge logitect*/
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S073', 'Gaming Logitech G Pro Gen 2',73.4,10,now(),3,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",100,"Frequency: 20Hz - 20kHz","S073");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S074', 'Logitech G333',40,10,now(),3,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Many Colors",19,"Frequency: 20Hz - 20kHz","S074");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S075', 'Logitech G435 Lightspeed Wireless White',64.7,10,now(),3,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","White Blue",19,"Frequency: 20Hz - 20kHz","S075");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S076', 'Gaming Logitech G335 Black',56,10,now(),3,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",200,"Frequency: 1000 hz","S076");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S077', 'Logitech G733 LIGHTSPEED Wireless Lilac',152.1,10,now(),3,1);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Violet",278,"Frequency: 100Hz-10KHz","S077");

/*tai nge razer*/
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S078', 'Razer Opus X',60.4,10,now(),3,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Green",270,"Frequency: 20 Hz - 20 kHz","S078");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S079', 'Razer Barracuda X 2022',99.4,10,now(),3,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",250,"Frequency: 20 Hz - 20 kHz","S079");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S080', 'Razer BlackShark V2 Pro White',208.2,10,now(),3,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","White",320,"Frequency: 12 Hz - 28 kHz","S080");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S081', 'Razer Kraken BT Kitty Edition',117.2,10,now(),3,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Quartz",298,"Frequency: 100 Hz - 10 kHz","S081");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S082', 'Razer Kraken Multi',86.5,10,now(),3,3);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",298,"Frequency: HeadPhone: 12 -28000 Hz - Micro: 100-10000 Hz","S082");

/* tai nge corsair*/
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S083', 'Corsair HS55 Surround Carbon',58.5,10,now(),3,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",250,"Frequency:  20Hz - 20 kHz","S083");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S084', 'Corsair HS65 Surround',84.7,10,now(),3,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","White",250,"Frequency: 20Hz - 20 kHz","S084");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S085', 'Corsair Virtuoso RGB Wireless SE',238.4,10,now(),3,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Espresso",250,"Frequency:100Hz to 10kHz","S085");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S086', 'Corsair HS60 Haptic',108.4,10,now(),3,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",250,"Frequency:100Hz to 10kHz","S086");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S087', 'Corsair HS35 Strereo',37.4,10,now(),3,4);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Red",250,"Frequency:100Hz to 10kHz","S087");

/*tai nge steel*/
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S088', 'Steelseries Arctis 7 Plus Wireless White',212.6,10,now(),3,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","White",250,"Frequency:100Hz to 10kHz","S088");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S089', 'SteelSeries Arctis 5 Black Edition',116.6,10,now(),3,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",250,"Frequency:100Hz to 10kHz","S089");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S090', 'Steelseries Arctis 9 Wireless',238.6,10,now(),3,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",250,"Frequency:100Hz to 10kHz","S090");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S091', 'Steelseries Arctis Nova Pro',304,10,now(),3,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","Black",250,"Frequency:10–22.000 Hz","S091");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S092', 'Steelseries Arctis 7P+ Wireless White',195.2,10,now(),3,6);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("12 month","White",250,"Frequency:10–22.000 Hz","S092");

/*man hinh*/
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S093', 'ASUS VZ24EHE 24" IPS 75Hz',134.3,10,now(),4,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("36 month","Black",5000,"Resolution: 1920x1080 - Color Display: 16.7million","S093");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S094', 'Asus TUF GAMING VG249Q1A',182.3,10,now(),4,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("36 month","Black",5600,"Resolution: 1920x1080 - Color Display: 16.7million","S094");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S095', 'ASUS ProArt PA248QV-P',256,10,now(),4,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("36 month","Black",5600,"Resolution: 1920x1200 - Color Display: 16.7million","S095");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S096', 'ASUS TUF GAMING VG30VQL1A',430.9,10,now(),4,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("36 month","Black",5600,"Screen size: 30Inch - 
Resolution: 2560x1080 - Color Display: 16.7million","S096");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S097', 'ASUS ROG Strix XG258Q',447.3,10,now(),4,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("36 month","Black",5600,"Screen size: 25 Inch - 
Resolution: 1920x1080 - Color Display: 16.7million","S097");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S098', 'ASUS ROG Strix XG258Q',825.9,10,now(),4,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("36 month","Black",5600,"Screen size: 24.5 Inch - 
Resolution: 1920x1080 - Color Display: 1.07 billion","S098");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S099', 'Asus ROG Strix XG349C',1021.9,10,now(),4,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("36 month","Black",5600,"Screen size: 34.14 Inch - 
Resolution: 3440x1440 - Color Display: 1.07 billion","S099");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S100', 'Asus ROG Strix XG49VQ',1108.2,10,now(),4,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("36 month","Black",5600,"Screen size: 49 Inch - 
Resolution: 2840x1080 - Color Display: 1.07 billion","S100"); 

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S101', 'Asus ROG Swift PG48UQ',6478.2,10,now(),4,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("36 month","Black",3300,"Screen size: 48 Inch - 
Resolution: 4K 3840x2160 - Color Display: 1073.7M (10 bit)","S101"); 

/*laptop*/
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S102', 'Asus Vivobook 14 X1402ZA EK232W',586.2,10,now(),5,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1500,"CPU: Intel® Core™ i3-1220P Processor 3.3 GHz - 
RAM: 4GB (Onboard) DDR4 3200MHz - Hard Driver: 512GB M.2 NVMe™ PCIe® 3.0 SSD  - VGA: Intel® UHD Graphics","S102"); 

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S103', 'Asus ExpertBook Flip B3402FEA EC0714T',630.4,10,now(),5,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1500,"CPU: 	Intel Core i3-1115G4 Processor 3.0 GHz - 
RAM: 8GB DDR4 Onboard - Hard Driver: 256GB M.2 NVMe PCIe 3.0 SSD  - VGA: Intel® UHD Graphics"
,"S103"); 

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S104', 'Asus VivoBook 14 M413IA EK481T',651.7,10,now(),5,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","White",1500,"CPU: AMD Ryzen 7-4700U 2.0GHz up to 4.1GHz, 8MB - 
RAM: 8GB DDR4 2400MHz on board - Hard Driver: 1TB M.2 NVMe™ PCIe® 3.0  SSD - VGA: AMD Radeon™ Graphics"
,"S104"); 

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S105', 'Laptop ASUS VivoBook Pro 16X',1738.7,10,now(),5,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1500,"CPU: Intel Core i7-12700H 2.3GHz up to 4.7GHz 24MB - 
RAM: 16GB Onboard LPDDR5 - Hard Driver:1TB M.2 NVMe PCIe 4.0 Performance SSD (1 slot) -
VGA: NVIDIA GeForce RTX 3050Ti 4GB GDDR6"
,"S105"); 

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S106', 'ASUS Zenbook Pro 16X',3390.7,10,now(),5,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1500,"CPU: Intel® Core™ i9-12900H Processor 2.5 GHz - 
RAM: 32GB LPDDR5 onboard - Hard Driver:1TB M.2 NVMe™ PCIe® 4.0 Performance SSD -
VGA: NVIDIA GeForce RTX™ 3060 6GB GDDR6"
,"S106"); 

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S107', 'ASUS ROG Zephyrus G15',3043.7,10,now(),5,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1500,"CPU: AMD Ryzen 7-6800HS - 
RAM: 32GB (16GB Onboard + 16GB) DDR5 4800MHz (1x SO-DIMM socket, up to 48GB SDRAM)
 - Hard Driver: 1TB M.2 NVMe PCIe 4.0 SSD (2 slots) -
VGA: NVIDIA GeForce RTX 3080 8GB"
,"S107"); 

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S108', 'Asus ROG Strix SCAR 15',2956.7,10,now(),5,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1500,"CPU: Intel Core i9-12900H 3.8GHz up to 5.0GHz 24MB - 
RAM: 16GB (8GBx2) DDR5 4800MHz (2x SO-DIMM socket, up to 64GB SDRAM) - 
Hard Driver: 1TB M.2 NVMe PCIe 4.0 SSD -
VGA: NVIDIA® GeForce RTX™ 3070 Ti 8GB GDDR6 + MUX Switch"
,"S108"); 

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S109', 'ASUS ROG Strix G17',2475.5,10,now(),5,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1500,"CPU: AMD Ryzen™ 9 6900HX Mobile Processor - 
RAM: 32GB (2x16GB) DDR5-4800Mhz - 
Hard Driver: 1TB PCIe 4.0 NVMe™ M.2 SSD -
VGA:NVIDIA® GeForce RTX 3070 Ti 8GB GDDR6"
,"S109");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S110', 'ASUS ROG Zephyrus G14',2364.5,10,now(),5,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1500,"CPU: AMD Ryzen™ 9-6900HS 3.3GHz up to 4.9GHz 16MB - 
RAM: 32GB (16GB Onboard + 16GB) DDR5 4800MHz - 
Hard Driver: 1TB M.2 NVMe™ PCIe® 4.0 SSD -
VGA: AMD Radeon™ RX 6800S 8GB GDDR66"
,"S110");

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S111', ' ASUS TUF Dash F15',2240.5,10,now(),5,2);
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("24 month","Black",1500,"CPU: Intel® Core™ i7-12650H Processor 2.3 GH - 
RAM: 8GB DDR5 4800MHz - 
Hard Driver: 512GB SSD M.2 NVMe™ PCIe® 3.0 -
VGA: NVIDIA® GeForce RTX™ 3070 Laptop GPU, 8GB GDDR6, 1340MHz* at 105W"
,"S111");