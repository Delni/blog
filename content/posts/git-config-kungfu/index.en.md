---
title: "Git Config: harness the power of git"
cover: /images/git-config/cover.en.png
description: Improve your git daily life with these gitconfig tips
date: 2022-11-23T11:00:00.234Z
lastmod: 2024-01-05T15:54:19.279Z
author: Nicolas Delauney
tags:
  - git
  - config
keywords:
  - git
  - gitconfig
readingTime: true
draft: false
---

Git is a powerful tool, but it gets even more powerful with the right config. If you use git, maybe you can benefit from some of these tips. In this article, we will play a lot with the `git config` subcommand.

{{% note info %}}
Disclaimer: of course, everything said here can be found, and is explained more in details, on the [official git documentation](https://git-scm.com/docs).
{{% /note %}}

## Basic config
On your computer, you should have a file in your home called `.gitconfig`. It may contain some content, most of them set by git using `git config --global`. Each git project will then have its own config, under `<project>/.git/config`, that allow per-project overriding.  
Git will read files in the following orders, and the first read value will be the one applied:
| Level | Location
| :-- | :--: |
| Project | `<project>/.git/config` |
| User | `<home>/.gitconfig` |
| System | `/etc/gitconfig` |

Anyway, back to `<home>/.gitconfig`. Here you can set the default user information: 
```toml
[user]
	email = john.doe@email.com
	name = John Doe
```
You can also add some default behavior under `[core]` and define some `[alias]`. My personal git config looks like that:
```toml
[core]
	editor = vi			# <- or nano, vscode, ...
	autocrlf = input	# <- input, determine end of line based on system. Other values: true, false
[alias]
	lg = !git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
```
Wow... Just a minute here to explain this alias 😅
1. To allow to write `git myalias`, you need to prepend the alias by `!git`
2. The goal of this alias is to redefine `log` with colors and custom display as a graph.
3. the `--pretty=format:'...'` define the look of each commit
   1. `%C` change the color (or, reset it)
   2. `%h` display the commit short-hash
   3. `%d` show ref name (HEAD, branch, etc.)
   4. `%cr` date of commit, relative
   5. `%an` author name
   6. ...
   7. All placeholders on the [documentation page][placeholders], and there is so much to discover!

(Well, there is not so much branches on my blog...)
![demo git lg](resources/gitlg.gif)


Anyway. I personally prefer to rebase on pull, to have a clean state and history. To do so, put `rebase = merge` in the `[pull]` section.  
All together, the `.gitconfig` now looks like:

```toml
[user]
	email = john.doe@server.com
	name = John Doe
[core]
	editor = vi			# <- or nano, vscode, ...
	autocrlf = input	# <- input, determine end of line based on system. Other values: true, false
[alias]
	lg = !git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
[pull]
	rebase = merge
```

## Gitmessage
One other nice little thing you can add to your config is the message template. If you use some commit convention like [Gitmoji](https://gitmoji.dev/) or [Conventional Commit](https://www.conventionalcommits.org/en/v1.0.0/), it is a good place to put it. You can also add some decoration to remember recommended line length, add your coworkers... My pro-tip is to comment each line with `#`, so you only have to uncomment the line(s) you are interested in on committing.

To use these templates, simply write them in some files, and then add the path to the file in your config. For instance:
```toml
[commit]
	template=path/to/the/template
```
and here's my usual git message
```toml
#Title: 52 characters --------------------------- #
#chore():
#feat():
#fix():
#test():
#refactor():

#Body: 72 characters ------------------------------------------------ #

#Ticket number

#Co-authored-by: usual author <author.usual@email.com>
#Co-authored-by: usual author2 <author2.usual@email.com>
```

A small demo?
![demo gitcommit](./resources/gitcommit.en.gif)

## Per directory config
Ok, it starts to look pretty good! But, what if you have multiple identity to work with? Let's say, one on Github, one on Gitlab, and maybe one on a self-served git instance. You could, of course, redefine after each clone the right identity and setup, in each project. But it's a bit cumbersome don't you think?

Git already got you my friends. You can add sections in your config file that let you override any value, solely based on your current directory. Imagine the following file system:
```goat
        home                                                                   
          |
          +--- wayne_industries
          |      |
          |      +--- blog
          |      +--- finances
          +--- human_flying_mammal
                 |
                 +--- batcave-door-automator
                 +--- batmobile-android-auto
```
Based on that, maybe you'll need some different configs for your different ...projects. Let's put it in two files:

```toml
# .gitconfig.wayne
[user]
	email = brucew@wayne.org
```
```toml
# .gitconfig.secret
[user]
	email = batman@gotham-by-night.org
[core]
	sshCommand = ssh -F ~/.ssh/batconfig # <- point to a specific identity file
[alias]
	batlog = !git log
```

With these two files, you can now head back to your main `.gitconfig` and simply put an `includeIf` directive, depending on the git path:
```toml
# .gitconfig
[includeIf "gitdir:~/wayne_industries/"]
        path = ~/.gitconfig.wayne
[includeIf "gitdir:~/human_flying_mammal/"]
        path = ~/.gitconfig.secret
```

And the `includeIf` directive means a `include` directive also exist, so you can even go deeper with splitting your configs into smaller parts 😁

### A well-written configuration may take time, but believe me, on the long term this is a winning game! And no need to do all this in a row, the config will evolve in according of our needs and will

[placeholders]: https://git-scm.com/docs/pretty-formats#Documentation/pretty-formats.txt-emHem