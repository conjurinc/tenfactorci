# Background

The contributors to this document have been involved in the creation and maintenance of many continuous integration 
pipelines and their associated jobs, including our work on the build and release system at 
[Conjur](https://www.conjur.net/10factorci).

This document synthesizes all of our experience and observations on a wide variety of approaches to enabling
continuous integration at organizations with wildly different needs and compositions. Our focus is on the
practices that improve the maintainability and usability of CI systems by encouraging participation from all
stakeholders.

Our motivation is to raise awareness of some systematic problems we've seen in the implementation of
continuous integration pipelines, to provide a shared vocabulary for discussing those problems, and to offer a 
set of broad conceptual solutions to those problems with accompanying terminology. The format is inspired by
[The Twelve Factor App](http://12factor.net/).
