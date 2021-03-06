as yet unclassified
initialize

	| innerTransform |
	super initialize.
	
	showCursorPosition := true.

	innerTransform := TransformMorph new
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			addMorph: (Morph new name: #container);
			yourself.

	self content
		changeTableLayout;
		addMorphBack: innerTransform.

	self container
		changeTableLayout;
		color: Color transparent.

	self connect: innerTransform signal: #extentChanged: to: self selector: #updateScale.
	
	innerTransform eventHandler: UiEventHandler new.
	self connect: innerTransform eventHandler signal: #mousePressed: toSelector: #addPin:.