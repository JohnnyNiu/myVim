Use this script can:

- upload your `.vimrc` to remote 
- download `.vimrc` from remote and install vim plugins on your local vim

### How to?

#### Download vimrc and install plugins
```
./forceDownload.sh 
```
	
What does it do:

- backup current local vimrc
- download vimrc from remote and replace local one
- install plugins for you

#### Upload vimrc to remote
1. update your vimrc in ~/.vimrc (if you want to update first)
2. Run
```
./forceUpload.sh 
```
