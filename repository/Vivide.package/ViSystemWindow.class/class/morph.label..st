instance creation
morph: aMorph label: aString
	"Like Morph>>#openInWindowLabeled:inWorld:."
	
	| window extent |

	window := (self labelled: aString) model: nil.
	window 
		" guess at initial extent"
		bounds: (RealEstateAgent
			initialFrameFor: window
			initialExtent: aMorph fullBounds extent
			world: ActiveWorld);
		addMorph: aMorph frame: (0@0 extent: 1@1);
		updatePaneColors.
	" calculate extent after adding in case any size related attributes were changed.  Use
	fullBounds in order to trigger re-layout of layout morphs"
	extent := aMorph fullBounds extent + 
			(window borderWidth@window labelHeight) + window borderWidth.
	window extent: extent.
	ActiveWorld addMorph: window.
	window activate.
	ActiveWorld startSteppingSubmorphsOf: window.
	
	^window
