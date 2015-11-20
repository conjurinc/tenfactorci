## VII. Disposability

### Maximize robustness with fast startup and graceful shutdown

Jobs can sometimes take a long time to run. 

It’s common for a build manager to realize that a build job is going to fail, and terminate it prematurely.

---

### Rules

1. Job code should handle shutdown gracefully, and not leave orphaned resources such as un-terminated cloud servers and storage.
