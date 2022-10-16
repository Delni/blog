---
title: Wireless, Low Profile, Corne Keyboard Buildlog
# date: 2022-10-31T23:00:00.000Z
cover: /images/corne/cover-en.png
tags:
  - keyboard
  - buildlog
keywords:
  - keyboard
  - corne
  - buildlog
description: Buildlog of my first ever custom keyboard, a wireless, low profile Corne.
readingTime: true
draft: true
hideComments: false
offTheRecord: true
lastmod: 2022-10-16T15:16:29.809Z
categories:
  - keyboard
---

I've been in love with mechanical keyboards since the day (not so long ago) I had the chance to lay my fingers on one. I started with a Kickstarter, cheap keyboard, before moving to a Keychron K2. Both of them were Bluetooth wireless, which is nice and practical, especially since I have one keyboard for multiple computer.

But as I followed the rabbit down its hole, it soon began to be clear: the Graal of the keyboard was a **split**, **ortholinear** one. I was keen on small layouts, I quickly fell in love with the Corne project. Corne, or Helix, or [crkbd](https://github.com/foostan/crkbd) is a 6\*4 split ortho keyboard made by [foostan](https://github.com/foostan).

As mentioned before, I wanted a wireless one, and while going for small let's go small all the way with a Low Profile keyboard.

Here is my buildlog, in hope that it may help some of you out there;

Let's go !

# Step 0: get the pieces

|  Piece                               | Seller               |  Quantity |
| :----------------------------------- | :------------------- | :-------: |
| Comptroller Case (with options)      | [Little Keyboard][1] |     1     |
| Carry Case                           | [Little Keyboard][2] |     1     |
| Corne LP Kit (detail below)          | [Boardsource][3]     |     1     |
|                                      |
| SMD Diodes x10                       |                      |     5     |
| Choc hotswap Sockets x10             |                      |     5     |
| OLED Screen                          |                      |     2     |
| TRRS Cable                           |                      |     1     |
| Corne LP V3 PCB                      |                      |     1     |
|                                      |
|  Wrk Daily keyset                    | [Work Louder][4]     |     1     |
| Kailh Choc Brown                     | [splitkb.com][5]     |    50     |
| nice!nano                            | [splitkb.com][6]     |     2     |
| Mill Max Low Profile Sockets         | [splitkb.com][7]     |     2     |
| Wireless Controller Expansion Bundle | [splitkb.com][8]     |     1     |
| 301230 Lithium 3.7V                  | [AliExpress][9]      |     2     |

# 🛠 Step 1: Getting started

The PCB needs to break free of the mounting points. Don't be afraid to bend the plates, they are made for it.

![](/images/corne/2022-10-01%2016.27.36.jpg)

Following foostan build log I started with the SMD Diodes. The diodes are really tiny, and I double checked the polarity before soldering :

![The black mark is the bar on the schema](/images/corne/2022-10-01%2016.29.18.jpg)

To solder these tiny tiny pieces, I put some solder on the first pad, then with a tweezer placed the diode and melt the previous solder to push it into place. Once it's done for all the diodes, I soldered the other side of each ones

| [![The solder is on the right pad only](/images/corne/2022-10-01%2016.29.09.jpg)](/images/corne/2022-10-01%2016.29.09.jpg) | [![All the diodes are soldered](/images/corne/2022-10-01%2016.29.45.jpg)](/images/corne/2022-10-01%2016.29.45.jpg) |
| :------------------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------: |
|                                            The solder is on the right pad only                                             |                                            All the diodes are soldered                                             |

Next I soldered the hotswap sockets. Really straight forward, they are held in place thanks to the holes in the plates.
[![](/images/corne/2022-10-01%2016.29.58.jpg)](/images/corne/2022-10-01%2016.29.58.jpg) | [![](/images/corne/2022-10-01%2016.29.41.jpg)](/images/corne/2022-10-01%2016.29.41.jpg)
:--: | :--:
The sockets sit nicely in the holes | On the other side, the hotswap aligned in the holes

The PCB is now almost ready! I did not put any LED to preserve my battery life

![](/images/corne/2022-10-01%2016.29.28.jpg)

# 🔩 Step 2: Soldering the micro controllers

I decided for this build to socket my microcontrollers. Easier to deal with in case... you know... Something goes afar. I used the MillMax Diode pins. Once everything was in place, I also added the reset button, and the sockets for the LCD.

![](/images/corne/2022-10-16%2017.01.13.jpg)

Nothing exciting here, but of course I didn't pay attention to the polarity of the microcontroller, and had to desolder its 24 pins to flip it on the right side. I wanted to finish quicker and paid it it hours... Hopefully, being socketed I could do it without risking the whole PCB.

# ⚙️ Step 3: Install ZMK

[ZMK](https://zmk.dev) is pretty straight forward to use. They developped a build system relying on Github Actions, so I really just created the repository, launch the little CLI provided and I was good to go, following the [docs here][10]. Every action will output a firmware that I can flash into the keyboard in a breeze. Note that for keymap update, only the main (left) is required to be updated.

To load the firmware onto the nice!nano, it is as simple as it gets: double click on the reset button, and the controller should show as a USB storage on your computer.

# 🧟 Step 4: Test, is it alive ??

I mounted 3 or 4 switches to test that everything was good. Of course, At this step, I can only see if _these_ keys works, but at least it allowed me to make sure that the nice!nano and the computer were able to discuss.

![](/images/corne/2022-10-16%2016.55.57.jpg)

When convinced that everything was good, I went on and solder the last piece: the battery that I mounted directly on each nice!nano, with a switch to preserve battery life when I'm not using it. There is no use for it to try to connect if it is to idle.

![](/images/corne/2022-10-16%2016.55.11.jpg)

# ⌨️ Step 5: Mount the switch & keycaps

Once I made sure that the nice!nano responded nicely, the last step was to mount the switches in the sockets, then mount the switch plates and screw all this together... But wait, that's not the order 🤦‍♂️

Mount the switches into the plate, **then** clip the whole thing together within the sockets. Having hotswap sockets save me a **huge** amount of time since I was able to mount and unmount it quite easily

| ![](/images/corne/2022-10-16%2016.56.32.jpg) | ![](/images/corne/2022-10-16%2016.56.37.jpg) |
| :------------------------------------------: | :------------------------------------------: |
|               What I did first               |              What should be done             |

# 🎉 Step 6: Enjoy the Corne Keyboard

After all this steps, everything worked... But the letter "F". I thought I was doomed, but luckily it was just the solder of the switch's socket that broke. A little more solder later, I was good to go. I tried the factory keymap for a while, but couldn't wrap my fingers around it. You can see my current keymap on my [github][11] (alongside actions and their results). Et voilà !

![](/images/corne/2022-10-01%2016.30.23.jpg)

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
