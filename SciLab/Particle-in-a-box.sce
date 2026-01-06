// Particle in a 1D Infinite Potential Well
// Analytical eigenstates

clear;
clc;

// Physical constants
L = 1.0;
hbar = 1.0;
m = 1.0;

// Spatial grid
x = linspace(0, L, 1000);

// Eigenfunction
function psi = psi_n(n, x, L)
    psi = sqrt(2 / L) * sin(n * %pi * x / L);
endfunction

// Energy eigenvalue
function E = energy_n(n, L)
    E = (n^2 * %pi^2 * hbar^2) / (2 * m * L^2);
endfunction

// Plot eigenfunctions
scf(0);
for n = 1:4
    plot(x, psi_n(n, x, L));
end
xlabel("x");
ylabel("Psi(x)");
title("Particle in a 1D Infinite Potential Well");
legend("n=1","n=2","n=3","n=4");

// Plot probability densities
scf(1);
for n = 1:4
    psi = psi_n(n, x, L);
    plot(x, psi.^2);
end
xlabel("x");
ylabel("|Psi(x)|^2");
title("Probability Densities");
legend("n=1","n=2","n=3","n=4");

// Energy spectrum
disp("Energy Eigenvalues:");
for n = 1:5
    E = energy_n(n, L);
    disp("n = " + string(n) + " , E_n = " + string(E));
end
