# bash_rc
Git Bash commands, functions, aliases etc. Useful for development.

## Instructions
- Save `.bashrc` file to your home directory (run `cd ~` in terminal).
- Change defaults for your environment:
  ```bash
  # Path to working directory.
  # $HOME === ~ === your home directory
  WORKING_DIR="$HOME/Projects/"

  # Default branch for development
  BRANCH="develop"
  ```
- Restart your terminal or open new one.

## Usage
- Open your terminal.
- Run command:
  ```bash
    project https://github.com/your-account-name/repo-name.git
  ```
  (url depends on repository!)
- Wait until script finishes operations and opens new VSCode window.