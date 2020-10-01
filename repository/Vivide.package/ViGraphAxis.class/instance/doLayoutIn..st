as yet unclassified
doLayoutIn: layoutBounds
	"Since we have no layout policy, make sure to compute the fullBounds right manually. Maybe we could also override #submorphBoundsForShrinkWrap, but since we have no submorphs, #adjustLayoutBounds is never called..."
	
	"Copied from #MenuItemMorph."
	
	self hResizing = #shrinkWrap
		ifTrue: [self width: self minWidth].
	self vResizing = #shrinkWrap
		ifTrue: [self height: self minHeight].

	super doLayoutIn: layoutBounds.