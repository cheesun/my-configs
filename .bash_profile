
export PATH=~/bin:$PATH
export AWS_CREDENTIAL_FILE=$HOME/.ssh/eb-cred-file-infra

ifconfig | grep inet | grep 172.31 && source corp || source red

eval "$(rbenv init -)"

alias eb="/usr/local/AWS-ElasticBeanstalk-CLI-2.3.1/eb/macosx/python2.7/eb"
