actions - focus
onFocusChanged: globalRect
	"Map the focused area to my whole bounds including the resize handle."
	
	self flag: #hacky. "mt: I should know nothing about my resize handle!"
	(self visibleBounds intersect: globalRect) hasPositiveExtent
		ifFalse: [self focusChanged: (self boundsInWorld outsetBy: (0@0 corner: 10@0) "resize handle")].