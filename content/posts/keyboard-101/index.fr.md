---
title: Le b.a.—ba des claviers
date: 2022-10-01T09:00:00+02:00
author: Nicolas Delauney
tags:
  - claviers
keywords:
  - claviers
description: Nous utilisons des claviers tous les jours, mais connaissez vous vraiment ces
  petites bêtes ? Petite présentation et glossaire pour aller plus loin.
readingTime: true
draft: true
categories: null
lastmod: 2022-11-15T14:35:17.247Z
---

Les claviers, ces objets de tous les jours. Tout le monde en a, mais est-ce que vous savez ce qui se cache derrière ? Des _layouts_ aux _profils_, des claviers à membranes aux claviers mécaniques, découvrons ensemble ce monde merveilleux.

## Anatomie d'un clavier

### Fonctionnement

Un clavier, à l'origine, c'est simplement une série d'interrupteurs. Appuyé, le courant passe, relaché le courant ne passe pas. C'est grâce à ça que le controlleur du claiver ensuite interprète la position de l'interupteur actif pour le transformer en lettre. Pour ce faire, à l'origine, le clavier était une grille de fils verticaux et horizontaux:

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

Les claviers les plus courants et les moins chers sur le marché. Le principe est simple : une **membrane** composée de 3 couches : la couche de contact, une couche intermédiaire, et la couche active. La couche intermédiaire est trouée, pour permettre à l'endroit de chaque touche le contact entre les deux couches externes.

>```goat
>               -+-+---v---+-+-+       +-+-+---v---+-+---v---+-+-  <------ couche supérieure
>                |/|       |/|  |     |  |/|       |/|       |/|
>                |/|       |/|  |     |  |/|       |/|       |/|   <------ couche trouée
>                |/|       |/|   '-v-'   |/|       |/|       |/|
>               -+-+---^---+-+-----^-----+-+---^---+-+---^---+-+-  <------ couche inférieure
>              
>                                  ^
>                                  |       une touche enfoncée       
>                                   '-provoque le contact électrique 
>```

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

<!-- ```goat
                .----------------------------------.
               | Do you need a mechanical keyboard? |
                '----------------------------------'

               .------------------------.
              /                          \
         .---+     You use a keyboard     +----------------.
        |     \                          /                  |
        no     '------------------------'                  yes
        |                                                   |
        v                                                   v
 +------+-------+      .--------.                        .-----.
 | Weird but ok |   .-| For work |<----.      .-- yes --+ Daily |
 +--------------+  |   '--------'       |    |           '-----'
                   |                    +----+              |
                   |   .----------.     |    |              no
                   +--| For gaming |<--'     |              |
                   |   '----------'          |              v
                   |                         |      .--------------.
                   v                          '----+ Ok but is it … |
       +-----------+-----------+                    '--------------'
       | You need a mechanical |
       |        keyboard       |
       +-----------------------+
``` -->

#### Switchs

## Profils

## Layouts

### Dispositions des touches

### Formats des claviers

#### 100%

Le plus complet. Toutes les touches possibles et inimaginables, mais sont-elles toutes nécessaires ?

