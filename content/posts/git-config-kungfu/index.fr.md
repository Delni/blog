---
title: "Git Config: exploitez toute sa puissance"
author: Nicolas Delauney
tags:
  - git
  - config
keywords:
  - git
  - gitconfig
description: Améliorez votre quotidien git avec ces astuces gitconfig
readingTime: true
draft: true
categories:
  - tech
lastmod: 2022-11-23T10:54:37.820Z
cover: /images/git-config/cover.fr.png
---

Git est un outil extrèmement performant, mais il peut l'être encore plus avec la bonne configuration. Si vous utilisez git, peut-être que certaines de ces astuces vous seront utiles ! Évidemment, dans cet article nous allons beaucoup jouer avec la sous-commande `git config`.

{{% note info %}}
Attention : bien entendu, nous n'inventons rien dans cet article, et tout ce qui y est dit, et bien plus, est expliqué en détail sur la la [documentation officielle](https://git-scm.com/docs).
{{% /note %}}

## Config de base
Sur votre machine, vous devriez avoir dans votre "home" un fichier appelé `.gitconfig`. Il peut déjà avoir des valeurs, mises en places à coup de `git config --global`. Ensuite, chaque projet git aura sa propre configuration, dans le fichier `<project>/.git/config`, qui permet de surcharger  par projets certaines valeurs.  

Git lira les fichiers dans l'ordre, s'ils existent, et la première valeur lue est celle appliquée :
| Niveau | Emplacement
| :-- | :--: |
| Projet | `<projet>/.git/config` |
| Utilisateur | `<home>/.gitconfig` |
| Système | `/etc/gitconfig` |

Bref, revenons à notre configuration utilisateur, `<home>/.gitconfig`. Vous pouvez y renseigner quelques informations utilisateur :
```toml
[user]
	email = jean.martin@email.com
	name = Jean Martin
```
Vous pouvez également ajouter des comportements par défaut, sous la clé `[core]`, et même définir quelques `[alias]`. Ma configuration perso ressemble à ça :
```toml
[core]
	editor = vi			# <- ou nano, vscode, ...
	autocrlf = input	# <- input, va dépendre du système. Autres valeurs: true, false
[alias]
	lg = !git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
```
Oulah... Juste une minute pour expliquer cet alias un peu velu 😅
1. Pour pouvoir écrire la commande `git monalias`, il faut "oublier" git en ajoutant au début de l'alias `!git`
2. Le but de mon alias est de redéfinir un `log` avec des couleurs et une vision graphique
3. le flag `--pretty=format:'...'` permet de définir le look de chaque commit
   1. `%C` change la couleur (ou, la remet à sa valeur initiale)
   2. `%h` montre le "short hash" du commit
   3. `%d` montre le nom de la référence (HEAD, branche, etc.)
   4. `%cr` date du commit, relative à maintenant
   5. `%an` nom de l'auter
   6. ...
   7. Tous les placeholders sont sur la [page de documentation][placeholders], et il y en a encore plein à découvrir !

(Bon, il n'y a pas beaucoup de branches sur ce blog, certe...)
![demo git lg](resources/gitlg.gif)

Bref. Personnellement, je préfère faire un _rebase_ à chaque _pull_, pour avoir un historique un peu plus propre. Pour se faire, il suffit de rajouter `rebase = merge` dans la section `[pull]`.  
Tout mis bout à bout, le fichier `.gitconfig` ressemble maintenant à:
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
Une autre petite chose sympa que vous pouvez ajouter à votre config est un template de message. Si vous utilisez des conventions de commit comme [Gitmoji](https://gitmoji.dev/) ou [Conventionnal Commit](https://www.conventionalcommits.org/en/v1.0.0/), c'est le bon endroit pour le mettre. On peut aussi ajouter des commentaire pour se rappeler de la longueur recommandée des lignes, le co-author de vos collègues... Mon petit pro-tip, c'est de commenter chaque ligne en commençant par `#`, comme ça à chaque commit il suffit de décommenter la ligne pour l'ajouter au commit.

Pour utiliser ces templates, il suffit de les écrire dans un fichier, puis d'ajouter le chemin de ce fichier dans votre configuration. Par exemple :
```toml
[commit]
	template=chemin/vers/le/template
```
et mon git message ressemble en général à
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

Une petite démo ?

![demo gitcommit](./resources/gitcommit.fr.gif)

## Configuration par dossiers
Ok, ça commence à être pas mal déjà ! Mais, et si vous travailliez avec des identité multiples ? Disons, une sur Github, une autre sur Gitlab, et peut-être même une dernière sur une instance git autohébergée. On pourrait, évidemment, redéfinir après chaque `clone` la bonne identité et la bonne configuration, dans chaque projet. Mais c'est un peu lourd non ?

Git est là pour vous. On peut ajouter des sections dans le fichier de config qui nous laisse changer certaines valeures, uniquement basé sur le dossier dans lequel nous sommes. Imaginons l'aborescence suivante :
```goat
        home                                                                   
          |
          +--- wayne_industries
          |      |
          |      +--- blog
          |      +--- finances
          +--- humanoide_mamifère_volant
                 |
                 +--- batcave-door-automator
                 +--- batmobile-android-auto
```
Évidemment, vous allez avoir besoin de différentes configs pour vos différents ...projets. Faisons cela, dans deux fichiers différents :

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
	sshCommand = ssh -F ~/.ssh/batconfig # <- utile pour spécifier le fichier à utiliser avec git
[alias]
	batlog = !git log
```

Avec ces deux fichiers, on peut revenir dans notre `.gitconfig` principal, et ajouter la directive `includeIf`, qui prend le dossier courant en paramètre :
```toml
# .gitconfig
[includeIf "gitdir:~/wayne_industries/"]
        path = ~/.gitconfig.wayne
[includeIf "gitdir:~/human_flying_mammal/"]
        path = ~/.gitconfig.secret
```

Et bien-sûr, la directive `includeIf` implique l'existence d'une directive `include`, donc on peut alors encore plus loin dans le découpage de ce fichier !


### Bien rédiger sa configuration git peut prendre un peu de temps, mais croyez-moi, sur le long terme on gagne tellement de temps ! Et pas besoin de tout faire en une fois, la configuration évolue au gré de nos envies et de nos besoins

[placeholders]: https://git-scm.com/docs/pretty-formats#Documentation/pretty-formats.txt-emHem