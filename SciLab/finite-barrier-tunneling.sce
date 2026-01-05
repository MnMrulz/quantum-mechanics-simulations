// Quantum tunneling through a finite square barrier

clear;
clc;

// Barrier parameters
V0 = 5.0;
a = 1.0;

// Energy range (E < V0)
E = linspace(0.1, V0 - 0.1, 300);

// Transmission probability
function T = transmission(E, V0, a)
    kappa = sqrt(2 * (V0 - E));
    numerator = V0^2;
    denominator = 4 * E .* (V0 - E);
    T = 1 ./ (1 + (numerator ./ denominator) .* sinh(2 * kappa * a).^2);
endfunction

T_vals = transmission(E, V0, a);

// ---- Plot ----
scf(0);
plot(E, T_vals);
xlabel("Energy E");
ylabel("Transmission Probability T");
title("Quantum Tunneling Through a Finite Barrier (E < V₀)");