```goat
 .-----.          .-----.  .-----.  .-----.  .-----.          .-----.  .-----.  .-----.  .-----.          .-----.  .-----.  .-----.  .-----.          .-----.  .-----.  .-----.
|       |        |       ||       ||       ||       |        |       ||       ||       ||       |        |       ||       ||       ||       |        |       ||       ||       |
|  Esc  |        |  F1   ||  F2   ||  F3   ||  F4   |        |  F5   ||  F6   ||  F7   ||  F8   |        |  F9   ||  F10  ||  F11  ||  F12  |        |       ||       ||       |
|       |        |       ||       ||       ||       |        |       ||       ||       ||       |        |       ||       ||       ||       |        |       ||       ||       |
 '-----'          '-----'  '-----'  '-----'  '-----'          '-----'  '-----'  '-----'  '-----'          '-----'  '-----'  '-----'  '-----'          '-----'  '-----'  '-----'

 .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .--------------------.          .-----.  .-----.  .-----.          .-----.  .-----.  .-----.  .-----.
|       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||                      |        |  \    ||       ||  ---  |        |       ||       ||       ||       |
|   ~   ||   1   ||   2   ||   3   ||   4   ||   5   ||   6   ||   7   ||   8   ||   9   ||   0   ||   -   ||   +   ||        <----         |        |   v   ||  |<-- ||   ^   |        |   🔒   ||   /   ||   ×   ||   -   |
|       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||                      |        |       ||       ||   |   |        |       ||       ||       ||       |
 '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '--------------------'          '-----'  '-----'  '-----'          '-----'  '-----'  '-----'  '-----'
 .-----------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .--------------.          .-----.  .-----.  .-----.          .-----.  .-----.  .-----.  .-----.
|     |<--    ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   {   ||   }   ||       |        |        |       ||       ||   |   |        |       ||       ||       ||       |
|             ||   Q   ||   W   ||   E   ||   R   ||   T   ||   Y   ||   U   ||   I   ||   O   ||   P   ||       ||       ||                |        |       ||  -->| ||   v   |        |   7   ||   8   ||   9   ||       |
|     -->|    ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   [   ||   ]   ||       \        |        |       ||       ||  ---  |        |       ||       ||       ||       |
 '-----------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '--------------'          '-----'  '-----'  '-----'          '-----'  '-----'  '-----' |       |
 .--------------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .--------------------.                                             .-----.  .-----.  .-----. |   ➕   |
|                ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   :   ||   "   ||             |        |                                           |       ||       ||       ||       |
|   CAPS LOCK    ||   A   ||   S   ||   D   ||   F   ||   G   ||   H   ||   J   ||   K   ||   L   ||       ||       ||        <----+        |                                           |   4   ||   5   ||   6   ||       |
|                ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   ;   ||   '   ||                      |                                           |       ||       ||       ||       |
 '--------------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '--------------------'                                             '-----'  '-----'  '-----'  '-----'
 .------------------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-------------------------.                   .-----.                   .-----.  .-----.  .-----.  .-----.
|                    ||       ||       ||       ||       ||       ||       ||       ||   <   ||   >   ||   ?   ||                           |                 |       |                 |       ||       ||       ||       |
|        Shift       ||   Z   ||   X   ||   C   ||   V   ||   B   ||   N   ||   M   ||       ||       ||       ||          Shift            |                 |   ^   |                 |   1   ||   2   ||   3   ||       |
|                    ||       ||       ||       ||       ||       ||       ||       ||   ,   ||   •   ||   /   ||                           |                 |       |                 |       ||       ||       ||       |
 '------------------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-------------------------'                   '-----'                   '-----'  '-----'  '-----' |     | |
 .---------.  .---------.  .--------.  .-------------------------------------------------.  .---------.  .---------.  .--------.  .--------.          .-----.  .-----.  .-----.          .--------------.  .-----. |   <-+ |
|           ||           ||          ||                                                   ||           ||           ||          ||          |        |       ||       ||       |        |                ||       ||       |
|           ||           ||          ||                                                   ||           ||           ||          ||          |        |   <   ||   v   ||   >   |        |        0       ||   •   ||       |
|           ||           ||          ||                                                   ||           ||           ||          ||          |        |       ||       ||       |        |                ||       ||       |
 '---------'  '---------'  '--------'  '-------------------------------------------------'  '---------'  '---------'  '--------'  '--------'          '-----'  '-----'  '-----'          '--------------'  '-----'  '-----'
```

#### 80% (TKL, Ten Key Less)

L'un des formats les plus plebiscités du moment. Pour celleux qui veulent un peu moins de place mais qui ne veulent pas sacrifier les clés de navigations. On pourra toujours rajouter un pavé numérique externe au besoin 😉

