# Git Add Regex
# Stage only files that match a regex pattern
function gar() {
    git status --short | awk '{print $2}' | grep -i "$1" | xargs git add
    git status --short
}

# Git Prune
# Delete merged branches
function gpr() {
    branch=${1:-master}
    git branch | grep -iq "$branch"

    if [[ $? -ne 0 ]]; then
        echo 'That branch does not exist.'
        return 1
    fi

    git branch --merged "$branch"
    echo ==================================
    git branch --merged "$branch" | grep -iv "$branch\|master" | xargs git branch -d
    echo ==================================
    git branch --merged "$branch"
}
