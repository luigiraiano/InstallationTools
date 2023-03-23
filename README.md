# Installation Tools

Use this script to prepare Ubuntu Environment.

## How to use
1- Download the zip folder of this repo
2- Exctract files
3- Open terminal and navigate to `InstallationTools` folder:
```
cd ~/Downloads
cd InstallationTools
```

### GIT Setup
Launch `lraiano_github_setup.sh` script to install `git`, `git-cola` and clone the repo `custom_scripts`.
After completing, the directory `~/git/lraiano_github/Utilities` is created.

```
cd ~/Downloads/InstallationTools/scripts
. lraiano_github_setup.sh
```

### BASHRC Setup
Launch `bashrc_setup.sh` to update the bashrc with custom personalizations.
```
cd ~/Downloads/InstallationTools/scripts
. bashrc_setup.sh
```
Open a new terminal for personalizations to have effect.
