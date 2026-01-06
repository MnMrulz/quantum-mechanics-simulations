import numpy as np
import matplotlib.pyplot as plt

# Spatial grid
x = np.linspace(-20, 20, 2000)

# Wave packet parameters
x0 = -5.0
k0 = 2.0
sigma = 0.5

# Time values
t_values = [0.0, 1.0, 3.0, 6.0]

def sigma_t(t, sigma):
    return sigma * np.sqrt(1 + (t / (2 * sigma**2))**2)

def probability_density(x, t):
    st = sigma_t(t, sigma)
    prefactor = 1.0 / (np.sqrt(2 * np.pi) * st)
    exponent = -(x - x0 - k0 * t)**2 / (2 * st**2)
    return prefactor * np.exp(exponent)

# Plot probability density at different times
plt.figure()
for t in t_values:
    plt.plot(x, probability_density(x, t), label=f"t = {t}")

plt.xlabel("x")
plt.ylabel("|Psi(x,t)|^2")
plt.title("Gaussian Wave Packet Spreading (Free Particle)")
plt.legend()
plt.grid(True)
plt.show()

# Expectation value
print("Expectation value <x> = x0 + k0 t")
for t in t_values:
    print(f"t = {t}, <x> ≈ {x0 + k0 * t:.2f}")