```goat
 .-----.          .-----.  .-----.  .-----.  .-----.          .-----.  .-----.  .-----.  .-----.          .-----.  .-----.  .-----.  .-----.          .-----.  .-----.  .-----.
|       |        |       ||       ||       ||       |        |       ||       ||       ||       |        |       ||       ||       ||       |        |       ||       ||       |
|  Esc  |        |  F1   ||  F2   ||  F3   ||  F4   |        |  F5   ||  F6   ||  F7   ||  F8   |        |  F9   ||  F10  ||  F11  ||  F12  |        |       ||       ||       |
|       |        |       ||       ||       ||       |        |       ||       ||       ||       |        |       ||       ||       ||       |        |       ||       ||       |
 '-----'          '-----'  '-----'  '-----'  '-----'          '-----'  '-----'  '-----'  '-----'          '-----'  '-----'  '-----'  '-----'          '-----'  '-----'  '-----'

 .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .--------------------.          .-----.  .-----.  .-----.
|       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||                      |        |  \    ||       ||  ---  |
|   ~   ||   1   ||   2   ||   3   ||   4   ||   5   ||   6   ||   7   ||   8   ||   9   ||   0   ||   -   ||   +   ||        <----         |        |   v   ||  |<-- ||   ^   |
|       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||                      |        |       ||       ||   |   |
 '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '--------------------'          '-----'  '-----'  '-----'
 .-----------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .--------------.          .-----.  .-----.  .-----.
|     |<--    ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   {   ||   }   ||       |        |        |       ||       ||   |   |
|             ||   Q   ||   W   ||   E   ||   R   ||   T   ||   Y   ||   U   ||   I   ||   O   ||   P   ||       ||       ||                |        |       ||  -->| ||   v   |
|     -->|    ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   [   ||   ]   ||       \        |        |       ||       ||  ---  |
 '-----------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '--------------'          '-----'  '-----'  '-----'
 .--------------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .--------------------.
|                ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   :   ||   "   ||             |        |
|   CAPS LOCK    ||   A   ||   S   ||   D   ||   F   ||   G   ||   H   ||   J   ||   K   ||   L   ||       ||       ||        <----+        |
|                ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   ;   ||   '   ||                      |
 '--------------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '--------------------'
 .------------------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-------------------------.                   .-----.
|                    ||       ||       ||       ||       ||       ||       ||       ||   <   ||   >   ||   ?   ||                           |                 |       |
|        Shift       ||   Z   ||   X   ||   C   ||   V   ||   B   ||   N   ||   M   ||       ||       ||       ||          Shift            |                 |   ^   |
|                    ||       ||       ||       ||       ||       ||       ||       ||   ,   ||   •   ||   /   ||                           |                 |       |
 '------------------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-------------------------'                   '-----'
 .---------.  .---------.  .--------.  .-------------------------------------------------.  .---------.  .---------.  .--------.  .--------.          .-----.  .-----.  .-----.
|           ||           ||          ||                                                   ||           ||           ||          ||          |        |       ||       ||       |
|           ||           ||          ||                                                   ||           ||           ||          ||          |        |   <   ||   v   ||   >   |
|           ||           ||          ||                                                   ||           ||           ||          ||          |        |       ||       ||       |
 '---------'  '---------'  '--------'  '-------------------------------------------------'  '---------'  '---------'  '--------'  '--------'          '-----'  '-----'  '-----'
```

#### 60%

Un clavier adapté à la saisie de texte. On enlève toutes les fonctions superflues.

