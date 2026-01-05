// Gaussian wave packet time evolution (free particle)

clear;
clc;

// Spatial grid
x = linspace(-20, 20, 2000);

// Wave packet parameters
x0 = -5.0;
k0 = 2.0;
sigma = 0.5;

// Time values
t_values = [0, 1, 3, 6];

// Time-dependent width
function st = sigma_t(t, sigma)
    st = sigma * sqrt(1 + (t / (2 * sigma^2))^2);
endfunction

// Probability density
function rho = probability_density(x, t)
    st = sigma_t(t, sigma);
    prefactor = 1 / (sqrt(2 * %pi) * st);
    exponent = -(x - x0 - k0 * t).^2 / (2 * st^2);
    rho = prefactor * exp(exponent);
endfunction

// ---- Plot probability densities ----
scf(0);
for i = 1:length(t_values)
    t = t_values(i);
    plot(x, probability_density(x, t));
end
xlabel("x");
ylabel("|Psi(x,t)|^2");
title("Gaussian Wave Packet Spreading (Free Particle)");
legend("t=0","t=1","t=3","t=6");

// ---- Expectation values ----
disp("Expectation value <x> = x0 + k0 t");
for i = 1:length(t_values)
    t = t_values(i);
    disp("t = " + string(t) + " , <x> = " + string(x0 + k0 * t));
end
