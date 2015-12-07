### Keep development, staging, and production as similar as possible

This is very important for CI, and very often overlooked. 
This manifests most often in CI as job code which will *only run on the CI system*. 
This makes it very difficult for developers to run, test and modify the job code.

Automation is often mistakenly identified as the objective of CI / CD.
Actually, the objectives are reliability and predictability, followed by speed. 
Automation is a technique which can help improve predictability and speed, but it’s far too easy to build a system 
that’s automated, but unreliable. When automation breaks down (and it will, frequently), it’s important that:

1. Troubleshooting is efficient
2. Manual workarounds can be applied to keep important code moving through the pipeline, without compromising the quality of the output.

For these reasons, there shouldn’t be anything special about the CI environment that can’t be easily 
reproduced on a developer’s laptop (or on a cloud server). 

One of the trickiest aspects of this is build credentials, aka secrets. For example, suppose a build job is going 
to push an artifact to an S3 bucket for official releases. If this secret is tied to the build machine, then there’s 
no way to produce an official release from any other environment if the build environment is broken or the 
job starts to fail. 

---

<ul class="fa-ul">
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Base environments and dependencies used by the CI system should be easy for developers to provision and use.</span>
    </li>
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Trusted developers should have access to secrets used by the CI system, in a controlled and audited way.</span>
    </li>
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Manually built artifacts should be valid input for downstream automated jobs.</span>
    </li>
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>The CI system should be built from images that can be pulled and run by developers without the need to setup a complex build environment.</span>
    </li>
</ul>
