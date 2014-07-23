initialization
initialize

	super initialize.
		
	self
		color: (Color gray: 0.6);
		layoutInset: (3@3 corner: 0@0);
		acceptedDropAreas: #(full).
		
	text := '<font color="#888888">Open objects here.</font>' asHtmlText asMorph.