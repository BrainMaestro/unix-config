git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'

# Shortform
alias gun='git unstage'
alias gla='git last'

for i in {1..10}
do
	alias "gl$i"="git log --topo-order --pretty=format:\${_git_log_oneline_medium_format} -$i"
done

alias gbx='git branch -d'
alias gbX='git branch -D'

