---
title: "La théorie des claviers - Partie 1 : Anatomie"
date: 2022-12-20T09:18:01.752Z
author: Nicolas Delauney
tags:
  - claviers
keywords:
  - claviers
description: Nous utilisons des claviers tous les jours, mais connaissez vous vraiment ces
  petites bêtes ? Petite présentation et glossaire pour aller plus loin.
readingTime: true
draft: true
lastmod: 2022-12-20T16:20:58.944Z
cover: https://via.placeholder.com/1200x600
series: La théorie des claviers
slug: la-theorie-des-claviers-partie-1-anatomie
---

Les claviers, ces objets de tous les jours. Tout le monde en a (un, ou plus 😇), mais est-ce que savez vous ce qui se cache derrière ? Des _layouts_ aux _profils_, des claviers _à membranes_ aux claviers _mécaniques_, découvrons ensemble ce monde merveilleux. Pour ne pas vous assomer tout de suite, allons y par étape, en commençant par l'anatomie d'un clavier. Il y a tant à dire, c'est préférable d'avoir plusieurs articles ! 😅

## Fonctionnement

Un clavier, à l'origine, c'est simplement une série d'interrupteurs. Appuyé, le courant passe, relaché le courant ne passe pas. C'est grâce à ça que le controlleur du clavier (son cerveau) interprète ensuite la position de l'interupteur actif pour le transformer en lettre. Pour ce faire, à l'origine, le clavier était une grille de fils verticaux et horizontaux:

```goat
      .-o--o--o--o-->        
       \ \  \  \  \        
        '-o--o--o--o-->        
         \ \  \  \  \        
          '-o--o--o--o-->        
             \  \  \  \        
              v  v  v  v        
```

Appuyer sur une touche permet d'activer un fil vertical et un fil horizontal, afin de reconnaître la "position" de la touche activée. Le controlleur n'avait que `lignes * colonnes` à gérer.

Le problème avec ce fonctionnement était qu'à partir d'un certain nombres de touches enfoncées, le controleur n'était plus capable de détecter une nouvelle touche enfoncée. C'est ce qu'on appelle le "_ghosting_".

Mais heureusement, de nos jours le ghosting est de plus en plus rare car les controleur sont suffisamment minatiurisés pour pouvoir gérer autant d'input que nécessaire. On parle désormais de claviers [NKRO][1] (_n keys roll over_, c'est à dire capable de retenir N touches en même temps)

## Pièces

Tous les claviers, qu'ils soient à membrane ou mécaniques (détail juste en dessous), sont composés des éléments suivants :

- une **série d'actuateurs**, la membrane ou les switchs suivant le type du clavier, ils transforment l'action phyisque en signal électrique.
- **un controlleur**, dont le rôle est de transformer le signal en "symbole" envoyé directement à l'ordinateur.  (Exemple : la touche `ligne 4` `colonne 2` == `A`)
- un **corps** ("case"), qui habille le clavier, protège ses composants internes, et amène de la structure au tout (on ne veut pas d'un clavier qui rebondit à chaque frappe !)
- les **touches** ("keycaps"), évidemment, qui protègent les actuateurs, et surtout qui donnent toute sa personnalité au clavier

## Famille de claviers

On distingue majoritairement 2 types de claviers, je vous en parle depuis le début : les claviers à membranes et les claviers mécaniques. Historiquement, tous les claviers étaient mécaniques. Et les progrès technologiques ont rendu possible l'avènement des claviers à membranes, reléguant les premiers au rang de claviers "gamer" (même si ils valent bien mieux que ça !).

### Clavier à membrane

Les claviers les plus courants et les moins chers sur le marché. Le principe est simple : une **membrane** composée de 3 couches : la couche de contact, une couche intermédiaire, et la couche active. La couche intermédiaire est trouée, pour permettre à l'endroit du trou de chaque touche le contact entre les deux couches externes.

> ```goat
>      -+-+---v---+-+-+       +-+-+---v---+-+---v---+-+-  <------ couche de contact
>       |/|       |/|  |     |  |/|       |/|       |/|
>       |/|       |/|  |     |  |/|       |/|       |/|   <------ couche trouée
>       |/|       |/|   '-v-'   |/|       |/|       |/|
>      -+-+---^---+-+-----^-----+-+---^---+-+---^---+-+-  <------ couche active
>
>                         ^
>                         |       une touche enfoncée
>                          '-provoque le contact électrique
> ```

Ils sont donc très silencieux puisque les membranes en plastiques se déforment "en douceur", mais en vieillissant la membrane peu devenir plus souple, ce qui va amener à des touches non comptées, ou des touches qui ne remontent pas après la frappe... Et si la membrane casse à un endroit, il faut changer tout le clavier. Facile à produire, ils sont majoritairement conçu entièrement en plastiques. Ils sont donc assez légers, de toute les formes et de toutes les tailles, parfois même souple ... Si vous ne savez pas quel genre de clavier vous avez, il est sûrement à membrane.

| Points positifs |  Points négatifs |
| :-------------- | :--------------- |
| ✅ Pas cher     | ❌ Peu durable   |
| ✅ Silencieux   |                  |

### Clavier mécanique

Les claviers mécaniques sont appelés ainsi à cause de leurs actuateurs: les switchs. Se sont de véritables interrupteurs (appelés _switchs_) qui s'activent _mécaniquement_ lorsque la touche est enfoncée. Pour tenir ces switchs, de tels claviers possèdent une _switch plate_, une plaque de métal qui vient stabiliser les switchs en place. Ils sont donc assez souvent un peu plus lourds, mais si un switch casse... il suffit de le remplacer !

| Points positifs        |  Points négatifs            |
| :--------------------- | :-------------------------- |
| ✅ Grande longévité    | ❌ Onéreux                  |
| ✅ Réparabilité        | ❌ Bruyants (il paraît 😜)  |
| ✅ Customizable à fond |                             |


[1]: https://en.wikipedia.org/wiki/Key_rollover#n-key_rollover