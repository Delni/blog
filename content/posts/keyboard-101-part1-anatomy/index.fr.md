---
title: "La théorie des claviers - Partie 1 : Anatomie"
cover: /images/keyboard-101-part1-anatomy/cover.fr.png
description: Nous utilisons des claviers tous les jours, mais connaissez vous vraiment ces
  petites bêtes ? Petite présentation et glossaire pour aller plus loin.
date: 2023-01-01T09:00:00.000Z
lastmod: 2023-01-02T14:58:20.419Z
author: Nicolas Delauney
tags:
  - claviers
keywords:
  - clavier
readingTime: true
draft: true
series: La théorie des claviers
type: post
---

Les claviers, ces objets de tous les jours. Tout le monde en a (un, ou plus 😇), mais savez vous ce qui se cache derrière ? Des _layouts_ aux _profils_, des claviers _à membranes_ aux claviers _mécaniques_, découvrons ensemble ce monde merveilleux. Pour ne pas vous assomer tout de suite, allons y par étape, en commençant par l'anatomie d'un clavier. Il y a tant à dire, c'est préférable d'avoir plusieurs articles ! 😅

## Pièces

Tous les claviers, qu'ils soient à membrane ou mécaniques (détail juste en dessous), sont composés des éléments suivants :

- une **série d'actuateurs**, la membrane ou les switchs suivant le type du clavier, ils transforment l'action phyisque en signal électrique.
- **un controleur**, dont le rôle est de transformer le signal en "symbole" envoyé directement à l'ordinateur.  (Exemple : la touche `ligne 4` `colonne 2` == `A`)
- Un circuit électrique (PCB), qui relie les actuateurs au controleur
- un **corps** ("case"), qui habille le clavier, protège ses composants internes, et amène de la structure au tout (on ne veut pas d'un clavier qui rebondit à chaque frappe !)
- les **touches** ("keycaps"), évidemment, qui protègent les actuateurs, et surtout qui donnent toute sa personnalité au clavier


## Fonctionnement

Un clavier, à l'origine, c'est simplement une série d'interrupteurs. Appuyé, le courant passe, relaché le courant ne passe pas. C'est grâce à ça que le controleur du clavier (son cerveau) interprète ensuite la position de l'interupteur actif pour le transformer en lettre. Pour ce faire, à l'origine, le clavier était une grille de fils verticaux et horizontaux:

>```goat
>      .-o--o--o--o-->        
>       \ \  \  \  \        
>        '-o--o--o--o-->        
>         \ \  \  \  \        
>          '-o--o--o--o-->        
>             \  \  \  \        
>              v  v  v  v        
>```

Appuyer sur une touche permet d'activer un fil vertical et un fil horizontal, afin de reconnaître la "position" de la touche activée. Le controleur n'avait que `lignes * colonnes` à gérer.

Le problème avec ce fonctionnement était qu'à partir d'un certain nombres de touches enfoncées, le controleur n'était plus capable de détecter une nouvelle touche enfoncée. C'est ce qu'on appelle le "_ghosting_".

Mais heureusement, de nos jours le ghosting est de plus en plus rare car les controleur sont suffisamment miniatiurisés pour pouvoir gérer autant d'input que nécessaire. On parle désormais de claviers [NKRO][1] (_n keys roll over_, c'est à dire capable de retenir N touches en même temps)
## Famille de claviers

{{< figure src="./resources/pexels-josh-sorenson-1714205.jpg" caption="Photo de <a href='https://www.pexels.com/fr-fr/@joshsorenson/'>Josg Sorenson</a> sur <a href='https://www.pexels.com/fr-fr/photo/clavier-magique-apple-avec-pave-numerique-sur-la-table-pres-de-la-souris-sans-fil-1714205/'>Pexels</a>">}}

