## IX. Logs

### Treat logs as event streams

Robust log capture is pretty well handled by standard CI systems. 

This is largely due to the fact that the CI pipeline jobs are often shell-based, and shells have robust support for 
log streams (stdout and stderr!). 

When a build job is a more complex piece of software, such as a Java program, it should log verbosely 
in order to assist with troubleshooting.

---

### Rules

1. Build jobs should log verbosely.
2. Send command results to stdout and logging to stderr. 