---
title: "Memory-efficient modeling and slicing of large-scale adaptive lattice structures"
collection: publications
category: manuscripts
permalink: /publication/2021-01-01-Memory-efficient-modeling-and-slicing-of-large-scale-adaptive-lattice-structures
date: 2021-01-01
venue: 'Journal of Computing and Information Science in Engineering'
citation: ' Shengjun Liu,  Tao Liu,  Qiang Zou,  Weiming Wang,  Eugeni Doubrovski,  Charlie Wang, &quot;Memory-efficient modeling and slicing of large-scale adaptive lattice structures.&quot; Journal of Computing and Information Science in Engineering, 2021.'
author_role: "supervisor-first-second-author"
authors: "Shengjun LIU, Tao LIU, Qiang Zou, Weiming Wang, Eugeni L Doubrovski, Charlie CL Wang"
selected: true
header:
  teaser: publications/JCISELatticeImplicitModeling.jpg
---
Lattice structures have been widely used in various applications of additive manufacturing due to its superior physical properties. If modeled by triangular meshes, a lattice structure with huge number of struts would consume massive memory. This hinders the use of lattice structures in large-scale applications (e.g., to design the interior structure of a solid with spatially graded material properties). To solve this issue, we propose a memory-efficient method for the modeling and slicing of adaptive lattice structures. A lattice structure is represented by a weighted graph where the edge weights store the struts’ radii. When slicing the structure, its solid model is locally evaluated through convolution surfaces in a streaming manner. As such, only limited memory is needed to generate the toolpaths of fabrication. Also, the use of convolution surfaces leads to natural blending at intersections of struts, which can avoid the stress concentration at these regions. We also present a computational framework for optimizing supporting structures and adapting lattice structures with prescribed density distributions. The presented methods have been validated by a series of case studies with large number (up to 100 M) of struts to demonstrate its applicability to large-scale lattice structures.