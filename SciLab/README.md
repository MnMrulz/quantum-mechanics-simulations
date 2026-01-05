# Scilab Implementations

This directory contains Scilab implementations of selected quantum mechanics simulations.
My goal is to demonstrate the same physical concepts as the Python codes using SciLab(a free, open-source numerical computing platform commonly used in academic environments).

## Simulations Included

### 1. Particle in a 1D Infinite Potential Well
Analytical eigenfunctions and energy spectrum of a particle confined in a one-dimensional box.
Wavefunctions and probability densities are visualized to illustrate quantization and boundary conditions.

**File:** `particle_in_a_box.sce`


### 2. Quantum Harmonic Oscillator
Analytical eigenstates of the one-dimensional quantum harmonic oscillator implemented using Hermite polynomials defined recursively.
Eigenfunctions and probability densities are visualized.

**File:** `harmonic_oscillator.sce`


### 3. Gaussian Wave Packet Dynamics
Time evolution of a Gaussian wave packet for a free particle.
Wave-packet spreading and expectation values demonstrate quantum dynamics.

**File:** `wave_packet_free_particle.sce`


### 4. Quantum Tunneling Through a Finite Potential Barrier
Computation of the transmission probability for a particle tunneling through a finite square potential barrier.
Illustrates quantum tunneling in classically forbidden regions.

**File:** `finite_barrier_tunneling.sce`


## Notes
- Natural units (\(\hbar = m = 1\)) are used unless stated otherwise.
- Scripts are written to prioritize physical transparency over optimization.
- Scilab implementations closely mirror the Python versions for cross-platform comparison.
