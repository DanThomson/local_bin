
# Short programs with short names - /usr/local/bin


## Checkout `local_bin` repo
``` bash
cd /usr/local/bin
git init
git remote add origin git@github.com:DanThomson/local_bin.git
git fetch origin
git checkout -b trunk --track origin/trunk

git reset origin/trunk
```
