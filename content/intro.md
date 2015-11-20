# Introduction

The systems that build, test, validate, and deploy software are critically important to modern businesses, 
particularly with the rapid adoption of DevOps and Continuous Integration (CI) practices. 
Unfortunately these CI systems themselves are rarely managed according to CI methodologies. 
Too often, they are operated with a break-fix mentality that is antithetical to performance oriented systems thinking.

The output of the CI system is live build artifacts to be tested and ultimately released into a production environment. 
Rapid and frequent releases of stable software can only be produced by a stable assembly line system. 
Given that a CI outage can bring an otherwise productive group of engineers and developers to a screeching halt and 
evaporate the reproducibility of previous runs, CI systems require the same level of care and attention as the 
software they are designed to deliver.

To operate a reliable CI system, each part of the system must be on a firm foundation, following good principles at 
each step. And these principles must be applied to each component; there’s no such thing as "just a simple script". 
The most trivial script can become incompatible over time, and break the entire workflow.
