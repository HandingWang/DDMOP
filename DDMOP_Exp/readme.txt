%---------------------------------Experimental settings-------------------------------------%
pro  = {@DDMOP1@DDMOP2,@DDMOP3@DDMOP4,@DDMOP5@DDMOP6, @DDMOP7};  % test problems
N    = [256,105,105,256,105,100,100];						% population size
M   = [9,3,3,10,3,2,2];								% number of objectives
D    = [11,5,6,13,15,10,17];							% number of decision variables
eva = [400,300,400,600,800,300,600];						% total number of real objective function evaluations
run = 10;									% each test problem is tested for 10 independent times


%---------------------------------Problem Discriptions--------------------------------------%
Problem: DDMOPi (i is the index of the test problem)
DDMOPi.mat: The data for generating the initial decision vectors and evaluate the candidate solutions
[lower, upper] = DDMOPi('boundary',);  		%Output the lower and upper bounary of the decision variables
PopDec 	      = DDMOPi('init');		%Obtain the decision vectors of the initial population
PopObj 	      = DDMOPi('value', PopDec); 	%Evaluate the decision vectors and output the objective vectors


%---------------------------------Notes-------------------------------------%
PopDec is the matrix of the decision vectors and PopObj is the matrix of the objective vectors.
If the number of function evaluations exceed the maximum number of FEs, Matlab will return an error message and nothing will be output.