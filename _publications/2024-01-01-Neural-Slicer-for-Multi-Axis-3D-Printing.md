---
title: "Neural Slicer for Multi-Axis 3D Printing"
collection: publications
category: manuscripts
permalink: /publication/2024-01-01-Neural-Slicer-for-Multi-Axis-3D-Printing
date: 2024-07-01
venue: 'ACM Transactions on Graphics (TOG)'
citation: ' Tao Liu,  Tianyu Zhang,  Yongxue Chen,  Yuming Huang,  Charlie Wang, &quot;Neural Slicer for Multi-Axis 3D Printing.&quot; ACM Transactions on Graphics (TOG), 2024.'
selected: true
header:
  teaser: publications/SIG2024NeuralSlicer.jpg
---
We introduce a novel neural network-based computational pipeline as a representation-agnostic slicer for multi-axis 3D printing. This advanced slicer can work on models with diverse representations and intricate topology. The approach involves employing neural networks to establish a deformation mapping, defining a scalar field in the space surrounding an input model. Isosurfaces are subsequently extracted from this field to generate curved layers for 3D printing. Creating a differentiable pipeline enables us to optimize the mapping through loss functions directly defined on the field gradients as the local printing directions. New loss functions have been introduced to meet the manufacturing objectives of support-free and strength reinforcement. Our new computation pipeline relies less on the initial values of the field and can generate slicing results with significantly improved performance.