initialization
initializeResizeHandle

	| handle |
	toggleBtn := UiToolButton new
		buttonStyle: #iconOnly;
		icon: (UiSilkIcons bulletFeedIcon clippedToSize: 10@10);
		color: (Color gray: 0.85);
		balloonText: 'Toggle update code panels.';
		checkable: true;
		layoutInset: (0 @ -2 corner: 0 @ -1).

	handle := ViResizeHandleForEdit new
		orientation: #horizontal;
		target: edit.
		
	resizeHandle := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #rigid;
		height: 10.        

	resizeHandle addAllMorphs: {handle.toggleBtn}.
	self connect: toggleBtn signal: #toggled: toSelector: #toggleCodeVisible:.