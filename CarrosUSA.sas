data carros; 
	set sashelp.cars;
	where origin = 'Asia';
run;