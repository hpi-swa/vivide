as yet unclassified
openInWindowAsIs

	| originalColor window extent |
	self flag: #refactor. "mt: Merge into ViEditor."
	"Hide header."
	self eventHandler
		disconnectSignal: #focusReceivedInSubmorph: from: self;
		disconnectSignal: #focusLostInSubmorph: from: self.
	"self header hideFull."
	self header delete.
	
	"Create and show window."
	originalColor := self color.
	window := (ViToolWindow labelled: self headerText) model: self.
	window 
		bounds: self bounds;
		addMorph: self frame: (0@0 extent: 1@1);
		paneColor: (Color gray: 0.85).
	
	"Fix spacing between label area and only morph."
	self layoutFrame topOffset: (18 - Preferences windowTitleFont height).
		
	extent := self fullBounds extent + 
			(window borderWidth@window labelHeight) + window borderWidth.
	window extent: extent.
	
	SystemWindow topWindow ifNotNil: [:tw |
		((tw isKindOf: ViToolWindow)
			ifFalse: [tw bounds]
			ifTrue: [tw boundsForShadow]) in: [:b |
		
		b right + window width < ActiveWorld right
			ifTrue: [window topLeft: b topRight]]].
		
	ActiveWorld addMorph: window.
	window activate.
	ActiveWorld startSteppingSubmorphsOf: window.

	"Last cosmetics."
	self color: originalColor.
	self ui panel layoutInset: 0.  
	
	"Window controls."
	self connect: self signal: #closed to: window selector: #delete.
	
	window appendHeaderButtons: {self ui addPaneBtn}.
	
	^ window