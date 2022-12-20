---
title: "La théorie des claviers - Partie 1 : Anatomie"
date: 2022-12-20T09:18:01.752Z
author: Nicolas Delauney
tags:
  - claviers
keywords: ""
description: Nous utilisons des claviers tous les jours, mais connaissez vous vraiment ces
  petites bêtes ? Petite présentation et glossaire pour aller plus loin.
readingTime: true
draft: true
categories: null
lastmod: 2022-12-20T13:03:52.221Z
cover: https://via.placeholder.com/1200x600
series: La théorie des claviers
---

Les claviers, ces objets de tous les jours. Tout le monde en a, mais est-ce que vous savez ce qui se cache derrière ? Des _layouts_ aux _profils_, des claviers à membranes aux claviers mécaniques, découvrons ensemble ce monde merveilleux. Pour ne pas vous assomer tout de suite, nous allons y allé par étape, en commençant par l'anatomie d'un clavier.

### Fonctionnement

Un clavier, à l'origine, c'est simplement une série d'interrupteurs. Appuyé, le courant passe, relaché le courant ne passe pas. C'est grâce à ça que le controlleur du clavier ensuite interprète la position de l'interupteur actif pour le transformer en lettre. Pour ce faire, à l'origine, le clavier était une grille de fils verticaux et horizontaux:

```goat
.-o--o--o--o--o--o--
 \ \  \  \  \  \  \
  '-o--o--o--o--o--o--
   \ \  \  \  \  \  \
    '-o--o--o--o--o--o--
       \  \  \  \  \  \
```

Appuyer sur une touche permet d'activer un fil vertical et un fil horizontal, afin de reconnaître la "position" de la touche activée. Le controlleur n'avait que `lignes * colonnes` à gérer. Le problème avec ce fonctionnement était qu'à partir d'un certain nombres de touches enfoncées, le controleur n'était plus capable de détecter une nouvelle touche enfoncée. C'est ce qu'on appelle le "_ghosting_". Mais heureusement, de nos jours le ghosting est de plus en plus rare car les controleur sont suffisamment minatiurisés pour pouvoir gérer autant d'input que nécessaire.

### Pièces

Tous les claviers, qu'ils soient à membrane ou mécaniques (détail juste en dessous), sont composés des éléments suivants :

- un controlleur
- une série d'actuateurs
- un corps ("case") pour la structure et l'esthétique
- Les touches ("keycaps"), évidemment

## Clavier à membrane

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

Ils sont donc très silencieux puisque les membranes en plastiques se déforment "en douceur", mais en vieillissant la membrane peu devenir plus souple, ce qui va amener à des touches non comptées, ou des touches qui ne remontent pas après la frappe... Et si la membrane casse à un endroit, il faut changer tout le clavier.

| Points positifs |  Points négatifs |
| :-------------- | :--------------- |
| ✅ Pas cher     | ❌ Peu durable   |
| ✅ Silencieux   |                  |

## Clavier mécanique

| Points positifs        |  Points négatifs |
| :--------------------- | :--------------- |
| ✅ Grande longévité    | ❌ Onéreux       |
| ✅ Réparabilité        | ❌ Bruyants      |
| ✅ Customizable à fond |                  |

#### Switchs

## Profils