---
title: "Learning Based Toolpath Planner on Diverse Graphs for 3D Printing"
collection: publications
category: manuscripts
permalink: /publication/2024-01-01-Learning-Based-Toolpath-Planner-on-Diverse-Graphs-for-3D-Printing
date: 2024-12-01
venue: 'ACM Transactions on Graphics (TOG)'
citation: ' Yuming Huang,  Yuhu Guo,  Renbo Su,  Xingjian Han,  Junhao Ding,  Tianyu Zhang,  Tao Liu,  Weiming Wang,  Guoxin Fang,  Xu Song, &quot;Learning Based Toolpath Planner on Diverse Graphs for 3D Printing.&quot; ACM Transactions on Graphics (TOG), 2024.'
selected: true
header:
  teaser: publications/SIGA2024RLToolpathPlanner.jpg
---
This paper presents a learning based planner for computing optimized 3D printing toolpaths on prescribed graphs, the challenges of which include the varying graph structures on different models and the large scale of nodes & edges on a graph. We adopt an on-the-fly strategy to tackle these challenges, formulating the planner as a Deep Q-Network (DQN) based optimizer to decide the next 'best' node to visit. We construct the state spaces by the Local Search Graph (LSG) centered at different nodes on a graph, which is encoded by a carefully designed algorithm so that LSGs in similar configurations can be identified to re-use the earlier learned DQN priors for accelerating the computation of toolpath planning. Our method can cover different 3D printing applications by defining their corresponding reward functions. Toolpath planning problems in wire-frame printing, continuous fiber printing, and metallic printing are selected to demonstrate its generality. The performance of our planner has been verified by testing the resultant toolpaths in physical experiments. By using our planner, wire-frame models with up to 4.2k struts can be successfully printed, up to 93.3% of sharp turns on continuous fiber toolpaths can be avoided, and the thermal distortion in metallic printing can be reduced by 24.9%.