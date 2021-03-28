%% parameter initialisation 
clear all

N=6;
M=7;

sourcenodes=1:2;
loadnodes=3:6;

n = length(sourcenodes);
m=length(loadnodes);

% Incidence Matrix
B =     [1    1    0    0    -1    0    0;
        -1    0   -1    0     0    0    0;
         0   -1    0   -1     0    0    0;
         0    0    1    1     0   -1    0;
         0    0    0    0     0    1    1;
         0    0    0    0     1    0   -1];


% Parameters of the filter
omega_o=50;
R_t=diag([76,85]);
L_t=diag([111.9,134.3])*10^(-3);

C_t=diag([2.2,1.9,1.7,2.5,2.0,3.0])*1e-3;

%Parameters of the Network
R=diag([1.2,1.6,1.5,1.5,1.7,1.6,1.6])*1e-3;
L=diag([109.6,93.4,99.5,90.6,107.7,94.8,93.7])*1e-6;

%load parameters
%l defines the load set
%g definws the generator set
Y_l=([60,40,50,70]).^(-1);
Y_L=diag([zeros(1,n),Y_l]);
I_l=2*[0;0;3.5;2.1;1.1;2.8];
 
networksimulation
%% Plot  


