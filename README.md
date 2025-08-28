# Release It.

A Node.js project.

## Installation

```bash
npm install
```

## Usage

```bash
node index.js
```

## License

ISC


create a release-it json for me
- Here are the rules.
- main branch , follow commit conventions for next version bump
- develop branch , follow commit conventions for next version bump, channel alpha
- stage branch , follow commit conventions for next version bump, channel beta
- support/n.n.x branch , follow commit conventions for next version bump, version must be inferred from branch name. only patches are allowed on support branches. commit messages should be ignored if try to be more than a patch.
- must update npm package version
- 