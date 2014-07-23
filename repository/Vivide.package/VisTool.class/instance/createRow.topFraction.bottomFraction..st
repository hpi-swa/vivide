ui building
createRow: somePages topFraction: top bottomFraction: bottom

	| columnPanel |
	columnPanel := BorderedMorph new
		color: Color transparent;
		borderWidth: 0;
		changeProportionalLayout;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutFrame: (LayoutFrame fractions: (0@top corner: 1@bottom) offsets: (0@2 corner: 0@ -2)).
	
	somePages withIndexDo: [:page :idx | page
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutFrame: (LayoutFrame
			fractions: (((1.0 / somePages size )*(idx-1)) @0 corner: ((1.0 / somePages size)*(idx))@1)
			offsets: (2@0 corner: -2@0))].
		
	columnPanel addAllMorphs: somePages.
	columnPanel addPaneSplitters.
	
	^ columnPanel