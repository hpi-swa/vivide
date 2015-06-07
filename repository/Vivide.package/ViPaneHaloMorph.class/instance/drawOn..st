drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	
	self target ifNotNil: [
	self paneInHandles do: [:handle | | pane |
		pane := handle valueOfProperty: #paneIn.
		(self target hasOwner: pane) ifFalse: [
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
				width: 2 color: self fanInColor]].

	self paneOutHandles do: [:handle | | pane |
		pane := handle valueOfProperty: #paneOut. 
		(self target hasOwner: pane) ifFalse: [
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
				width: 2 color: self fanOutColor]].
	
	self target "pane" drawOverlayInHaloOn: aCanvas.
	(self target "pane" view isKindOf: ViMultiPaneWidget) ifTrue: [
		self target "pane "view drawOverlayInHaloOn: aCanvas]].

	newOutputPane ifNotNil: [:morph |
		aCanvas
			frameAndFillRectangle: morph bounds
			fillColor: (self fanOutColor darker alpha: 0.3)
			borderWidth: 2
			borderColor: self fanOutColor darker].