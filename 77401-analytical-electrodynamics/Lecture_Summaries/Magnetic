#paper: "a4", margin: (x: 2.5cm, y: 2.5cm))
#set text(font: "Linux Libertine", size: 11pt)
#set par(justify: true)
#set heading(numbering: "1.")

// Number all block equations
#set math.equation(numbering: "(1)")

#align(center)[
  #text(17pt, weight: "bold")[Derivation of Symmetrized Maxwell's Equations] \
  #v(0.5em)
  #text(12pt, style: "italic")[Incorporating Magnetic Monopoles via Dual 4-Potentials]
  #v(1.5em)
]

= Introduction

In standard classical electrodynamics, the absence of magnetic monopoles is embedded in the theory by deriving the electromagnetic fields from a single 4-vector potential, $A^mu = (phi, bold(A))$. Because the magnetic field is defined as the curl of a vector potential ($bold(B) = nabla times bold(A)$), its divergence is identically zero ($nabla dot bold(B) = 0$). 

To mathematically symmetrize Maxwell's equations and allow for magnetic monopoles, we must introduce a *second* 4-vector potential specifically for the magnetic sector. 

= The Dual Potentials and Field Definitions

Let us define the electric and magnetic 4-vector potentials, along with their respective charge and current densities:

- *Electric Potential:* $A_e^mu = (phi_e, bold(A)_e)$, driven by electric charge $rho_e$ and current $bold(J)_e$.
- *Magnetic Potential:* $A_m^mu = (phi_m, bold(A)_m)$, driven by magnetic charge $rho_m$ and current $bold(J)_m$.

Both potentials must independently satisfy the Lorenz gauge condition:
$ nabla dot bold(A)_e + 1/c (partial phi_e)/(partial t) = 0, quad nabla dot bold(A)_m + 1/c (partial phi_m)/(partial t) = 0 $ <lorenz>

Furthermore, we postulate that both potentials satisfy the inhomogeneous wave equations (in CGS units):
$ (nabla^2 - 1/c^2 partial^2/(partial t^2)) phi_(e,m) = -4 pi rho_(e,m) $ <wave_scalar>
$ (nabla^2 - 1/c^2 partial^2/(partial t^2)) bold(A)_(e,m) = - (4 pi)/c bold(J)_(e,m) $ <wave_vector>

To symmetrize the theory, the electric and magnetic fields are redefined such that they receive complementary contributions from both potentials:
$ bold(E) &= -nabla phi_e - 1/c (partial bold(A)_e)/(partial t) - nabla times bold(A)_m $ <E_def>
$ bold(B) &= nabla times bold(A)_e - nabla phi_m - 1/c (partial bold(A)_m)/(partial t) $ <B_def>

= Deriving the Gauss's Laws

== Gauss's Law for Magnetism
To find the divergence of the magnetic field, we take the divergence of Equation @B_def:
$ nabla dot bold(B) = nabla dot (nabla times bold(A)_e) - nabla^2 phi_m - 1/c (partial)/(partial t) (nabla dot bold(A)_m) $
The divergence of a curl is zero ($nabla dot (nabla times bold(A)_e) = 0$). We can substitute the divergence of $bold(A)_m$ using the Lorenz gauge condition from @lorenz ($nabla dot bold(A)_m = - 1/c (partial phi_m)/(partial t)$):
$ nabla dot bold(B) &= - nabla^2 phi_m - 1/c (partial)/(partial t) ( -1/c (partial phi_m)/(partial t) ) \
  &= - (nabla^2 - 1/c^2 partial^2/(partial t^2)) phi_m $
Using the scalar wave equation @wave_scalar for the magnetic potential, we recover the symmetrized Gauss's Law for magnetism:
$ nabla dot bold(B) = 4 pi rho_m $ <gauss_mag>

== Gauss's Law (Electric)
By an identical mathematical procedure, taking the divergence of Equation @E_def yields:
$ nabla dot bold(E) = - nabla^2 phi_e - 1/c (partial)/(partial t) (nabla dot bold(A)_e) - nabla dot (nabla times bold(A)_m) $
Applying the Lorenz gauge and the scalar wave equation for the electric potential gives:
$ nabla dot bold(E) = 4 pi rho_e $ <gauss_elec>

