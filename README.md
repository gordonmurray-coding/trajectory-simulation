<p align="left">
  <a href="https://www.mathworks.com/products/matlab.html"><img src="https://img.shields.io/badge/MATLAB-R2022a%2B-blue" alt="MATLAB"></a>
  <a href="./LICENSE"><img src="https://img.shields.io/badge/license-MIT-success" alt="License: MIT"></a>
  <img src="https://img.shields.io/badge/maintained-yes-informational" alt="Maintained">
</p>

![MATLAB](https://img.shields.io/badge/MATLAB-R2022a+-orange)
![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)
![GitHub last commit](https://img.shields.io/github/last-commit/<your-username>/<repo>)

# Trajectory Simulation

MATLAB scripts for generating and comparing trajectories against truth data.

## Contents
- `scripts/Trajectory_generator.m`
- `scripts/Trajectory_generator_ver2.m`
- `scripts/Distance_checker_tool_v1.m`
- `scripts/fence_generator.m`

## Quickstart
```matlab
run_demo
```

## Example Results
![Trajectory XY](results/trajectory_xy.png)
![Velocity Time](results/velocity_time.png)



## Requirements
- MATLAB R2022a or newer
- Recommended: Signal Processing Toolbox (for radar), Aerospace/Mapping toolboxes as noted


## Installation
```bash
git clone https://github.com/<your-username>/<repo-name>.git
cd <repo-name>
```


## Data
Place required CSVs into the `data/` folder. See Quickstart for filenames.


## Results
Figures are saved under `results/`.

---

### 🤝 Contributing
Issues and PRs are welcome. Please open an issue to discuss significant changes.

### 📜 License
This project is licensed under the MIT License — see [LICENSE](./LICENSE) for details.

### ⭐ Acknowledgments
If this saved you time, consider giving the repo a star!
