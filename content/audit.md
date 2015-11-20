## X. Audit

### Build steps and artifacts written to an audit system independent of any single CI component

The audit is the definitive record of the CI process.

Trusted developers can perform CI / CD operations manually, as long as they generate the necessary audit records.

Audit is used for detailed provenance of artifacts.

---

### Rules

1. Write CI job metadata to an audit record, not just a log file
2. Support manual / override workflows in addition to automation
