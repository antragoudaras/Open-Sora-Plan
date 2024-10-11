
# Open Sora Plan Installation Guide

Follow these steps to install the Open Sora Plan

### Clone the repo
```bash
git clone https://github.com/antragoudaras/Open-Sora-Plan.git
```

### Install Environment
```bash
sbatch install_env.job
```

### Install Git LFS from source (needed to store the weights in the sratch directory)
```bash
source install_lfs.sh
```

### Download Text Encoder (Needed for t2v and i2v generation scripts `scripts/text_condition/gpu/sample_t2v.sh`)
```bash
sbatch download_weights_mt5-xxl.job
```

### Download Wieghts of Open-Sora-Plan
```bash
sbatch 
```