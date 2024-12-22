# RouteMesh

RouteMesh is a lightweight and flexible navigation framework for iOS, built using Swift. It provides a modular approach to managing navigation between screens, such as master-detail, component-to-component, tab-based, and deep links.

---

## Getting Started


### Cloning the Repository

Clone the repository to your local machine:
```bash
git clone https://github.com/your-username/RouteMesh.git
cd RouteMesh
```

---

## Git Hooks

RouteMesh enforces best practices using Git hooks. These hooks are scripts that run automatically at specific points in the Git workflow.

### Hooks Included

1. **Pre-Commit Hook**:
   - Runs SwiftLint to check code quality.
   - Prevents commits if there are linting errors.

2. **Commit Message Hook**:
   - Validates commit messages to ensure they follow the required format:
     ```
     <type>: <description>
     ```
   - Allowed types: `feat`, `bugfix`, `doc`, `chore`, `test`, `refactor`, `style`, `perf`, `ci`.
   
#### Allowed Commit Message Types

| Type       | Description                                                                 |
|------------|-----------------------------------------------------------------------------|
| `feat`     | Introduces a new feature or functionality.                                  |
| `bugfix`   | Fixes a bug in the code.                                                   |
| `doc`      | Updates or adds documentation (e.g., README, comments).                    |
| `chore`    | Changes that don't modify code functionality (e.g., updating dependencies).|
| `test`     | Adds or updates tests for the codebase.                                    |
| `refactor` | Improves code structure or readability without changing behavior.          |
| `style`    | Changes related to code formatting (e.g., removing trailing spaces).       |
| `perf`     | Improves performance in the code.                                          |
| `ci`       | Updates related to Continuous Integration (e.g., GitHub Actions).          |


### Installing the Hooks

To install the hooks globally, run:
```bash
./install_hooks.sh
```

This script will:
1. Create a global hooks directory (`~/.git-hooks`) if it doesn't exist.
2. Copy the local hooks to the global directory.
3. Ensure the hooks are executable.

If you want to use the hooks only in this repository, ensure they are in the `.git/hooks/` folder.

---

## Linting

RouteMesh uses SwiftLint to ensure consistent code quality. 

### Running SwiftLint Manually

You can run SwiftLint manually at any time:
```bash
swiftlint
```

If you don't have SwiftLint installed, install it using Homebrew:
```bash
brew install swiftlint
```

### SwiftLint in Pre-Commit Hook

The pre-commit hook will automatically run SwiftLint on the files you are trying to commit. If there are linting errors, the commit will be blocked until the issues are resolved.

---

## Project Structure

```plaintext
RouteMesh/
├── Sources/          # Main source code for the library
│   └── RouteMesh/    # Core module
├── Tests/            # Unit tests
├── .swiftlint.yml    # SwiftLint configuration file
├── Package.swift     # Swift Package Manager manifest
├── install_hooks.sh  # Script to install Git hooks
```

---

## Contributing

A guide for contributing to RouteMesh will be available soon. Stay tuned!

---

## License

RouteMesh is licensed under the MIT License. See [LICENSE](LICENSE) for more details.

---

## Contact

A guide for questions about RouteMesh and the developer will be available soon. Stay tuned!
