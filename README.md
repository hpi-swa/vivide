#The VIVIDE Programming Environment

A programming environment and framework that supports *data-driven*, *scriptable* construction of graphical tools with low effort. It is implemented in Squeak/Smalltalk.

##Videos

Here is a screencast about integrating information from Stack Overflow into the Squeak/Smalltalk programming environment using Vivide. I included it in my talk at the [Onward'14](http://2014.splashcon.org/track/onward2014-papers) conference:

[![VIMEO](https://i.vimeocdn.com/video/503216190_320.jpg)](https://vimeo.com/116751102)

Here is a screencast about creating tools for context-oriented programming, which I showed at the [COP'14](http://prg.is.titech.ac.jp/events/cop14) workshop: 

[![VIMEO](http://i.vimeocdn.com/video/484103433_320.jpg)](https://www.vimeo.com/102158303)

Here is a recent screencast about how to create a browser for GitHub issues, which I showed at the [FutureSOC'14](https://www.hpi.uni-potsdam.de/research_school/aktivitaeten/future_trends_in_soc/futuresoc_2014.html) symposium:

[![VIMEO](http://i.vimeocdn.com/video/480727139_320.jpg)](https://www.vimeo.com/99525933)

Here is an older screencast about how to create a code browser and modify its appearance to reveal more or different information:

[![VIMEO](http://i.vimeocdn.com/video/434147754_320.jpg)](https://www.vimeo.com/63757592)

##How to Install

1. Get [Squeak 4.4 or later](http://www.squeak.org) with a recent [CogVM](http://www.mirandabanda.org/files/Cog/VM/) for your operating system.
2. If not already integrated, load [Metacello](https://github.com/dalehenrich/metacello-work). Learn how it [works](https://github.com/dalehenrich/metacello-work/blob/master/docs/MetacelloUserGuide.md).
3. Finally, load VIVIDE into your Squeak image:

```Smalltalk
Metacello new
  baseline: 'Vivide';
  repository: 'github://hpi-swa/vivide/repository';
  load.
```
**Close all transcript windows before loading!**

If you want to update your image with the current code, do this:

```Smalltalk
Metacello new
  baseline: 'Vivide';
  repository: 'github://hpi-swa/vivide/repository';
  get;
  load.
```
