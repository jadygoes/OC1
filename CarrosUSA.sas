data carros; 
	set sashelp.cars;
	where origin = 'USA';
run;