"Get the Metacello configuration (for Squeak users)"
Installer gemsource
    project: 'metacello';
    addPackage: 'ConfigurationOfMetacello';
    install.

"Bootstrap Metacello Preview, using mcz files (#'previewBootstrap' symbolic version"
((Smalltalk at: #ConfigurationOfMetacello) project 
  version: #'previewBootstrap') load.

"Load the Preview version of Metacello from GitHub"
(Smalltalk at: #Metacello) new
  configuration: 'MetacelloPreview';
  version: #stable;
  repository: 'github://dalehenrich/metacello-work:configuration';
  load.

"Now load latest version of Metacello"
(Smalltalk at: #Metacello) new
  baseline: 'Metacello';
  repository: 'github://dalehenrich/metacello-work:master/repository';
  get.
(Smalltalk at: #Metacello) new
  baseline: 'Metacello';
  repository: 'github://dalehenrich/metacello-work:master/repository';
  load.

"If e.g. your tests change code in the image dynamically, the image will require you to set 
author initials which might fail these tests. So we set some dummy initials here to avoid this."
(Smalltalk at: #MetacelloPlatform) current authorName: 'Vivide'.

"Load Vivide into image"
Metacello new
  baseline: 'Vivide';
  repository: 'github://hpi-swa/vivide/repository';
  load.

"Start Vivide delayed"
WorldState addDeferredUIMessage: [ 
  
  Preferences enable: #mouseOverForKeyboardFocus.
  Preferences disable: #fastDragWindowForMorphic.
  Preferences disable: #showSharedFlaps.
  Morph indicateKeyboardFocus: false.
  Model windowActiveOnFirstClick: true.
  Project current showWorldMainDockingBar: false.
 
  Preferences enable: #menuAppearance3d.
  Morph useSoftDropShadow: true.
  
  VivideLight useVivideDebugger: false.
  VivideLight prepareSqueak.
  VivideLight open.
  
  "Save image and quit"
  SmalltalkImage current snapshot: true andQuit: true].

AnimMorphicProject new enter: true.
!