On distingue majoritairement 2 types de claviers, je vous en parle depuis le début : les claviers à membranes et les claviers mécaniques. Historiquement, tous les claviers étaient mécaniques. Et les progrès technologiques ont rendu possible l'avènement des claviers à membranes, reléguant les premiers au rang de claviers "gamer" (même si ils valent bien mieux que ça !).

### Clavier à membrane

Les claviers les plus courants et les moins chers sur le marché. Le principe est simple, c'est une **membrane** composée de 3 couches : la couche de contact, une couche intermédiaire, et la couche active. La couche intermédiaire est trouée, pour permettre à l'endroit du trou de chaque touche le contact entre les deux couches externes.

> ```goat
> -+-+---v---+-+-+       +-+-+---v---+-+---v---+-+-  <------ couche de contact
>  |/|       |/|  |     |  |/|       |/|       |/|
>  |/|       |/|  |     |  |/|       |/|       |/|   <------ couche trouée
>  |/|       |/|   '-v-'   |/|       |/|       |/|
> -+-+---^---+-+-----^-----+-+---^---+-+---^---+-+-  <------ couche active
> 
>                    ^
>                    |       une touche enfoncée
>                     '-provoque le contact électrique
> ```

Ils sont donc très silencieux puisque les membranes en plastiques se déforment "en douceur", mais en vieillissant la membrane peu devenir plus souple, ce qui va amener à des touches non comptées, ou des touches qui ne remontent pas après la frappe... Et si la membrane casse à un endroit, il faut changer tout le clavier. Facile à produire, ils sont majoritairement conçu entièrement en plastiques. Ils sont donc assez légers, de toute les formes et de toutes les tailles, parfois même souple ... Si vous ne savez pas quel genre de clavier vous avez, il est sûrement à membrane.

| Points positifs |  Points négatifs |
| :-------------- | :--------------- |
| ✅ Pas cher     | ❌ Peu durable   |
| ✅ Silencieux   | ❌ Confort de frappe peu étudié |
| ✅ Parfois fin  |                  |

### Clavier mécanique

Les claviers mécaniques sont appelés ainsi à cause de leurs actuateurs: les _switchs_. Se sont de véritables interrupteurs qui s'activent _mécaniquement_ lorsque la touche est enfoncée. Un monde si vaste et passionnant que nous approfondirons ce sujet une autre fois ! Pour tenir ces switchs, de tels claviers possèdent une _switch plate_, une plaque de métal qui vient stabiliser les switchs en place. Ils sont donc assez souvent un peu plus lourds, mais si un switch casse... il suffit de le remplacer ! 

{{< figure src="./resources/jan-loyde-cabrera-6e9b45NTrI4-unsplash.jpg" caption="Photo de <a href='https://unsplash.com/@loydieschoice?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText'>Jan Loyde Cabrera</a> sur <a href='https://unsplash.com/fr/photos/6e9b45NTrI4?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText'>Unsplash</a>">}}

En plus, la plupart des switchs sont standardisés. La marque la plus connue, Cherry MX, a donné le _la_ de cette industrie, et vous trouverez souvent des "cherry clones", signifiant qu'ils suivent les mêmes spécifications. Chaque catégorie de switch va changer le toucher du clavier, ce qui permettra à chacun.e de trouver le confort de frappe qui lui convient

| Points positifs        |  Points négatifs            |
| :--------------------- | :-------------------------- |
| ✅ Grande longévité    | ❌ Onéreux                  |
| ✅ Réparabilité        | ❌ Bruyants (il paraît 😜)  |
| ✅ Customizable à fond |                             |

---

Voilà, c'est déjà un bon début pour comprendre ce que vous avez entre les mains. Dans la seconde partie, nous parlerons des différents formats de claviers qui existent, et là encore il va y en avoir pour tous les goûts ! ⌨️

[1]: https://en.wikipedia.org/wiki/Key_rollover#n-key_rollover
[2]: https://drop.com/talk/10016/anatomy-of-a-mechanical-keyboard