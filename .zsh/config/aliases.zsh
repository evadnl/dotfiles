## ----- aliases
alias ls="ls --color"
alias cat="bat"


# kubectl
alias k="kubectl"
alias kgp="kubectl get pods"
alias kgn="kubectl get nodes" 
alias kex="kubectl exec -it"
alias ksec="kubectl get secrets"
alias kdp="kubectl describe"

# terraform
alias tf="terraform"
alias tfp="terraform plan"
alias tfa="terraform apply"

# MacOS specific
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
