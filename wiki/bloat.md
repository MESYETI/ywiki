# Bloat
Bloatware is something quite a lot of people are aware of now, but they have a definition
that is different to mine. Most people will view bloatware as extra apps or software
preinstalled on their devices that they didn't want. This is common on phones and OEM
Windows.

A smaller portion of people, mainly programmers, will also recognise bloat as software
using pointlessly large and inefficient dependencies, such as Electron. This is a definition
I take much further than the typical person. I call it "bloat tolerance".

For example, I don't think a text editor should use a graphical user interface. They
work completely fine in a terminal while using significantly less memory and with less
CPU usage. I just like doing as much as possible in the terminal

## What's the big deal??
That's a question you might be asking. Why is bloat this insignificant such an issue
for me? It surely doesn't matter if hardware keeps getting better.

The key part of this question is "hardware keeps getting better". This is where consumerism
and planned obsolescence comes in. Companies that make your phones and your computers
don't want a computing device to be a purchase that happens once. After all, they make
a lot more money if you repeatedly buy one every 3 years. You are led to believe that
your computer is getting slower. You see your computing device appear slower and believe
it's time to get rid of it and buy a new one.

This slowdown is not a problem with the hardware. Software is becoming more and more
bloated, making it slower on "older" devices. Computers are getting CPUs that
are more and more powerful, when they don't even need to. There is so much lightweight
software out there that doesn't aim to waste your resources.

This constant cycle of giving up on computers and buying new ones is harmful. E-waste
is particularly bad because of the dangerous chemicals found in computers. A lot of
e-waste ends up dumped in poor nations close to where people live. The chemicals
in these computers eventually contaminates the land, water, and air surrounding it, and
are often dismantled to retrieve certain materials.

I won't go on too much about the issue of e-waste. E-waste is mainly related to consumerism
and lack of recycling. Computers are not the only devices being dumped in poor countries.
If you want to read more about it, you can do so here:
<https://ourworld.unu.edu/en/toxic-e-waste-dumped-in-poor-nations-says-united-nations>

But think about what computers would be like if they were a one time purchase. CPUs
today are significantly more powerful than they were 20 years ago, while not being
that much more power hungry. If performance was the same as 20 years ago, then
modern CPUs would have crazy effiency. Less power usage is always something good to
aim for.

Another thing is, in my experience, bloated software has a lot more random bugs and
glitches than unbloated software does. When I used to use Spotify, I would constantly
notice bugs and glitches, while this never happens with [cmus](https://cmus.github.io/)
and [VLC](https://www.videolan.org/). It's a nice benefit to using less bloated software.

## How can you use a less bloated computer?
Using a less bloated computer is possible for everyone. Some people may even be willing
to make the sacrifices required for a completely unbloated system. But, most others
(including me) will have to use as little bloat as they can. I still use YouTube. I still
use Steam. It's a terrible thing that millions of people are forced to use bloated software,
which also forces them into the cycle of throwing away functional computers and buying
new ones.

The main part of creating a less bloated system is finding less bloated alternatives
to what you already use. You can find the most performant alternatives by using a
slow system. I have a netbook from 2007 (the fujitsu siemens amilo li 2727) and it works
great for this. The next section is a list of unbloated alternatives that I recommend:

## Recommended software
Note: I wrote this list with Linux and other unix-likes and unixes in mind. Not all
of these pieces of software will work on Windows.

I would recommend that Windows users intending to create an unbloated computer system
should install a Linux distribution such as Linux Mint. It is bloated but it will help
to prepare for eventually creating an unbloated system.

#### Window manager
Tiling (X11)
- [i3](https://i3wm.org/)

Tiling (Wayland)
- [sway](https://swaywm.org/)

Floating (X11)
- [openbox](https://openbox.org/)

Floating (Wayland)
- [wayfire](https://wayfire.org/) (The cube gimmick can be easily disabled)
- [hikari](http://hikari.acmelabs.space/)

#### Desktop environment
Desktop environments are heavier than window managers but there are some lightweight
ones.

- [XFCE](https://www.xfce.org/) (Uses GTK)
- [CDE (Common Desktop Environment)](https://en.wikipedia.org/wiki/Common_Desktop_Environment)
- [NsCDE](https://github.com/NsCDE/NsCDE) (Modern CDE alternative)
- [LXDE](https://en.wikipedia.org/wiki/LXDE) (Uses GTK)

#### Text editor
- [micro](https://micro-editor.github.io/) (very easy to use)
- [vim](https://www.vim.org/) (difficult to learn)

#### Image viewers
- [tinview](https://github.com/lordoftrident/tinview)
- [feh](https://feh.finalrewind.org/)

#### Music player
- [cmus](https://cmus.github.io/)

#### YouTube downloaders
- [yt-dlp](https://github.com/yt-dlp/yt-dlp)

#### Screenshot programs
- [flameshot](https://flameshot.org/)
- [grim](https://sr.ht/~emersion/grim/)

#### Screen recorders
- [GPU Screen Recorder](https://git.dec05eba.com/gpu-screen-recorder/about/) (Insanely high performance)

## A large recommendation
I would recommend that anyone interested in reducing bloat to check out the
[uxn](https://100r.co/site/uxn.html) virtual machine. Uxn is a 16-bit virtual machine
with a large collection of GUI software to use. I would recommend using these programs
with the [uxn11](https://git.sr.ht/~rabbits/uxn11) implementation of the virtual
machine, as it uses much less memory than the more portable uxnemu.
