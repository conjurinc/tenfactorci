# Differences between 12 factor apps and CI jobs

It’s worth discussing how CI jobs are different than 12 factor applications. 

|Application|CI Job|
|-----------|------|
|Long-running process|Short-running process|
|Processes many transactions|Processes a single transaction|
|Returns response|Creates artifact|

A 12 factor app typically uses HTTP, or similar, as the protocol. An incoming message contains request parameters. 
The parameters are processed, and a response is returned. 

A CI job is almost always the combination of two things:

1. A source code repository
2. A small number (often 0) of input parameters, typically as environment variables

Source code is typically provided to the CI job by the CI framework; 
just like HTTP messages are parsed and provided to a web application by a web server.
