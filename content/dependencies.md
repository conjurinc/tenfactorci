### Explicitly declare and isolate dependencies

Ah yes. Dependencies. CI jobs have all kinds of dependencies:

* Languages like Python and Ruby
* Tools like Docker, Vagrant, Selenium and AWS
* Backing services like Postgresql

Without the right dependencies, the CI tools break. Worse yet, dependencies generally drift over time. 
When you install a dependency a year from now (after a CI server crashes, or you’re rebuilding or updating it), 
you’ll likely get something quite different from today. 
So, it’s not enough to carefully manage the CI code, you have to manage the dependencies just as carefully. 
Otherwise, the result is a system that works today, but:

1. Won’t work tomorrow
2. Makes non-reproducible artifacts

The tools for specifying dependencies are getting a better, but it’s still very easy to leave a 
dependency underspecified and then experience a system failure when it’s unexpectedly upgraded in a 
backwards-incompatible way.

The **only** way to completely lock down dependencies on a full system (e.g. Linux machine), is to capture an image
and tie the build job to that specific image id. 
This used to be quite difficult; thanks to Docker, it’s now gotten a lot easier. 
Containers are great for build jobs because:

1. The image has all of its dependencies built in; OS, libraries, application code, everything. 
2. The image is locked with a specific version (SHA). It’s guaranteed to work just the same in the future as it does today.

Just keep in mind, container technology *is not* a panacea. 
For example, you can’t containerize your Windows and OS X build jobs. When you can't use a container, 
fall back on a traditional virtualized image. If you can't do that either, manage the build machine as 
strictly as you can using configuration management tools. 

---

<ul class="fa-ul">
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Explicitly declare all dependencies.</span>
    </li>
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Dependencies must be locked to specific versions (e.g. Gemfile.lock).</span>
    </li>
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Run builds on strictly controlled containers or virtual machines.</span>
    </li>
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Build servers (bare metal or base images) should have the minimum possible set of installed packages and configuration.</span>
    </li>
</ul>
