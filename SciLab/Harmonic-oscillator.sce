// Quantum Harmonic Oscillator
// Analytical eigenstates using Hermite polynomials

clear;
clc;

// Spatial grid
x = linspace(-5, 5, 1000);

// Hermite polynomials (recursive)
function H = hermite_poly(n, x)
    if n == 0 then
        H = ones(x);
    elseif n == 1 then
        H = 2 * x;
    else
        H0 = ones(x);
        H1 = 2 * x;
        for k = 2:n
            H = 2 * x .* H1 - 2 * (k - 1) * H0;
            H0 = H1;
            H1 = H;
        end
    end
endfunction

// Eigenfunction
function psi = psi_n(n, x)
    normalization = 1 / sqrt((2^n) * factorial(n) * sqrt(%pi));
    psi = normalization * hermite_poly(n, x) .* exp(-x.^2 / 2);
endfunction

// Energy eigenvalue
function E = energy_n(n)
    E = n + 0.5;
endfunction

// ---- Plot eigenfunctions ----
scf(0);
for n = 0:3
    plot(x, psi_n(n, x));
end
xlabel("x");
ylabel("Psi(x)");
title("Quantum Harmonic Oscillator Eigenfunctions");
legend("n=0","n=1","n=2","n=3");

// ---- Plot probability densities ----
scf(1);
for n = 0:3
    psi = psi_n(n, x);
    plot(x, psi.^2);
end
xlabel("x");
ylabel("|Psi(x)|^2");
title("Probability Densities");
legend("n=0","n=1","n=2","n=3");

// ---- Energy spectrum ----
disp("Energy Eigenvalues:");
for n = 0:4
    disp("n = " + string(n) + " , E_n = " + string(energy_n(n)));
end
