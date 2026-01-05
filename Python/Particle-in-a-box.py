import numpy as np
import matplotlib.pyplot as plt

# Physical constants (natural units)
L = 1.0
hbar = 1.0
m = 1.0

# Spatial grid
x = np.linspace(0, L, 1000)

def psi_n(n, x, L):
    return np.sqrt(2 / L) * np.sin(n * np.pi * x / L)

def energy_n(n, L):
    return (n**2 * np.pi**2 * hbar**2) / (2 * m * L**2)

# ---- Plot eigenfunctions ----
plt.figure()
for n in range(1, 5):
    plt.plot(x, psi_n(n, x, L), label=f"n = {n}")

plt.xlabel("x")
plt.ylabel("Psi(x)")
plt.title("Particle in a 1D Infinite Potential Well")
plt.legend()
plt.grid(True)
plt.show()

# ---- Plot probability densities ----
plt.figure()
for n in range(1, 5):
    psi = psi_n(n, x, L)
    plt.plot(x, psi**2, label=f"n = {n}")

plt.xlabel("x")
plt.ylabel("|Psi(x)|^2")
plt.title("Probability Densities")
plt.legend()
plt.grid(True)
plt.show()

# ---- Energy spectrum ----
print("Energy Eigenvalues:")
for n in range(1, 6):
    print(f"n = {n}, E_n = {energy_n(n, L):.4f}")
