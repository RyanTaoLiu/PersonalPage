---
title: "Variational progressive-iterative approximation for RBF-based surface reconstruction"
collection: publications
category: manuscripts
permalink: /publication/2021-01-01-Variational-progressive-iterative-approximation-for-RBF-based-surface-reconstruction
date: 2021-01-01
venue: 'The Visual Computer'
citation: ' Shengjun Liu,  Tao Liu,  Ling Hu,  Yuanyuan Shang,  Xinru Liu, &quot;Variational progressive-iterative approximation for RBF-based surface reconstruction.&quot; The Visual Computer, 2021.'
author_role: "supervisor-first-second-author"
authors: "Shengjun LIU, Tao LIU, Ling Hu, Yuanyuan Shang, Xinru Liu"
selected: true
header:
  teaser: publications/TVC_RBF1.jpg
---
RBF-based methods play a very important role in the point cloud reconstruction field. However, solving a linear system is the bottleneck of such methods, especially when there are a large number of points and lead the computing to be time-consuming and unstable. In this paper, we firstly construct a novel implicit progressive-iterative approximation framework based on RBFs, which could elegantly reconstruct curves and surfaces or even higher dimensional data in an approximation or interpolation way, avoiding expensive computational cost on solving linear systems. Then, we further accelerate the proposed method with a strategy inspired from the conjugate gradient algorithm. In our framework, using proper RBFs allows to simply transform the iteration matrix to be symmetrical and positive definite. Such a property contributes to reduce the computational cost greatly and produce high-quality reconstruction results. Plenty of numerical examples on various challenging data are provided to demonstrate our efficiency, effectiveness, and superiority to other methods.