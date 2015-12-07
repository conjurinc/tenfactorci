### Store config in the environment

Externalize the configuration of the job to the environment. This makes the job maximally flexible, it ensures 
that the job is not tied to a specific file arrangement, and it makes it easy to move secrets out of the source code.

This includes sensitive configuration. Secrets **should not** be checked into source control or entered into your CI system
without encryption. Ephemeral or one time credentials are best. Externalizing your secrets ensures that the code 
is not tied to a specific environment or user. It also prevents accidental leakage of secrets. 
Finally, this pattern ensures that jobs can be run only by specifically privileged individuals and systems.

---

<ul class="fa-ul">
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Don’t rely on hard-coded paths to configuration files unless the whole file can be safely committed to the source control repo.</span>
    </li>
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Externalize secrets out of the source code and out of images.</span>
    </li>
</ul>