```goat
 .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .--------------------.
|       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||                      |
|   ~   ||   1   ||   2   ||   3   ||   4   ||   5   ||   6   ||   7   ||   8   ||   9   ||   0   ||   -   ||   +   ||        <----         |
|       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||                      |
 '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '--------------------'
 .-----------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .--------------.
|     |<--    ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   {   ||   }   ||       |        |
|             ||   Q   ||   W   ||   E   ||   R   ||   T   ||   Y   ||   U   ||   I   ||   O   ||   P   ||       ||       ||                |
|     -->|    ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   [   ||   ]   ||       \        |
 '-----------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '--------------'
 .--------------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .--------------------.
|                ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   :   ||   "   ||             |        |
|   CAPS LOCK    ||   A   ||   S   ||   D   ||   F   ||   G   ||   H   ||   J   ||   K   ||   L   ||       ||       ||        <----+        |
|                ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   ;   ||   '   ||                      |
 '--------------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '--------------------'
 .------------------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-------------------------.
|                    ||       ||       ||       ||       ||       ||       ||       ||   <   ||   >   ||   ?   ||                           |
|        Shift       ||   Z   ||   X   ||   C   ||   V   ||   B   ||   N   ||   M   ||       ||       ||       ||          Shift            |
|                    ||       ||       ||       ||       ||       ||       ||       ||   ,   ||   •   ||   /   ||                           |
 '------------------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-------------------------'
 .---------.  .---------.  .--------.  .-------------------------------------------------.  .---------.  .---------.  .--------.  .--------.
|           ||           ||          ||                                                   ||           ||           ||          ||          |
|           ||           ||          ||                                                   ||           ||           ||          ||          |
|           ||           ||          ||                                                   ||           ||           ||          ||          |
 '---------'  '---------'  '--------'  '-------------------------------------------------'  '---------'  '---------'  '--------'  '--------'
```

#### 75%

Un format assez proche du TKL (80%), mais avec moins d'espace perdu sur la ligne en haut et quelques touches en moins.

```goat
 .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.        .-----.  .-----.  .-----.
|       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       |      |       ||       ||       |
|  Esc  ||  F1   ||  F2   ||  F3   ||  F4   ||  F5   ||  F6   ||  F7   ||  F8   ||  F9   ||  F10  ||  F11  ||  F12  |      |       ||       ||       |
|       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       |      |       ||       ||       |
 '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'        '-----'  '-----'  '-----'
 .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .--------------------.  .-----.
|       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||                      ||       |
|   ~   ||   1   ||   2   ||   3   ||   4   ||   5   ||   6   ||   7   ||   8   ||   9   ||   0   ||   -   ||   +   ||         <----        ||  |<-- |
|       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||                      ||       |
 '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '--------------------'  '-----'
 .-----------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .--------------.  .-----.
|     |<--    ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   {   ||   }   ||       |        ||  ---  |
|             ||   Q   ||   W   ||   E   ||   R   ||   T   ||   Y   ||   U   ||   I   ||   O   ||   P   ||       ||       ||                ||   ^   |
|     -->|    ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   [   ||   ]   ||       \        ||   |   |
 '-----------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '--------------'  '-----'
 .--------------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .--------------------.  .-----.
|                ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   :   ||   "   ||             |        ||   |   |
|   CAPS LOCK    ||   A   ||   S   ||   D   ||   F   ||   G   ||   H   ||   J   ||   K   ||   L   ||       ||       ||        <----+        ||   v   |
|                ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   ;   ||   '   ||                      ||  ---  |
 '--------------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '--------------------'  '-----'
 .------------------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .----------------.  .-----.  .-----.
|                    ||       ||       ||       ||       ||       ||       ||       ||   <   ||   >   ||   ?   ||                  ||       ||       |
|        Shift       ||   Z   ||   X   ||   C   ||   V   ||   B   ||   N   ||   M   ||       ||       ||       ||      Shift       ||   ^   ||  -->| |
|                    ||       ||       ||       ||       ||       ||       ||       ||   ,   ||   •   ||   /   ||                  ||       ||       |
 '------------------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '----------------'  '-----'  '-----'
 .---------.  .---------.  .--------.  .-------------------------------------------------.  .-------.  .-------.  .------.  .-----.  .-----.  .-----.
|           ||           ||          ||                                                   ||         ||         ||        ||       ||       ||       |
|           ||           ||          ||                                                   ||         ||         ||        ||   <   ||   v   ||   >   |
|           ||           ||          ||                                                   ||         ||         ||        ||       ||       ||       |
 '---------'  '---------'  '--------'  '-------------------------------------------------'  '-------'  '-------'  '------'  '-----'  '-----'  '-----'
```

