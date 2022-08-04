# Path to working directory.
# $HOME === ~ === your home directory
WORKING_DIR="$HOME/Projects/"

# Default branch for development
BRANCH="develop"

project() {
  # Check if url param is defined
  if [[ $1 && $1 =~ ^https.*\.git$ ]]
  then
    # Open projects directory
    cd ${WORKING_DIR}
    # Clone repo
    git clone $1
    # Get repo name and open folder
    [[ $1 =~ .*\/(.*)\.git ]]
    cd "${BASH_REMATCH[1]}/"
    # Checkout to develop branch
    git checkout ${BRANCH}
    git switch ${BRANCH}
    # Install dependencies
    npm i
    # Run VSCode
    code .
  else
    echo "Correct Github repository url must be defined!"
  fi
}