---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

# Tao LIU

Nancy Rothwell Building, M13 9PL, Manchester, UK  
{{ site.author.email }} | {{ site.author.uri }}

# RESEARCH INTERESTS

Neural-based design and manufacturing optimization, computational geometry, additive manufacturing, and robotics. In particular: multi-axis 3D printing, topology optimization, neural implicit representations for geometric modeling, fiber-reinforced composites, and computational design frameworks.

# RESEARCH EXPERIENCE

The University of Manchester  
Ph.D. Student; advised by Prof. Charlie C.L. Wang  
Manchester, UK  
2023 - Now

Central South University
Research Assistant; advised by Prof. Shengjun LIU
Changsha, China
2020 - 2023  

# PUBLICATIONS

{% assign pub_count = site.publications | size %}
{% assign pub_index = pub_count %}
{% for post in site.publications reversed %}
{{ pub_index }} {{ post.citation }}
{% assign pub_index = pub_index | minus: 1 %}
{% endfor %}

# EDUCATION

The University of Manchester  
Ph.D. in Neural-Based Design and Manufacturing Optimization; Supervised by Prof. Charlie C.L. Wang  
Manchester, UK  
2020 - Now

Central South University  
M.S. & B.S. in Computational Mathematics; Supervised by Prof. Shengjun LIU  
ChangSha, China  (GPA 3.4/4 top 10%)
Aug 2008 - Jun 2014

# HONORS & AWARDS

* Best Paper Award @ SIGGRAPH Asia | 2025
* Huawei Scholarship @ The University of Manchester | 2018
* University Recommendation for M.Sc. Admission (Exam-Exempt), School of Mathematics, Central South University | 2017
* Excellent Student @ Central South University | 2014

# ACADEMIC SERVICE

## Reviewer for Journals and Conferences

* _ACM SIGGRAPH_ and _SIGGRAPH Asia_
* _ACM Symposium on Computational Fabrication (SCF)_
* _Additive Manufacturing Process (AMP)_
* _Computer Aided Design (CAD)_
* _Computer Aided Geometry Design (CAGD)_
* _Eurographics (EG)_
* _Graphical Models (GMod)_

# TEACHING

{% for post in site.teaching reversed %}
* {{ post.title }} @ {{ post.venue }}  
  {{ post.type | default: "Teaching Assistant" }}, {{ post.date | date: "%B %Y" }}
{% endfor %}
