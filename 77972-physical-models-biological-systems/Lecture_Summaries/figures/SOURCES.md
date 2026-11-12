# Visual search and source record — 2026-10-23

Five visual assets were selected from documents represented in `LLM_Ready`.
Original PDF panels were extracted with axes, legends, scale bars and panel
letters intact. No observations, labels or curves were redrawn or retouched.
Captions distinguish measurements, fits and structural illustrations; the
surrounding explanations and derivations remain independent.

## Selected and integrated

| Asset | Source in the corpus | Placement and purpose |
|---|---|---|
| `hiv_treatment_data.png` | Nelson PDF27 / printed3, Fig.0.3; also official PDF15 / printed14, Fig.1.3 | Lecture1, experiment: compare measured concentrations on linear and semilog axes with the later model prediction. The red preliminary exponential description misses the early shoulder. |
| `hiv_protease_resistance.png` | Nelson PDF40 / printed16, Fig.1.4 | Lecture1, biology: connect protease inhibition and mutation to molecular shape. Structural art by David S. Goodsell; not microscopy or a population-model output. |
| `hiv_bad_fits.png` | Nelson PDF38 / printed14, Fig.1.3; also official PDF18 / printed17, Fig.1.5 | Lecture1, validation: show why matching endpoints or the initial value cannot validate a fit. The crop retains the complete last data point and dashed trajectory. |
| `neutrophil_measurements.png` | Official PDF20 / printed19, Fig.1.7, corresponding to the original article's Fig.4C | Lecture2, data: replace synthetic traces with observations/fits plus the corresponding marker-space heatmap, panels4B–C. A sharper copy comes from the lecturer's published paper, PDF7 / printed1081. |
| `binary_fraction_histograms.png` | Official PDF22 / printed21, Fig.2.1, credited there to Nelson | Lecture2, binary fractions: connect discrete values to finite samples and explain why more bins give smaller probability mass per bar. |

Source page images are at `LLM_Ready/<document>/pages/pNNN.jpg`. Original PDFs
were used for sharper extraction instead of enlarging page JPEGs.

For the HIV observations, captions follow the supplied Nelson edition's
attribution to Perelson (2002), rather than substituting the different 1996
paper cited elsewhere. Clinical background references remain separate from
the provenance of this exact dataset image.

The neutrophil source was checked against the
[original article](https://pmc.ncbi.nlm.nih.gov/articles/PMC6800754/)
and the [author-hosted PDF](https://openscholar.huji.ac.il/sites/default/files/amir.erez/files/erez_et_al_2019_quantifying_the_dynamics_of_hematopoiesis_by_in_vivo_idu_pulse-chase_mass.pdf).
The course panel was replaced with a sharper source crop, not reconstructed
data. The original ordinate's word “fluorescence” is retained and qualified
because the assay is CyTOF. The text distinguishes the later peak from the
full measurement window and refines the classroom schedule approximation.

## Relevant candidates not duplicated

| Candidate | Location | Decision |
|---|---|---|
| Untreated HIV timeline | Official PDF13, Fig.1.1; Nelson PDF25, Fig.0.1 | Optional orientation if the biological introduction is extended; not needed for this treatment derivation. |
| Leaky-container sketch | Official PDF14, Fig.1.2; Nelson PDF26, Fig.0.2 | Relevant, but the conservation and force-balance explanation already develops its role. |
| Labelled HIV virion structure | Nelson PDF29, PartI opening image, art by Goodsell | Optional biology reference; most labels go beyond the model variables. The selected protease image has a more direct role. |
| Reverse-transcriptase image | Nelson PDF32 / printed8, Fig.1.1 | Less relevant than the protease image to the treatment discussed here. |
| Two-population HIV process diagram | Official PDF16, Fig.1.4; Nelson PDF34, Fig.1.2 | Already represented by the student's labelled TikZ flux diagram. |
| Source–destination cartoon | Official PDF20, Fig.1.6 | Already represented by the student's TikZ figure and derivation. |
| Information Venn diagram | Official PDF24, Fig.2.2 | Existing vector diagram is clearer and qualifies one-way versus mutual determination. |
| Pearson scatterplots / Anscombe quartet | Official PDF28 and30, Figs.2.3–2.4 | Defer until these later topics are taught. |

## Equation panels checked

- Official PDF17, Eqs.1.5–1.10: HIV forcing, integration and equal-rate limit.
  These already have more detailed typeset derivations in Lecture1.
- Official PDF19, Eqs.1.11–1.16: four-population and pulse-chase equations.
  These are already explained term by term in Lecture2.
- Official PDF24, Eqs.2.19–2.23: joint/conditional entropy and mutual information.
  The student's chain-rule derivation is already present.
- Official PDF25, Eqs.2.24–2.27: KL and Jensen. An original proof screenshot
  would retain its implicit support assumption; keep the qualified student proof.
- Nelson PDF41–42, Key Formulas: the relevant exponential and Taylor steps
  are already explained where used.

Equation screenshots were not inserted. A short probability-mass/bin-width
calculation explains the histogram panels. The existing entropy curve was
moved from binary fractions to the Shannon-entropy definition.

## Reproduction and checks

`LLM_Ready/_work/figure_review_2026-10-23/figure_manifest.json` records assets,
source pages, crop rectangles in PDF points, source/asset SHA-256, dimensions
and attribution. Crops were rendered at 300dpi; this does not invent resolution
missing from an embedded raster. Sources and prior versions were preserved.
The extra primary PDF is in the work directory.

Checks include crop inspection, source hashes, image paths and caption
references, independent mathematical checks, compilation to stable references,
and rendered-page inspection. Logs, renders and pre-change notes/PDF are kept
in the work directory. No decorative images or future topics were added.
