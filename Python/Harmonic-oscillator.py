import numpy as np
import matplotlib.pyplot as plt
import math
from scipy.special import hermite

# Natural units
hbar = 1.0
m = 1.0
omega = 1.0

# Spatial grid
x = np.linspace(-5, 5, 1000)

def psi_n(n, x):
    Hn = hermite(n)
    normalization = 1.0 / np.sqrt((2**n) * math.factorial(n) * np.sqrt(np.pi))
    return normalization * Hn(x) * np.exp(-x**2 / 2)

def energy_n(n):
    return n + 0.5

# Plot eigenfunctions
plt.figure()
for n in range(4):
    plt.plot(x, psi_n(n, x), label=f"n = {n}")

plt.xlabel("x")
plt.ylabel("Psi(x)")
plt.title("Quantum Harmonic Oscillator Eigenfunctions")
plt.legend()
plt.grid(True)
plt.show()

# Plot probability densities
plt.figure()
for n in range(4):
    psi = psi_n(n, x)
    plt.plot(x, psi**2, label=f"n = {n}")

plt.xlabel("x")
plt.ylabel("|Psi(x)|^2")
plt.title("Probability Densities: Harmonic Oscillator")
plt.legend()
plt.grid(True)
plt.show()

# Energy spectrum
print("Energy Eigenvalues:")
for n in range(5):
    print(f"n = {n}, E_n = {energy_n(n):.2f}")
