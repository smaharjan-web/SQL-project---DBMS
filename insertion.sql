insert into language_t values
(1,"python","py","hybrid"),
(2,"c","c","compiled"),
(3,"c++","cpp","compiled"),
(4,"c#","cs","compiled");
(5,"java","java","compiled");

insert into datatype_t values
(10,1,"Generic",1000000,"Anything"),
(11,1,"None",0,"No value"),
(20,2,"int",4,"Whole number"),
(21,2,"char",1,"Letter, number, or symbol"),
(22,2,"short",2,"Small whole number"),
(23,2,"long",4,"Whole number"),
(24,2,"float",4,"Small real number"),
(25,2,"double",8,"relatively small real number"),
(26,2,"long double",10,"Real number"),
(27,2,"null",0,"No value"),
(30,3,"int",4,"Whole number"),
(31,3,"char",1,"Letter, number, or symbol"),
(32,3,"short",2,"Small whole number"),
(33,3,"long",4,"Whole number"),
(34,3,"float",4,"Small real number"),
(35,3,"double",8,"relatively small real number"),
(36,3,"long double",10,"Real number"),
(37,3,"null",0,"No value"),
(40,4,"int",32,"Whole number"),
(41,4,"char",1,"Letter, number, or symbol"),
(42,4,"short",2,"Small whole number"),
(43,4,"long",4,"Whole number"),
(44,4,"float",4,"Small real number"),
(45,4,"double",8,"relatively small real number"),
(46,4,"long double",10,"Real number"),
(47,4,"null",0,"No value"),
(48,4,"byte",1,"Very small integer");
(50,5,"int",4,"Whole number"),
(51,5,"char",1,"Letter, number, or symbol"),
(52,5,"short",2,"Small whole number"),
(53,5,"long",4,"Whole number"),
(54,5,"float",4,"Small real number"),
(55,5,"double",8,"relatively small real number"),
(56,5,"long double",10,"Real number"),
(57,5,"null",0,"No value"),

insert into component_t values
(10,1,1,"false","script"),
(11,1,2,"true","class"),
(12,1,2,"true","static def"),
(13,1,3,"true","dynamic def"),
(20,2,1,"false","function"),
(30,3,1,"true","class"),
(31,3,2,"false","static function"),
(32,3,2,"false","dynamic function"),
(40,4,1,"true","class"),
(41,4,2,"true","static function"),
(42,4,2,"true","dynamic function");

insert into os_t values
(10016299,"Windows"),
(10131,"Mac"),
(1704,"Ubuntu");

insert into compiler_t values
(1,10016299),
(1,10131),
(1,1704),
(2,10016299),
(2,10131),
(2,1704),
(3,10016299),
(3,10131),
(3,1704),
(4,10016299),
(4,10131),
(4,1704);
(5,10016299),
(5,10131),
(5,1704);

/*skipping memory block*/

insert into engine_t values
(1,"Unity"),
(2,"PyGame");

insert into engineexecutable_t values
(10016299,1),
(10016299,2),
(10131,2),
(1704,1),
(1704,2);

insert into api_t values
(4,1),
(1,2);

insert into hardware_t values
(201800,"true"),
(1698,"true"),
(900,"false");

insert into kernel_t values
(201800,10016299),
(201800,1704),
(1698,10131),
(1698,1704),
(900,10131);