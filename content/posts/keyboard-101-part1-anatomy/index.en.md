---
title: "Keyboard 101 - Part 1: Anatomy"
cover: /images/keyboard-101-part1-anatomy/cover.en.png
description: We are using keyboards every day, but do you really know those tiny creatures?
  Quick overview and glossary to go further.
date: 2023-01-03T09:00:00.000Z
lastmod: 2023-01-03T10:13:06.393Z
author: Nicolas Delauney
tags:
  - keyboard
keywords:
  - keyboard
readingTime: true
draft: true
series: Keyboard 101
---

Keyboards, tools of you daily life. Everbody has some (one, or more 😇) but do you know what's inside ? From _layouts_ to _profiles_, from _membrane_ keyboards to _mechanical_ ones, let's dive together in this wonderful world.

{{% note info %}}
I could have told you about [laser keyboards](https://keyboardsexpert.com/laser-projection-keyboards-guide/) or [virtual keyboards](https://en.wikipedia.org/wiki/Virtual_keyboard), but the truth is, anything that output an electric signal can be a keyboard. So, for now, let's stick to the more "classical" keyboards, with hardware, the most commonly used.
{{% /note %}}

In order to _not_ knock you out right now, let's go step by step by beginning with keyboard anatomy. There's so much to say, it's better to have multiple parts! 😅

## Pieces

Every keyboard, wether it's mechanical or membrane, are made of the following elements: 

- a **set of actuators**, the membrane or the switches depending on the type of the keyboard, they transform physical action into an electrical signal.
- **a controller**, whose role is to transform the signal into a "symbol" directly sent to the computer. (_ie_ `line 4` `column 2` == `A`)
- A **Printed Circuit Board** (PCB), which link actuators to the controller
- a **case**, which dresses up the keyboard, protects its internal components, and gives structure to the whole (we do not want a keyboard that bounce at each keystroke!)
- the **keycaps**, obviously, which protect the actuators, but more importantly give its personality to the keyboard

## How it works

A keyboard, in the first place, is a set of switches. Pushed, the power is on, released the power is off. That's how the controller (its brain) translate the position of the active switch into a letter. To do so, originally, a keyboard was a grid of verticals and horizontals wires:

>```goat
>  .-o--o--o--o--o--o--o--o--o--o--o--o--o--o-->        
>   \ \  \  \  \  \  \  \  \  \  \  \  \  \  \        
>    '-o--o--o--o--o--o--o--o--o--o--o--o--o--o-->        
>     \ \  \  \  \  \  \  \  \  \  \  \  \  \  \        
>      '-o--o--o--o--o--o--o--o--o--o--o--o--o--o-->        
>         \  \  \  \  \  \  \  \  \  \  \  \  \  \        
>          v  v  v  v  v  v  v  v  v  v  v  v  v  v        
>   
> Each key is at the intersection of a row and a column
>```

Pushing a key activate a vertical wire and an horizontal wire, to recognize the "position" of the active switch. The controller only had `rows * columns` to manage.

The downside of this operation was that when reaching a certain amount of pushed keys, the controller was no longer able to detect a new key. That what is called "[_ghosting_][5]".

Hopefully, nowadays ghosting is increasingly scarce because controller are more and more miniaturized and can manage as many inputs as necessary. We now talk of [NKRO][1] keyboards (_n keys roll over_) which, by design, cannot ghost any keystroke.

## Keyboard families

{{< figure src="./resources/pexels-josh-sorenson-1714205.jpg" caption="Photo by <a href='https://www.pexels.com/en-us/@joshsorenson/'>Josg Sorenson</a> on <a href='https://www.pexels.com/en-us/photo/clavier-magique-apple-avec-pave-numerique-sur-la-table-pres-de-la-souris-sans-fil-1714205/'>Pexels</a>">}}

There is rougly 2 major types of keyboards, that I'm talking about from the beginning now: membrane keyboards and mechanical keyboards. Historically, all keyboards were mechanical. But technological advances have made the rise of the membrane keyboards possible, relegating the former to the rank of "gamer" keyboards, even if they are worth much more than just that.

### Membrane keyboard

The most common and cheapest keyboards on the market. The principle is straightforward. A **membrane** is made of 3 layers: the contact, the middle, and the active layer. The middle layer has openings, to allow contact between the two outer layers at the hole in each key.

> ```goat
> -+-+---v---+-+-+       +-+-+---v---+-+---v---+-+-  <------ contact layer
>  |/|       |/|  |     |  |/|       |/|       |/|
>  |/|       |/|  |     |  |/|       |/|       |/|   <------ middle layer
>  |/|       |/|   '-v-'   |/|       |/|       |/|
> -+-+---^---+-+-----^-----+-+---^---+-+---^---+-+-  <------ active layer
> 
>                    ^
>                    |       a pushed key
>                     '-causes the eletrical contact
> ```

They are very silent, because the plastic membrane deforms "smoothly", however when aging the membreane can become softer, which leads to keys not being registered, or keys that won't come up after the keystroke... And if the membrane breaks somewhere, you can ditch the whole keyboard and get a new one. Easy to produce, they are mainly made of plastics. So they are fairly light, come in a wide variety of forms, they can be flexible... If you don't know what's your keyboard type, chances are you have a membrane one (because for mechanical ones, being mechanical is a selling point 😛)

| Pros            |  Cons                 |
| :-------------- | :-------------------- |
| ✅ Cheap        | ❌ not very lasting    |
| ✅ Silent       | ❌ Low Typing comfort  |
| ✅ Somehow thin |                        |

### Mechanical keyboard

Mechanical keyboard are called that way because of their actuators: the _switches_. They are actual switches, mechanically activated when the key is pushed down. A whole new and passionnating world that we will dive in another time!  
To hold thoses switches, such keyboards need a _switch plate_, a metal plate that comes to stabilize switches in place. That means that mechanical keyboard are often heavier, but much more stable, and if a switch break... Just change it!

{{< figure src="./resources/jan-loyde-cabrera-6e9b45NTrI4-unsplash.jpg" caption="Photo by <a href='https://unsplash.com/@loydieschoice?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText'>Jan Loyde Cabrera</a> on <a href='https://unsplash.com/photos/6e9b45NTrI4?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText'>Unsplash</a>">}}

Moreover, most of the switches are standardized. The leading brand, [Cherry MX][cherry-mx], set the pace of this industry, and you will often find "cherry clones", meaning that they follow the same specs. Each switch category will change the typing experience, allowing each and every one of us to find the confort that match one taste.

| Pros              | Cons                            |
| :---------------- | :------------------------------ |
| ✅ High durability | ❌ Costly (compared to membrane)|
| ✅ Reparable       | ❌ Louder (rumor has it 😜)     |
| ✅ Customizable    |                                |

---

Ok, that's a start! Now you know what you have at your fingertips. In the next part, we will discuss about the different forms keyboards can take, and believe me there's something for everyone! ⌨️

---

### Ressources
To go further, here's a list of articles that helped me writing this one

- [Anatomy of a mechanical keyboard][2] by Isabela Moreira
- [What Is a Membrane Keyboard, and Is a Mechanical One Better?][3] by Georgie Peru
- [What's NKRO][4] from Open Steno Project
- [What is keyboard ghosting ?][5] by Mech Keybs


[1]: https://en.wikipedia.org/wiki/Key_rollover#n-key_rollover
[2]: https://drop.com/talk/10016/anatomy-of-a-mechanical-keyboard
[3]: https://www.howtogeek.com/790232/what-is-a-membrane-keyboard-and-is-a-mechanical-one-better/
[4]: https://github.com/openstenoproject/plover/wiki/Supported-Hardware#whats-nkro
[5]: https://www.mechkeybs.com/learn/keyboard-ghosting/

[laser-keyboards]: https://keyboardsexpert.com/laser-projection-keyboards-guide/
[virtual-keyboards]: https://fr.wikipedia.org/wiki/Clavier_virtuel
[cherry-mx]: https://www.cherrymx.de/en