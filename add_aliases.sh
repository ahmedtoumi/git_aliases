#edit a file that will be loaded when opening a terminal like .bashrc
vim ~/.bashrc 

# a function with two parameters to stash not indexed files with a message (param1) than checkout the requested branch (param 2)
git_stash_and_get_branch () {
    git stash save "stash for $1"
    git checkout $2
    git pull --rebase origin $2
}

# update the parent branch (param1), update the child branch (param2), than merge the first one on the second one
# When conflict, you have to resolve manually those one, index them (git add .) than commit (git commit) to end the merge process
git_update_branch1_from_branch2 () {
    echo "start checkouting and up to date the branch : $1"
    git checkout $1
    git pull --rebase origin $1
    echo "start checkouting and up to date the branch : $2"
    git checkout $2
    git pull --rebase origin NUMERIQUE-$2
    git merge $1
}
##   ALIAS    ##
alias update_branch=git_update_branch1_from_branch2
alias stash_then_branch=git_stash_and_get_branch