#### 68%

Comme le 75%, mais qui a vraiment besoin des touches fonctions ? 😄

```goat
 .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .--------------------.  .-----.
|       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||                      ||       |
|  Esc  ||   1   ||   2   ||   3   ||   4   ||   5   ||   6   ||   7   ||   8   ||   9   ||   0   ||   -   ||   +   ||         <----        ||  |<-- |
|       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||                      ||       |
 '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '--------------------'  '-----'
 .-----------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .--------------.  .-----.
|     |<--    ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   {   ||   }   ||       |        ||  ---  |
|             ||   Q   ||   W   ||   E   ||   R   ||   T   ||   Y   ||   U   ||   I   ||   O   ||   P   ||       ||       ||                ||   ^   |
|     -->|    ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   [   ||   ]   ||       \        ||   |   |
 '-----------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '--------------'  '-----'
 .--------------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .--------------------.  .-----.
|                ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   :   ||   "   ||             |        ||   |   |
|   CAPS LOCK    ||   A   ||   S   ||   D   ||   F   ||   G   ||   H   ||   J   ||   K   ||   L   ||       ||       ||        <----+        ||   v   |
|                ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   ;   ||   '   ||                      ||  ---  |
 '--------------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '--------------------'  '-----'
 .------------------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .----------------.  .-----.  .-----.
|                    ||       ||       ||       ||       ||       ||       ||       ||   <   ||   >   ||   ?   ||                  ||       ||       |
|        Shift       ||   Z   ||   X   ||   C   ||   V   ||   B   ||   N   ||   M   ||       ||       ||       ||      Shift       ||   ^   ||  -->| |
|                    ||       ||       ||       ||       ||       ||       ||       ||   ,   ||   •   ||   /   ||                  ||       ||       |
 '------------------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '----------------'  '-----'  '-----'
 .---------.  .---------.  .--------.  .-------------------------------------------------.  .-------.  .-------.  .------.  .-----.  .-----.  .-----.
|           ||           ||          ||                                                   ||         ||         ||        ||       ||       ||       |
|           ||           ||          ||                                                   ||         ||         ||        ||   <   ||   v   ||   >   |
|           ||           ||          ||                                                   ||         ||         ||        ||       ||       ||       |
 '---------'  '---------'  '--------'  '-------------------------------------------------'  '-------'  '-------'  '------'  '-----'  '-----'  '-----'
```

#### 40%

Bon celui là est extrème, c'est juste pour le plaisir (et vous montrer qu'il en existe encore bien d'autres)

```goat
 .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .----------------.
|       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||                  |
|  Esc  ||   Q   ||   W   ||   E   ||   R   ||   T   ||   Y   ||   U   ||   I   ||   O   ||   P   ||       <----      |
|       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||       ||                  |
 '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '----------------'
 .-----------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .----------.
|     |<--    ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   :   ||            |
|             ||   A   ||   S   ||   D   ||   F   ||   G   ||   H   ||   J   ||   K   ||   L   ||       ||            |
|     -->|    ||       ||       ||       ||       ||       ||       ||       ||       ||       ||   ;   ||            |
 '-----------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '----------'
 .----------------.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.  .-----.
|                  ||       ||       ||       ||       ||       ||       ||       ||   <   ||   >   ||   ?   ||       |
|   Shift          ||   Z   ||   X   ||   C   ||   V   ||   B   ||   N   ||   M   ||       ||       ||       ||       |
|                  ||       ||       ||       ||       ||       ||       ||       ||   ,   ||   •   ||   /   ||       |
 '----------------'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'  '-----'
 .---------.  .---------.  .--------.  .------------------.  .------------------.  .--------.  .---------.  .--------.
|           ||           ||          ||                    ||                    ||          ||           ||          |
|           ||           ||          ||                    ||                    ||          ||           ||          |
|           ||           ||          ||                    ||                    ||          ||           ||          |
 '---------'  '---------'  '--------'  '------------------'  '------------------'  '--------'  '---------'  '--------'
```