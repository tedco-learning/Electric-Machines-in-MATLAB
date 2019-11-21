% ------- Reza Tanaki Zadeh -------
% -------Used FitzGerald Book------
% ------Teacher : Meysam Hosein Tabar------

clc
clear

%Define MU0
mu0 = pi*4.e-7;

%Define Other 
Ac = 9e-4; Ag = 9e-4; g = 5e-4; Lc = 0.3;
N = 500;

%Reluctance of air gap 
Rg = g/(mu0*Ag);

for n = 1:201
    mur(n) = 100+ (100000 - 100)*(n-1)/200;
    %Reluctance of Core
    Rc(n) = Lc/(mur(n)*mu0*Ac);
    Rtot = Rg + Rc(n);
    %Inductance 
    L(n) = (N^2)/Rtot;
end

plot(mur, L);
xlabel('Core permeability');
ylabel('Inductance(H)');


    