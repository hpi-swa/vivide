as yet unclassified
drawOverlayInHaloOn: aCanvas

	| offset s |
	offset := 15.

	self panes reverse withIndexDo: [:pane :index |
		aCanvas
			frameAndFillRoundRect: (pane bounds insetBy: (
				(15 + (self panes size-index*offset)) @
				(15 + (index-1*offset)) corner:
				(15 + (index-1*offset)) @
				(15 + (self panes size-index*offset))
				
			
			))
			radius: 4
			fillStyle: (Color white alpha: 0.35)
			borderWidth: 2
			borderColor: (Color gray: 0.3).
			
		s := (ViLabelService doObject: pane script) asString asMorph
			topLeft: self topLeft
				+ (offset asPoint * (1 @ self panes size))
				+ (3 @ 1)
				+ ((self panes size-index*offset) asPoint * (1@ -1));
			yourself.
		s
			color: Color black; drawOn: aCanvas;
			topLeft: s topLeft - (1@1); color: Color white; drawOn: aCanvas 
			].