as yet unclassified
drawOverlayInHaloOn: aCanvas

	| offset |
	offset := 15.

	self panes withIndexDo: [:pane :index |
		aCanvas
			frameAndFillRoundRect: (pane bounds insetBy: (
				(15 + (self panes size-index*offset)) @
				(15 + (index-1*offset)) corner:
				(15 + (index-1*offset)) @
				(15 + (self panes size-index*offset))
				
			
			))
			radius: 4
			fillStyle: (Color white alpha: 0.5)
			borderWidth: 2
			borderColor: (Color gray: 0.3).
			
		(ViLabelService doObject: pane currentQuery) asString asMorph
			color: (Color white alpha: 0.5);
			topLeft: self topLeft
				+ (offset asPoint * (1 @ 2))
				+ (2 @ 0)
				+ ((index-1*offset) asPoint * (1 @ -1));
			drawOn: aCanvas
			].