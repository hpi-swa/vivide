initialization
setFramesForLabelArea
	"an aid to converting old instances, but then I found  
	convertAlignment (jesse welton's note)"
	| frame |
	labelArea ifNil: [^ self].	
	labelArea
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		layoutInset: 0.
	label hResizing: #spaceFill.
	labelArea
		ifNotNil: [frame := LayoutFrame new.
			frame leftFraction: 0;
				topFraction: 0;
				rightFraction: 1;
				bottomFraction: 0;
				topOffset: self labelHeight negated - 3 "???".
			labelArea layoutFrame: frame]