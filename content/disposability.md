## [VII. Disposability](#disposability)

### Maximize robustness with fast startup and graceful shutdown

Jobs can sometimes take a long time to run. Track how long jobs take to run so you can take action when new changes
cause an unexpected spike in build time.

It’s common for a build manager to realize that a build job is going to fail, and terminate it prematurely. When this
happens, any resources created for the job should be released. Cloud instances should always be terminated and Docker
containers should be run with the `--rm` flag.

---

<ul class="fa-ul">
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Job code should handle shutdown gracefully and not leave orphaned resources.</span>
    </li>
</ul>
