![vivide-logo](images/logo.png)

A programming environment and framework that supports *interactive*, *data-driven*, *scriptable* construction of graphical tools with low effort. It is implemented in Squeak/Smalltalk.

##How to Install [![Build Status](https://secure.travis-ci.org/hpi-swa/vivide.png?branch=master)](http://travis-ci.org/hpi-swa/vivide)

1. Get [Squeak 4.6 or later](http://www.squeak.org) with a recent [CogVM](http://www.mirandabanda.org/files/Cog/VM/) for your operating system.
2. If not already integrated, load [Metacello](https://github.com/dalehenrich/metacello-work). Learn how it [works](https://github.com/dalehenrich/metacello-work/blob/master/docs/MetacelloUserGuide.md).
3. Finally, load VIVIDE into your Squeak image:

```Smalltalk
Metacello new
  baseline: 'Vivide';
  repository: 'github://hpi-swa/vivide/repository';
  load.
```

Then, create and enter a new *animated Morphic project*. There, your can open Vivide with ```VivideLight open```.

See [FAQ](https://github.com/hpi-swa/vivide/wiki/FAQ) for further information.

##Latest Stable Build

You can download a Squeak/Smalltalk image with the latest working version of Vivide pre-installed from [here](http://www.lively-kernel.org/babelsberg/vivide). Additionally, you may want to get the latest [CogVM](http://www.mirandabanda.org/files/Cog/VM/) and [sources](http://ftp.squeak.org/sources_files/) file.

##Applications

* [CCMail](https://github.com/calmez/CCMail) - a mail client by [Conrad Calmez](https://github.com/calmez)

##Videos

Here is a screencast about integrating information from Stack Overflow into the Squeak/Smalltalk programming environment using Vivide. I included it in my talk at the [Onward'14](http://2014.splashcon.org/track/onward2014-papers) conference:

[![VIMEO](https://i.vimeocdn.com/video/503216190_320.jpg)](https://vimeo.com/116751102)

Here is a screencast about creating tools for context-oriented programming, which I showed at the [COP'14](http://prg.is.titech.ac.jp/events/cop14) workshop: 

[![VIMEO](http://i.vimeocdn.com/video/484103433_320.jpg)](https://www.vimeo.com/102158303)

Here is a recent screencast about how to create a browser for GitHub issues, which I showed at the [FutureSOC'14](https://www.hpi.uni-potsdam.de/research_school/aktivitaeten/future_trends_in_soc/futuresoc_2014.html) symposium:

[![VIMEO](http://i.vimeocdn.com/video/480727139_320.jpg)](https://www.vimeo.com/99525933)

Here is an older screencast about how to create a code browser and modify its appearance to reveal more or different information:

[![VIMEO](http://i.vimeocdn.com/video/434147754_320.jpg)](https://www.vimeo.com/63757592)

##Acknowledgements

We are very thankful for any feedback in the form of bug reports, discussions, or even custom applications. Vivide is mainly developed by [Marcel Taeumel](https://github.com/marceltaeumel) in context of his PhD thesis. To date, the following people also contributed to this project:

Pavel Belskiy,
Lars Blumberg,
Thomas Bünger,
[Conrad Calmez](https://github.com/calmez),
Falco Duersch,
[Tim Felgentreff](https://github.com/timfel),
Maxi Fischer,
Dustin Glaeser,
Anne Gropler,
Eva-Maria Herbst,
[Hubert Hesse](https://github.com/hubx),
[Robert Hirschfeld](https://github.com/roberthirschfeld),
Johannes Koch,
Simon Krogmann,
Sebastian Kruse,
[Jens Lincke](https://github.com/JensLincke),
Thorben Lindhauer,
Roland Lux,
Tobias Mohr,
Christoph Neijenhuis,
[Fabio Niephaus](https://github.com/fniephaus),
Phillipp Otto,
Philipp Otto,
[Tobias Pape](https://github.com/krono),
Tobias Pfeiffer,
Stephanie Platz,
Jan Rehwaldt,
[Patrick Rein](https://github.com/codeZeilen),
Jakob Reschke,
Oliver Richter,
Marko Röder,
[Robin Schreiber](https://github.com/merryman),
Leonhard Schweizer,
Benjamin Siegmund,
Sebastian Stamm,
Tobias Stengel,
Karsten Tausche,
Lauritz Thamsen,
Juliane Waack,
Florian Wagner,
Daniel Werner,
Sebastian Woinar


