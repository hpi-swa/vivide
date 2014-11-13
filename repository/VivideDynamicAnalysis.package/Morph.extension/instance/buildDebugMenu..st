*VivideDynamicAnalysis-override
buildDebugMenu: aHand
	"Answer a debugging menu for the receiver.  The hand argument is seemingly historical and plays no role presently"

	| aMenu aPlayer |
	aMenu := MenuMorph new defaultTarget: self.
	aMenu addStayUpItem.
	(self hasProperty: #errorOnDraw) ifTrue:
		[aMenu add: 'start drawing again' translated action: #resumeAfterDrawError.
		aMenu addLine].
	(self hasProperty: #errorOnStep) ifTrue:
		[aMenu add: 'start stepping again' translated action: #resumeAfterStepError.
		aMenu addLine].
	
	"### Vivide START ###"
	VivideLight active ifNotNil: [
		aMenu
			addUpdating: #hasTraceEventsString action: #changeTraceEvents;
			addLine].
	"### Vivide END ###"

	aMenu add: 'inspect morph' translated action: #inspectInMorphic:.
	aMenu add: 'inspect owner chain' translated action: #inspectOwnerChain.
	Smalltalk isMorphic ifFalse:
		[aMenu add: 'inspect morph (in MVC)' translated action: #inspect].

	self isMorphicModel ifTrue:
		[aMenu add: 'inspect model' translated target: self model action: #inspect].
	(aPlayer := self player) ifNotNil:
		[aMenu add: 'inspect player' translated target: aPlayer action: #inspect].

     aMenu add: 'explore morph' translated target: self selector: #explore.

	aMenu addLine.
	aPlayer ifNotNil:
		[ aMenu add: 'viewer for Player' translated target: self player action: #beViewed.
	aMenu balloonTextForLastItem: 'Opens a viewer on my Player -- this is the same thing you get if you click on the cyan "View" halo handle' translated ].

	aMenu add: 'viewer for Morph' translated target: self action: #viewMorphDirectly.
	aMenu balloonTextForLastItem: 'Opens a Viewer on this Morph, rather than on its Player' translated.
	aMenu addLine.

	aPlayer ifNotNil:
		[aPlayer class isUniClass ifTrue: [
			aMenu add: 'browse player class' translated target: aPlayer action: #browseHierarchy]].
	aMenu add: 'browse morph class' translated target: self selector: #browseHierarchy.
	(self isMorphicModel)
		ifTrue: [aMenu
				add: 'browse model class'
				target: self model
				selector: #browseHierarchy].
	aMenu addLine.

	self addViewingItemsTo: aMenu.
	aMenu 
		add: 'make own subclass' translated action: #subclassMorph;
		add: 'save morph in file' translated  action: #saveOnFile;
		addLine;
		add: 'call #tempCommand' translated action: #tempCommand;
		add: 'define #tempCommand' translated action: #defineTempCommand;
		addLine;

		add: 'control-menu...' translated target: self selector: #invokeMetaMenu:;
		add: 'edit balloon help' translated action: #editBalloonHelpText.

	^ aMenu