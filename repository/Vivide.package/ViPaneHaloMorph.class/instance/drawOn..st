as yet unclassified
drawOn: aCanvas

	super drawOn: aCanvas.
	
	self target ifNotNil: [
	self paneInHandles do: [:handle | | pane |
		pane := handle valueOfProperty: #paneIn. 
		aCanvas
			frameAndFillRectangle: pane bounds
			fillColor: (self fanInColor alpha: 0.3)
			borderWidth: 2
			borderColor: self fanInColor;
			line: handle center to: handle center - (20@0)
			width: 2 color: self fanInColor;
			line: handle center - (20@0) to: (handle center x - 20) @ pane center y
			width: 2 color: self fanInColor;
			line: (handle center x - 20) @ pane center y to: pane center
			width: 2 color: self fanInColor].

	self paneOutHandles do: [:handle | | pane |
		pane := handle valueOfProperty: #paneOut. 
		aCanvas
			frameAndFillRectangle: pane bounds
			fillColor: (self fanOutColor alpha: 0.3)
			borderWidth: 2
			borderColor: self fanOutColor;
			line: handle center to: handle center + (20@0)
			width: 2 color: self fanOutColor;
			line: handle center + (20@0) to: (handle center x + 20) @ pane center y
			width: 2 color: self fanOutColor;
			line: (handle center x + 20) @ pane center y to: pane center
			width: 2 color: self fanOutColor].
	].

	newOutputPane ifNotNil: [:morph |
		aCanvas
			frameAndFillRectangle: morph bounds
			fillColor: (self fanOutColor darker alpha: 0.3)
			borderWidth: 2
			borderColor: self fanOutColor darker].