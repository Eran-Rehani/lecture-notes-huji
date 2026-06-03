// Lecture 05 - Radioactive decay
// 77603 - Nuclear Physics
// Date: 12 May 2026
// Lecturer: Dr. Moshe Friedman

#set page(
  paper: "a4",
  margin: 1in,
  header: [
    #grid(
      columns: (1fr, 1fr, 1fr),
      align: (left, center, right),
      [Nuclear Physics (77603)], [Lecture 05], [Radioactive Decay],
    )
    #line(length: 100%, stroke: 0.4pt)
  ],
  footer: context align(center)[#counter(page).display()],
)

#set text(font: "New Computer Modern", size: 11pt)
#show math.equation: set text(font: "STIX Two Math")
#set math.equation(numbering: "(1)")
#set heading(numbering: none)
#set par(justify: true)

#align(center)[
  #text(size: 16pt, weight: "bold")[Lecture 05: Radioactive Decay]

  Nuclear Physics 77603

  Dr. Moshe Friedman

  12 May 2026
]

#v(1em)

= Lecture 05 - Radioactive Decay <sec:lec05>

== Radioactive decay

In the most basic terms, radioactive decay is the process by which an unstable
atomic nucleus changes into a more stable state by emitting radiation or by
splitting into lighter nuclei. The main decay modes discussed here are gamma
decay, alpha decay, fission, and beta decay.

== Types of radioactive decay

- *Gamma decay:* In this process, the nucleus emits a gamma photon, which is a
  high-energy electromagnetic wave. This typically occurs after an alpha or beta
  decay when the nucleus is left in an excited state.

  In gamma decay, the nucleus starts in an excited state and emits a gamma
  photon to transition to a lower energy state. The energy of the emitted gamma
  photon corresponds to the difference in energy between the initial and final
  states of the nucleus.

  $
    attach("X", tl: A, bl: Z)^* arrow.r attach("X", tl: A, bl: Z) + gamma .
  $

- *Alpha decay:* In alpha decay, a heavy nucleus emits an alpha particle, which
  is a tightly bound helium-4 nucleus with two protons and two neutrons. The
  daughter nucleus therefore has mass number smaller by 4 and atomic number
  smaller by 2. This decay is common in very heavy nuclei, where it reduces the
  Coulomb repulsion inside the nucleus.

  $
    attach("X", tl: A, bl: Z) arrow.r
    attach("Y", tl: A - 4, bl: Z - 2) + attach("He", tl: 4, bl: 2).
  $

- *Fission:* In fission, a very heavy nucleus splits into two medium-mass
  fragments, usually together with several free neutrons and a large energy
  release. The process is energetically favorable for heavy nuclei because
  medium-mass nuclei have a larger binding energy per nucleon. Fission can be
  spontaneous, or it can be induced by neutron absorption.

  $
    attach("X", tl: A, bl: Z) arrow.r
    attach("Y", tl: A_1, bl: Z_1) + attach("W", tl: A_2, bl: Z_2) + n n + dots.
  $

- *Beta decay:* In beta decay, a neutron or proton inside the nucleus changes
  identity through the weak interaction. In beta-minus decay, a neutron becomes
  a proton and the nucleus emits an electron and an antineutrino. In beta-plus
  decay, a proton becomes a neutron and the nucleus emits a positron and a
  neutrino. Beta decay changes the atomic number while leaving the mass number
  unchanged.

  $
    beta^-: quad attach("X", tl: A, bl: Z) arrow.r
    attach("Y", tl: A, bl: Z + 1) + e^- + overline(nu)_e,
  $
  $
    beta^+: quad attach("X", tl: A, bl: Z) arrow.r
    attach("Y", tl: A, bl: Z - 1) + e^+ + nu_e.
  $
The electron and neutrino can have all the energy values.
- *Electron Capture - E.C*
$
  attach("X", tl: A, bl: Z) + e^- arrow.r attach(X, tl: A, bl: z-1) + nu_e
$
- *Proton/ Neutron emission*
//fill
//
//

For every  nuclues there is a chance of decaying .
The decay constant is $lambda$
and its units are $s^-1$.
$
  (d N)/(d t)=- lambda N =A quad [1/s]
$
We have another unit called Ci
$
  "Ci"=3.7 times 10^10 "Bq"
$
$
  1"Bq" =1 "dps"
$

= Health Aspects of Radiation
We can classify radiation into two types,
קרינה מיננת  and קרינה בלתי מיננת.
We are workin with two pronciples.
- ALARA - As Low As Reasonably Achivable.
- LNT - Linear Non Threshold

//Insrt Function of Risk as a function of dose graph
//
= Units Of Radiation
- Exposure to Radiation -
  - $1 R = (1 "esu")/(0.0001293 g)= 2.58 times 10^(-4) C/"Kg"$
// Add explanation

-Absorbed Dose - $1 "Gy" = 1 "J"/"Kg"$ (Not in frequent use, Usage mainly in satelite)
Americans use $1 "rad"= 10^(-2)"Gy"$

- Dose Equivilant  $1 "Sv"=1 J/"Kg"$
// Insert table for gamma,beta,alpha , etc...
- rem // explanation
