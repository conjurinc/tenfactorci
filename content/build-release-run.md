## V. Build, Release, Run

### Strictly separate build and run stages

The jobs that make up the CI system are software. Therefore, they should be coded, tested, packaged, and released. 
In addition, job code must be meaningfully versioned, because the requirements of the product being built change 
over time. 

It’s important that as the job code is changed in response to the product code, that the association between the 
older product code and older job code is not lost. 
Otherwise, it becomes very difficult to re-build historical packages, and to effectively test and deliver hot fixes.

---

### Rules

1. Create a release artifact for the job code.
2. Job code should have test cases, and a build and release process of its own.
3. Maintain version relationships between the product code and the job code.
