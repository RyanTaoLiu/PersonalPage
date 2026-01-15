---
title: "Neural Slicer for Multi-Axis 3D Printing"
collection: portfolio
excerpt: "A neural network-based computational pipeline as a representation-agnostic slicer for multi-axis 3D printing. This advanced slicer can work on models with diverse representations and intricate topology."
date: 2024-01-01
header:
  teaser: /images/500x300.png
---

Neural Slicer is a novel computational pipeline that employs neural networks to establish a deformation mapping, defining a scalar field in the space surrounding an input model. Isosurfaces are subsequently extracted from this field to generate curved layers for 3D printing.

### Key Features

- **Representation-agnostic**: Works with diverse model representations (mesh, point cloud, implicit functions)
- **Topology-independent**: Handles intricate topology seamlessly without preprocessing
- **Differentiable pipeline**: Enables optimization through loss functions for better layer quality
- **Support-free printing**: Generates slicing results with improved performance and reduced material waste

### Links

- **GitHub Repository**: [Neural Slicer](https://github.com/RyanTaoLiu/NeuralSlicer)
- **Publication**: [ACM TOG 2024](https://dl.acm.org/doi/abs/10.1145/3658212)
