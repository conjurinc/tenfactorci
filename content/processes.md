## VI. Processes

### Execute the app as one or more stateless processes

Stateful CI jobs are a big problem. 
It’s very common for a job to rely on some specific filesystem configuration
or for a sequence of jobs to use a common filesystem to pass information down the pipeline.

Not only are stateful jobs fragile, they are also not scalable. When build jobs are written with the 
assumption that the are operating on a shared filesystem, it’s impossible to scale the CI system out across a 
pool of worker machines. 

In practice, this means that the CI server becomes more and more stressed until a 
breakdown ensues. The build team tries to scale out the CI server to multiple machines, only to find that the 
jobs won’t run because they are stateful.

---

<ul class="fa-ul">
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Job code should not rely on the file system to persist data across runs.</span>
    </li>
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Job code should be portable across build nodes.</span>
    </li>
</ul>
