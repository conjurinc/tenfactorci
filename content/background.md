# Background

The CI system is a software assembly pipeline. It’s composed of a sequence of jobs which take some input, 
process it to create derived artifacts, and pass these artifacts downstream. This mirrors the [Unix tools 
design philosophy](http://en.wikipedia.org/wiki/Unix_philosophy): programs which perform a single function and are 
easy to combine. Each step in a CI pipeline is like a Unix tool; it accepts a defined input, processes it 
efficiently, and produces an output. 

In the world of software systems, the analog of a Unix tool is a [12-factor app](http://12factor.net/). 
The 12-factor methodology was derived from the experiences of the developers of Heroku. 
After their experience hosting millions of apps, Heroku became very prescriptive about how applications should 
be deconstructed for maximum reliability and performance. In a nutshell, the 12 factors require each application 
to be broken down into distinct services and jobs, each of which:

* Performs a specific function.
* Is versioned, managed, and released independently.
* Has fully declarative dependencies.
* Is deployable into multiple environments without modification.
* Can be easily linked up to other apps.

From a design standpoint, these characteristics are very similar to a CI pipeline job.
This guide applies the relevant points of the  12 factor methodology to jobs in a CI pipeline.