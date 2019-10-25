# An MaOEA with 2 Interacting Processes: Cascade Clustering & Reference Point Incremental Learning

  

This repository contains the LaTeX source code for the paper "A Many-Objective Evolutionary Algorithm With Two Interacting Processes: Cascade Clustering and Reference Point Incremental Learning", as well as the MATLAB implementation of the proposed method CLIA, under the evaluation platform PlatEMO (https://github.com/BIMK/PlatEMO).

## Usage of Implementation

1. Download PlatEMO v2.2, from https://github.com/BIMK/PlatEMO.
2. Copy the CLIA folder into the Algorithms folder of PlatEMO v2.2.
3. Run main.m of PlatEMO, CLIA should now be in the algorithm list.

## Disclaimer of Reproducibility

CLIA was originally implemented for PlatEMO v1.0. In PlatEMO v2.2, lots of things changed, *e.g.* APIs, default settings for some benchmark evaluations, *etc*. For compatibility, we changed lots of things to achieve the reproducibility of results on MaF problems with $M = 5$, yet still with some slight differences. We are sorry that we have not spent enough time to cover the other test cases.

We compare the performance of CLIA implementations on PlatEMO v1 and PlatEMO v2.2.
The "PlatEMO v2.2" results on the MaF benchmark problems with $M=5$ are averaged from $20$ independent runs on PlatEMO v2.2. The "PlatEMO v1" results are results from the published paper.


| $M=5$ | CLIA |      on   |    PlatEMO    |        v1    | CLIA |    on      |   PlatEMO           |    v2.2      |
|-----|------------|---------|----------|----------|--------------|---------|----------|----------|
|     | D          | #FEs    | mean     | std      | D            | #FEs    | mean     | std      |
| F1  | 14         | 140000  | 1.10e-1 | 7.55e-4 | 14           | 140000  | 1.00e-1 | 4.61e-5 |
| F2  | 14         | 140000  | 9.60e-2 | 1.67e-3 | 14           | 140000  | 9.68e-2 | 1.08e-3 |
| F3  | 14         | 140000  | 6.36e-2 | 1.12e-3 | 14           | 140000  | 5.82e-2 | 1.65e-3 |
| F4  | 14         | 140000  | 1.90e0 | 6.47e-2 | 14           | 140000  | 1.88e0 | 7.48e-2 |
| F5  | 14         | 140000  | 1.93e0 | 8.36e-3 | 14           | 140000  | 1.81e0 | 4.31e-1 |
| F6  | 14         | 140000  | 2.40e-3 | 3.32e-4 | 14           | 140000  | 2.11e-3 | 4.46e-5 |
| F7  | 24         | 240000  | 2.70e-1 | 6.11e-3 | 24           | 240000  | 2.92e-1 | 1.26e-2 |
| F8  | 2          | 100000  | 7.88e-2 | 2.65e-3 | 2            | 100000  | 8.13e-2 | 3.31e-3 |
| F9  | 2          | 100000  | 7.87e-2 | 5.90e-3 | 2            | 100000  | 8.25e-2 | 5.09e-3 |
| F10 | 14         | 140000  | 3.73e-1 | 8.63e-3 | 14           | 140000  | 4.01e-1 | 7.08e-3 |
| F11 | 14         | 140000  | 6.35e-1 | 1.26e-2 | 14           | 140000  | 3.87e-1 | 3.69e-3 |
| F12 | 14         | 140000  | 9.33e-1 | 2.51e-3 | 14           | 140000  | 9.26e-1 | 4.70e-3 |
| F13 | 5          | 100000  | 1.20e-1 | 1.19e-2 | 5            | 100000  | 1.29e-1 | 1.15e-2 |
| F14 | **108**        | **1080000** | 3.50e-1 | 2.28e-2 | **100**          | **1000000** | 3.92e-1 | 3.41e-2 |
| F15 | **108**        | **1080000** | 3.68e-1 | 4.02e-2 | **100**          | **1000000** | 3.86e-1 | 4.49e-2 |t #FEs are different for f14 and f15 in PlatEMO v1 and v2.2.


## Citation

Please kindly cite our work if necessary:
```
@article{ge2019interacting,
title={A Many-Objective Evolutionary Algorithm With Two Interacting Processes: Cascade Clustering and Reference Point Incremental Learning},
author={Ge, Hongwei and Zhao, Mingde and Sun, Liang and Wang, Zhen and Tan, Guozhen and Zhang, Qiang and Chen, C. L. Philip},
journal={IEEE Transactions on Evolutionary Computation},
year={2019},
volume={23},
number={4},
pages={572-586},
doi={10.1109/TEVC.2018.2874465},
url={https://ieeexplore.ieee.org/document/8485382},
}
```
