animations
flyOutOn: aMorph with: aForm
	"Shows the form in the visible center of the given morph. Then zooms the form in while fading it out."
	
	| vb |
	vb := aMorph visibleBounds.
	vb hasPositiveExtent ifFalse: [^ self "not visible"].
	
	(self new image: aForm)
		center: vb center;
		openInWorld;
		flyOut.