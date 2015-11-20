# Differences between 12 factor apps and CI jobs

It’s worth discussing how CI jobs are different than 12 factor applications. 

First, a 12 factor application is a long-running process which serves many short transactions. 
In contrast, a CI job may be short or long, and it only processes a single transaction. 

A 12 factor job typically uses HTTP, or similar, as the protocol. An incoming message contains request parameters. 
The parameters are processed, and a response is returned. A CI job is almost always the combination of two things:

1. A source code repository
2. A small number (often 0!) of input parameters, typically as environment variables

The source code is typically provided to the CI job by the CI framework; just like a web server takes 
care of parsing and un-parsing HTTP messages. 