= Deriving the Curl Equations

== Symmetrized Faraday's Law
We take the curl of the electric field definition @E_def:
$ nabla times bold(E) = - nabla times (nabla phi_e) - 1/c (partial)/(partial t) (nabla times bold(A)_e) - nabla times (nabla times bold(A)_m) $
The curl of a gradient is zero ($nabla times nabla phi_e = 0$). 
Next, we isolate $nabla times bold(A)_e$ from the definition of the magnetic field @B_def:
$ nabla times bold(A)_e = bold(B) + nabla phi_m + 1/c (partial bold(A)_m)/(partial t) $
Substituting this into our equation for $nabla times bold(E)$:
$ nabla times bold(E) &= - 1/c (partial)/(partial t) (bold(B) + nabla phi_m + 1/c (partial bold(A)_m)/(partial t)) - nabla times (nabla times bold(A)_m) \
  &= - 1/c (partial bold(B))/(partial t) - 1/c nabla (partial phi_m)/(partial t) - 1/c^2 (partial^2 bold(A)_m)/(partial t^2) - nabla times (nabla times bold(A)_m) $
We use the vector identity $nabla times (nabla times bold(A)_m) = nabla(nabla dot bold(A)_m) - nabla^2 bold(A)_m$:
$ nabla times bold(E) + 1/c (partial bold(B))/(partial t) = - 1/c nabla (partial phi_m)/(partial t) - 1/c^2 (partial^2 bold(A)_m)/(partial t^2) - nabla(nabla dot bold(A)_m) + nabla^2 bold(A)_m $
Grouping the gradient terms and the $bold(A)_m$ terms together:
$ nabla times bold(E) + 1/c (partial bold(B))/(partial t) = (nabla^2 - 1/c^2 partial^2/(partial t^2)) bold(A)_m - nabla (nabla dot bold(A)_m + 1/c (partial phi_m)/(partial t)) $
By the Lorenz gauge @lorenz, the gradient term vanishes entirely. We are left with the wave operator acting on $bold(A)_m$. Substituting the vector wave equation @wave_vector gives the symmetrized Faraday's Law:
$ nabla times bold(E) + 1/c (partial bold(B))/(partial t) = - (4 pi)/c bold(J)_m $ <faraday>

== Symmetrized Ampere-Maxwell Law
Finally, we take the curl of the magnetic field definition @B_def:
$ nabla times bold(B) = nabla times (nabla times bold(A)_e) - nabla times (nabla phi_m) - 1/c (partial)/(partial t) (nabla times bold(A)_m) $
The second term vanishes. We isolate $nabla times bold(A)_m$ from the definition of the electric field @E_def:
$ - nabla times bold(A)_m = bold(E) + nabla phi_e + 1/c (partial bold(A)_e)/(partial t) $
Substituting this into the $nabla times bold(B)$ equation:
$ nabla times bold(B) &= nabla times (nabla times bold(A)_e) + 1/c (partial)/(partial t) (bold(E) + nabla phi_e + 1/c (partial bold(A)_e)/(partial t)) \
  &= nabla(nabla dot bold(A)_e) - nabla^2 bold(A)_e + 1/c (partial bold(E))/(partial t) + 1/c nabla (partial phi_e)/(partial t) + 1/c^2 (partial^2 bold(A)_e)/(partial t^2) $
Rearranging and moving the time derivative of $bold(E)$ to the left side:
$ nabla times bold(B) - 1/c (partial bold(E))/(partial t) = - (nabla^2 - 1/c^2 partial^2/(partial t^2)) bold(A)_e + nabla (nabla dot bold(A)_e + 1/c (partial phi_e)/(partial t)) $
Once again, the Lorenz gauge @lorenz forces the gradient term to zero. Applying the vector wave equation @wave_vector for $bold(A)_e$, we obtain the standard Ampere-Maxwell law:
$ nabla times bold(B) - 1/c (partial bold(E))/(partial t) = (4 pi)/c bold(J)_e $ <ampere>

= Summary
By introducing a dual set of 4-potentials, the electric and magnetic fields are placed on completely equal footing. Equations @gauss_mag, @gauss_elec, @faraday, and @ampere form the beautifully symmetric Maxwell's equations.

