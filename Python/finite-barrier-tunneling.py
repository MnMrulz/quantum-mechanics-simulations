import numpy as np
import matplotlib.pyplot as plt

# Barrier parameters
V0 = 5.0
a = 1.0

# Energy range (E < V0)
E_values = np.linspace(0.1, V0 - 0.1, 300)

def transmission(E, V0, a):
    kappa = np.sqrt(2 * (V0 - E))
    numerator = V0**2
    denominator = 4 * E * (V0 - E)
    return 1.0 / (1.0 + (numerator / denominator) * np.sinh(2 * kappa * a)**2)

T_values = transmission(E_values, V0, a)

# Plot transmission vs energy
plt.figure()
plt.plot(E_values, T_values)
plt.xlabel("Energy E")
plt.ylabel("Transmission Probability T")
plt.title("Quantum Tunneling Through a Finite Barrier (E < V₀)")
plt.grid(True)
plt.show()
