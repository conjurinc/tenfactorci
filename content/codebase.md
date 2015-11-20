## I. Codebase

### One codebase tracked in revision control, many deploys

This principle seems obvious to any seasoned developer. And yet, .... Do you have shell scripts pasted into a 
Jenkins server? What about ad-hoc jobs? Those little edit boxes which encourage you to paste in code are nefarious 
little traps that undermine the robustness of your CI system. 

Even if the code in those edit boxes is technically under revision control, how is it versioned? 
Can you re-create any build that you ran in the past? Or is it likely that some little edit box has been 
changed in an un-trackable way? Do you have a catch-all “CI” scripts repository, which is used by many jobs? 
This is a no-no, because combining code for different jobs into a single repo makes it impossible to version 
them independently.

---

### Rules

1. Only paste a single command into code boxes. 
2. Document the operation of the job.
3. The configuration for every CI job should be stored in a source code repository.
