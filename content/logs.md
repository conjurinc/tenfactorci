### Treat logs as event streams

Robust log capture is pretty well handled by standard CI systems. 

This is largely due to the fact that the CI pipeline jobs are often shell-based, and shells have robust support for 
log streams, `stdout` and `stderr`. 

When a build job is a more complex piece of software, such as a Java program, it should log verbosely 
in order to assist with troubleshooting.

Finally, if you need to keep build logs for historical reasons, store them externally to your CI system.

---

<ul class="fa-ul">
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Build jobs should log verbosely.</span>
    </li>
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Send command results to stdout and logging to stderr.</span>
    </li>
</ul>
