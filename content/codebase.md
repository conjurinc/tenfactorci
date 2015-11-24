## I. Codebase

### One codebase tracked in revision control, many deploys

This principle seems obvious to any seasoned developer. And yet, .... Do you have shell scripts pasted into a 
Jenkins server? What about ad-hoc jobs? Those little edit boxes which encourage you to paste in code are nefarious 
little traps that undermine the robustness of your CI system. 

### Good
![Good job config](https://i.imgur.com/vErSuw3.png)

### Bad
![Bad job config](https://i.imgur.com/y8L0gjv.png)

Even if the code in those edit boxes is technically under revision control, how is it versioned? 
Can you re-create any build that you ran in the past? Or is it likely that some little edit box has been 
changed in an un-trackable way? Do you have a catch-all “CI” scripts repository, which is used by many jobs? 
This is a no-no, because combining code for different jobs into a single repo makes it impossible to version 
them independently.

Test code should be versioned alongside the code it is testing.

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
