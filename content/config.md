## III. Config

### Store config in the environment

Externalize the configuration of the job to the environment. This makes the job maximally flexible, it ensures 
that the job is not tied to a specific file arrangement, and it makes it easy to move secrets out of the source code.

---

### Rules

1. Don’t rely on hard-coded paths to configuration files, unless the whole file can be safely committed to the source control repo.
2. Externalize secrets out of the source code and out of images. This ensures that the code is not tied to a specific environment or user, and it prevents accidental leakage of secrets. It also ensures that jobs can be run only by specifically privileged individuals and systems.