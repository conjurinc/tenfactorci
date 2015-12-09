### One codebase tracked in revision control, many deploys

This principle seems obvious to any seasoned developer. And yet, .... Do you have shell scripts pasted into a 
Jenkins server? What about ad-hoc jobs? Those little edit boxes which encourage you to paste in code are nefarious 
little traps that undermine the robustness of your CI system. 

### Good
<div class="row">
    <img title="Good job config" src="https://i.imgur.com/vErSuw3.png"/>
</div>

### Bad
<div class="row">
    <img title="Bad job config" src="https://i.imgur.com/y8L0gjv.png"/>
</div>

Even if the code in those edit boxes is technically under revision control, how is it versioned? 
Can you re-create any build that you ran in the past? Or is it likely that some little edit box has been 
changed in an un-trackable way? Do you have a catch-all “CI” scripts repository, which is used by many jobs? 
This is a no-no, because combining code for different jobs into a single repo makes it impossible to version 
them independently.

Test code should be versioned alongside the code it is testing.

Job configuration should also be tracked in source control. Committing to a repository on job config change is good;
defining the jobs as code is better
<sup><a href="#codebase-1">1</a></sup>.
Setting up job configurations by hand in user interfaces is error-prone and a history of changes is 
important for rebuilding past artifacts.

---

<ul class="fa-ul">
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Only paste a single command into code boxes.</span>
    </li>
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Document the operation of the job.</span>
    </li>
    <li>
        <i class="fa-li fa fa-2x fa-check-square"></i>
        <span>Store the job configuration in a source code repository.</span>
    </li>
</ul>

<div id="codebase-1">
    <small>
        1. For example if you're using Jenkins, use the 
        <a href="https://github.com/jenkinsci/job-dsl-plugin/wiki">Job DSL Plugin</a> 
        or a project like <a href="https://github.com/groupon/DotCi">DotCI</a> to define your jobs.
    </small>
</div>