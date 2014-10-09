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
	
	(self target "pane" view isKindOf: ViMultiPaneWidget) ifTrue: [
		self target "pane "view panes do: [:p |
			UiPlatform current canvas: aCanvas
				frameRoundRect: (p bounds insetBy: 15)
				radius: 3 width: 2
				color: (Color white alpha: 0.5)].
		self target "pane" view inputPanes do: [:p |
			'<font color="#FFFFFF">IN</font>' asHtmlText asMorph
				center: p center;
				drawOn: aCanvas].
		self target "pane" view outputPanes do: [:p |
			'<font color="#FFFFFF">OUT</font>' asHtmlText asMorph
				center: p center + (0@15);
				drawOn: aCanvas]
		]  
	].

	newOutputPane ifNotNil: [:morph |
		aCanvas
			frameAndFillRectangle: morph bounds
			fillColor: (self fanOutColor darker alpha: 0.3)
			borderWidth: 2
			borderColor: self fanOutColor darker].