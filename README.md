# Git Aliases

### Some default alises
```shell
$ git config --global alias.co checkout

$ git config --global alias.br branch

$ git config --global alias.ci commit

$ git config --global alias.st status
```

Firstable don't forget to source your file
EX:
```shell
$ source ~/.bashrc
```

### Some examples with created aliases

#### update branch1 than make it up to date to master
```shell
$ update_branch branch1 master
```
#### stash not indexed items with message on param1, and switch to onother branch (param2)
```shell
$ stash_then_branch "put stash message here ..." branch_to_switch_on
```
