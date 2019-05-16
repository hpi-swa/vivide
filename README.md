![vivide-logo](images/logo.png)

A programming environment and framework that supports *interactive*, *data-driven*, *scriptable* construction of graphical tools with low effort. It is implemented in Squeak/Smalltalk. [![Join the chat at https://gitter.im/hpi-swa/vivide](https://badges.gitter.im/hpi-swa/vivide.svg)](https://gitter.im/hpi-swa/vivide?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## How to Install [![Build Status](https://secure.travis-ci.org/hpi-swa/vivide.png?branch=master)](http://travis-ci.org/hpi-swa/vivide)

1. Get [Squeak 5.1 or later](http://www.squeak.org) with a recent [OpenSmalltalkVM](https://github.com/OpenSmalltalk/opensmalltalk-vm) for your operating system.
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

## Latest Stable Build [![Try Now](http://img.shields.io/badge/try-now-green.svg)](https://bertfreudenberg.github.io/SqueakJS/run#url=https://www.hpi.uni-potsdam.de/hirschfeld/artefacts/vivide/&files=%5BVivide-Squeak-5.1.image,Vivide-Squeak-5.1.changes,SqueakV50.sources%5D&forceDownload=true)

You can download a Squeak/Smalltalk image with the latest working version of Vivide pre-installed from [here](https://www.hpi.uni-potsdam.de/hirschfeld/artefacts/vivide/). Additionally, you may want to get the latest [OpenSmalltalkVM](https://github.com/OpenSmalltalk/opensmalltalk-vm) and [sources](http://ftp.squeak.org/sources_files/) file.

## Projects and Applications

* [CCMail](https://github.com/calmez/CCMail) - a mail client by [Conrad Calmez](https://github.com/calmez)
* [Gramada](https://github.com/hpi-swa/Gramada) - interactive DSL creation by [Patrick Rein](https://github/codeZeilen)
* [Matriona](https://github.com/hpi-swa/smalltalk-nested-classes) - tools for a new module system by [Matthias Springer](https://github.com/matthias-springer) and [Fabio Niephaus](https://github.com/fniephaus)

### How to cite this work

If you did work based on (or related to) Vivide and want to write about that work, you can refer to our project as follows:

```Bibtex
@inproceedings{taeumel2014interleaving,
 author = {Taeumel, Marcel and Perscheid, Michael and Steinert, Bastian and Lincke, Jens and Hirschfeld, Robert},
 title = {Interleaving of Modification and Use in Data-driven Tool Development},
 booktitle = {Proceedings of the 2014 ACM International Symposium on New Ideas, New Paradigms, and Reflections on Programming \& Software},
 series = {Onward! 2014},
 year = {2014},
 isbn = {978-1-4503-3210-1},
 location = {Portland, Oregon, USA},
 pages = {185--200},
 numpages = {16},
 url = {http://doi.acm.org/10.1145/2661136.2661150},
 doi = {10.1145/2661136.2661150},
 acmid = {2661150},
 publisher = {ACM},
 address = {New York, NY, USA},
 keywords = {adaptation, graphical tools, reflection, scripting, tool building, vivide},
}
```

The following publication describes a different aspect of this work:

```Bibtex
@inproceedings{taeumel2012vivide,
 author = {Taeumel, Marcel and Steinert, Bastian and Hirschfeld, Robert},
 title = {The VIVIDE Programming Environment: Connecting Run-time Information with Programmers' System Knowledge},
 booktitle = {Proceedings of the ACM International Symposium on New Ideas, New Paradigms, and Reflections on Programming and Software},
 series = {Onward! 2012},
 year = {2012},
 isbn = {978-1-4503-1562-3},
 location = {Tucson, Arizona, USA},
 pages = {117--126},
 numpages = {10},
 url = {http://doi.acm.org/10.1145/2384592.2384604},
 doi = {10.1145/2384592.2384604},
 acmid = {2384604},
 publisher = {ACM},
 address = {New York, NY, USA},
 keywords = {concurrent views, dynamic analysis, navigation, program comprehension, programming environments, source code},
}
```

## Videos

Here is a screencast about exploring the file structure of a C program with treemaps:
[![VIMEO](https://i.vimeocdn.com/video/540030443_320.jpg)](https://vimeo.com/142670997)

Here is a screencast about integrating information from Stack Overflow into the Squeak/Smalltalk programming environment using Vivide. I included it in my talk at the [Onward'14](http://2014.splashcon.org/track/onward2014-papers) conference:

[![VIMEO](https://i.vimeocdn.com/video/503216190_320.jpg)](https://vimeo.com/116751102)

Here is a screencast about creating tools for context-oriented programming, which I showed at the [COP'14](http://prg.is.titech.ac.jp/events/cop14) workshop: 

[![VIMEO](http://i.vimeocdn.com/video/484103433_320.jpg)](https://www.vimeo.com/102158303)

Here is a recent screencast about how to create a browser for GitHub issues, which I showed at the [FutureSOC'14](https://www.hpi.uni-potsdam.de/research_school/aktivitaeten/future_trends_in_soc/futuresoc_2014.html) symposium:

[![VIMEO](http://i.vimeocdn.com/video/480727139_320.jpg)](https://www.vimeo.com/99525933)

Here is an older screencast about how to create a code browser and modify its appearance to reveal more or different information:

[![VIMEO](http://i.vimeocdn.com/video/434147754_320.jpg)](https://www.vimeo.com/63757592)

## Acknowledgements

We are very thankful for any feedback in the form of bug reports, discussions, or even custom applications. Vivide is designed and implemented by [Marcel Taeumel](https://github.com/marceltaeumel) in context of his PhD thesis. To date, the following people also contributed to this project:

Pavel Belskiy,
Lars Blumberg,
Thomas Bünger,
[Conrad Calmez](https://github.com/calmez),
[Jonas Chromik](https://github.com/jchromik),
Falco Duersch,
[Tim Felgentreff](https://github.com/timfel),
Maxi Fischer,
Dustin Glaeser,
Anne Gropler,
[Sebastian Hahn](https://github.com/SebSchmech), 
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
[Stefan Ramson](https://github.com/onsetsu),
Jan Rehwaldt,
[Patrick Rein](https://github.com/codeZeilen),
[Jakob Reschke](https://github.com/j4yk),
Oliver Richter,
Marko Röder,
[Robin Schreiber](https://github.com/merryman),
[Leonhard Schweizer](https://github.com/leoschweizer),
Benjamin Siegmund,
[Matthias Springer](https://github.com/matthias-springer),
Sebastian Stamm,
Tobias Stengel,
Karsten Tausche,
Lauritz Thamsen,
Juliane Waack,
Florian Wagner,
Daniel Werner,
Sebastian Woinar
