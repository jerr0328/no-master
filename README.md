# no-master
Move away from "master" term in git. This repository is intended to be a collections of scripts and resources for moving away from `master` in git and various hosting providers (like GitHub and GitLab).

# Why?

Read [Problematic Terminology in Open-Source](https://blog.carbonfive.com/problematic-terminology-in-open-source/) for a more thorough explanation.

# How?

This is a work in progress, please feel free to create a PR if you can improve in any way!

## GitHub

1. Run `fix-repo.sh` by passing in the path to the repo you want to update. Example: `./fix-repo.sh ../dotfiles`
2. The script will likely fail the last step (deleting `master` branch)
3. [Change the default branch](https://help.github.com/en/github/administering-a-repository/setting-the-default-branch) to `trunk`.
4. If you have [branch protection rules](https://help.github.com/en/github/administering-a-repository/configuring-protected-branches), configure them for `trunk` instead of `master`.
5. Delete the `master` branch either in the UI or by running `git branch --delete master` in the repo's directory.
