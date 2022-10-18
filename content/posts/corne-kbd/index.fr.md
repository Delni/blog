---
title: "Clavier sans fil, low profile : Corne"
date: 2022-10-16T15:20:35+02:00
author: Nicolas Delauney
cover: resources/cover.fr.png
tags:
  - claviers
  - build log
keywords:
  - claviers
  - corne
  - build log
authorTwitter: Delni_
description: Comment j'ai construit mon premier clavier mécanique.
showFullContent: false
readingTime: true
draft: false
lastmod: 2022-10-18T08:56:24.850Z
---

Je suis tombé amoureux des claviers mécaniques depuis le jour (pas si lointain) où j'ai eu la chance de poser mes doigts sur l'un d'entre eux. Mon premier clavier était un Kickstarter, assez peu cher, mais je suis rapidement passé au Keychron K2. Ces deux claviers étaient sans-fils Bluetooth, ce qui est pratique et esthétique (pas de fils partout sur le bureau), encore plus vu que j'utilise un clavier sur plusieurs ordinateurs. Les différents profils me permettent de changer la destination au besoin.

Mais alors que je suivais le lapin au fond de son terrier, l'évidence s'imposa à moi : le Graal des claviers était un clavier **split** (séparé en 2 moitiés) et **ortholinéaire** (les touches sur une grille et non pas décalées). Les petits formats me plaisent bien, et je me suis rapidement pris de passion pour le projet _Corne_. Corne, ou Helix, ou [crkbd](https://github.com/foostan/crkbd) est un clavier ortho, split, 6\*4 fait par [foostan](https://github.com/foostan).

Comme dit juste avant, je recherchais un clavier sans-fil, et quitte à faire un "petit" clavier, autant aller à fond sur le petit et faire un clavier "Low Profile".

Voici donc mon buildlog, en espérant que ça puisse en aider certains d'entre vous.

Let's go !

## 📦 Étape 0: rassembler les pièces

|  Pièce                               | Vendeur              | Quantité |
| :----------------------------------- | :------------------- | :------: |
| Comptroller Case (avec options)      | [Little Keyboard][1] |    1     |
| Pochette de transport                | [Little Keyboard][2] |    1     |
| Corne LP Kit (détail en dessous)     | [Boardsource][3]     |    1     |
|                                      |
| SMD Diodes x10                       |                      |    5     |
| Choc hotswap Sockets x10             |                      |    5     |
| Écran OLED                           |                      |    2     |
| Câble TRRS                           |                      |    1     |
| Corne LP V3 PCB                      |                      |    1     |
|                                      |
| Wrk Daily keyset                     | [Work Louder][4]     |    1     |
| Kailh Choc Brown                     | [splitkb.com][5]     |    50    |
| nice!nano                            | [splitkb.com][6]     |    2     |
| Mill Max Low Profile Sockets         | [splitkb.com][7]     |    2     |
| Wireless Controller Expansion Bundle | [splitkb.com][8]     |    1     |
| 301230 Lithium 3.7V                  | [AliExpress][9]      |    2     |

## 🛠 Étape 1: Pour bien commencer

Les PCB ont besoins d'être libérés de leur plaques de montage. N'ayez pas peur de tordre les plaques, elles sont faites pour ça.

![PCB Vierges](resources/2022-10-01%2016.27.36.jpg)

En suivant le buildlog de footsan, j'ai commencé avec les diodes SMD (_Surface Mounted Diodes_). Elles sont vraiment minuscules, et j'ai vérifié au moins 20 fois la polarité avant de commencer à souder :

![La marque noire est la barre du schéma](resources/2022-10-01%2016.29.18.jpg)

Afin de souder ces toutes petites pièces, j'ai commencé par mettre du fil de soudure sur l'un des 2 pads, puis avec une pince à épiler inversée j'ai placé la diode pour refondre la soudure et pousser la diode dedans. Une fois fait pour toutes les diodes, j'ai pu souder l'autre côté facilement.

| [![La soudure à droite uniquement][img1]][img1] | [![Toutes les diodes soudées][img2]][img2] |
| :---------------------------------------------: | :----------------------------------------: |
|         La soudure à droite uniquement          |         Toutes les diodes soudées          |

Ensuite j'ai soudé les sockets hotswap. C'est assez simple, elles rentrent facilement dans les trous prévus à cet effet dans les plaques.

| [![Hotswap socket devant les trous PCB][img3]][img3] | [![Hotswap sockets à travers la PCB][img4]][img4] |
| :--------------------------------------------------: | :-----------------------------------------------: |
|     Les sockets vont directement dans les trous      |  De l'autre côté, les fiches sont bien alignées   |

Les soudures sur les plaques PCB sont presques finies ! Je n'ai pas ajouté de LED par touche, ni _underglow_, pour préserver l'autonomie.

![PCB entièrement soudée](resources/2022-10-01%2016.29.28.jpg)

## 🔩 Étape 2: Les micros controllers

Pour ce clavier, j'ai décidé de "socket" mes microcontroller. C'est à dire, rajouter des "sockets" pour pouvoir les enlever facilement, comme pour les switchs. C'est bien plus simple pour gérer les problèmes si... vous voyez... Les choses ne se déroulent pas comme prévu. J'ai utilisé les pins fournies, un peu fines mais je n'ai pas eu de problèmes. Une fois tout ça en place, j'ai aussi rajouté le bouton de reset, et les sockets pour les écrans LCD.

![Millmax sockets et bouton de reset](resources/2022-10-16%2017.01.13.jpg)

Rien d'excitant ici, mais bien entendu je n'ai pas fait attention à la polarité de mon microcontroller, et j'ai dû déssouder les 24 fiches pour le retourner dans le bon sens. En voulant finir plus vite, j'ai perdu quelques heures. Heuresement, l'avoir "socketé" m'a permis de le faire sans risquer tout le circuit.

## ⚙️ Étape 3: Installation de ZMK

[ZMK](https://zmk.dev) est très simple à utiliser. Ils ont développé un système de build sur les Github Actions, donc je n'ai eu qu'à créer un repository, lancer leur petit CLI et j'étais prêt. Il suffit de suivre la [doc ici][10]. Chaque action donnera un firmware que je n'aurai plus qu'à copier sur le clavier. Notez que pour une mise à jour de la keymap, seul le "main" (partie de gauche) doit être mis à jour.

Pour charger le firmware sur le nice!nano, c'est bête comme chou : il suffit de double cliquer sur le bouton de reset, et le controller se comporte comme une clé USB sur l'ordinateur.

## 🧟 Étape 4: Test, est-ce que ça marche ??

J'ai monté 3 ou 4 switchs pour tester que tout allait bien. Bien sûr, à cette étape, je ne pouvais voir que si _ces_ touches marchaient, mais au moins cela m'a permis de m'assurer que le nice!nano et l'ordinateur étaient capables de discuter.

![Quelques switchs de test](resources/2022-10-16%2016.55.57.jpg)

Une fois convaincu que tout marchait comme prévu, j'ai continué et j'ai soudé les dernières places : les batteries, que j'ai monté directement sur chaque nice!nano, avec un interrupteur pour préserver la vie de la batterie quand je ne l'utilise pas. Ça ne sert à rien qu'il essaye de se connecter si c'est pour ne rien faire ensuite.

![Batterie avec interrupteur](resources/2022-10-16%2016.55.11.jpg)

## ⌨️ Étape 5: Monter les switchs et les keycaps

Quand je me suis assuré que les nice!nano répondaient correctement, la dernière étape était de monter les switchs dans les sockets, puis de mettre la switch-plate, et de tout visser ensemble... Mais, non, c'est pas ça 🤦‍♂️

Monter les switchs sur la switch-plate, **puis** enclipser le tout dans les sockets. Avoir des sockets de hotswap m'a vraiment **sauvé la vie** sur le coup puisque j'ai pu tout monter et démonter sans problème plusieurs fois.

| [![Tous les switchs sans la switch-plate][img5]][img5] | [![Les switchs avec la switch-place][img6]][img6] |
| :----------------------------------------------------: | :-----------------------------------------------: |
|              Ce que j'ai fait en premier               |              Ce que j'aurai dû faire              |

## 🎉 Étape 6: Profiter

Après toutes ces étapes, tout marchait _du premier coup_... Sauf la lettre "F". Alors que je me croyais maudit, j'ai découvert que c'était simplement une soudure qui avait cassé. Un coup de fer à souder plus tard, tout fonctionnait. J'ai essayé la keymap par défaut, mais assez rapidement je l'ai modifiée pour qu'elle me soit plus "naturelle". Ma keymap actuelle est disponible sur le [github][11] dont je parlais précédemment.

Et voilà !

![Corne KBD](resources/2022-10-01%2016.30.23.jpg)

<!-- LINKS -->

[1]: https://www.littlekeyboards.com/collections/corne-cases/products/corne-comptroller-keyboard-case
[2]: https://www.littlekeyboards.com/collections/carry-cases/products/corne-carry-case
[3]: https://boardsource.xyz/store/5f2efc462902de7151495057
[4]: https://worklouder.cc/shop/wrk-daily/
[5]: https://splitkb.com/products/kailh-low-profile-choc-switches?variant=31226161627213
[6]: https://splitkb.com/products/nice-nano?variant=39408154116173
[7]: https://splitkb.com/products/mill-max-low-profile-sockets?variant=31945995845709
[8]: https://splitkb.com/products/wireless-controller-expansion-bundle?variant=42344261288195
[9]: https://aliexpress.com/item/32732458079.html
[10]: https://zmk.dev/docs/user-setup
[11]: https://github.com/Delni/zmk-config

<!-- IMAGES -->

[img1]: resources/2022-10-01%2016.29.09.jpg
[img2]: resources/2022-10-01%2016.29.45.jpg
[img3]: resources/2022-10-01%2016.29.58.jpg
[img4]: resources/2022-10-01%2016.29.41.jpg
[img5]: resources/2022-10-16%2016.56.32.jpg
[img6]: resources/2022-10-16%2016.56.37.jpg
