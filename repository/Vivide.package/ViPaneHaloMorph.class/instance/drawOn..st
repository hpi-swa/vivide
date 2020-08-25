drawing
drawOn: aCanvas

	0 to: 5 do: [:offset |
		aCanvas
			frameRectangle: (self bounds outsetBy: 15 - offset)
			width: 15 - offset
			color: self color].
					
	self target ifNotNil: [
	self paneInHandles do: [:handle | | pane |
		pane := handle valueOfProperty: #paneIn.
		(self target hasOwner: pane) ifFalse: [
			aCanvas
				frameAndFillRectangle: pane bounds
				fillColor: (self fanInColor alpha: 0.3)
				borderWidth: 2
				borderColor: self fanInColor]].

	self paneOutHandles do: [:handle | | pane |
		pane := handle valueOfProperty: #paneOut. 
		(self target hasOwner: pane) ifFalse: [
			aCanvas
				frameAndFillRectangle: pane bounds
				fillColor: (self fanOutColor alpha: 0.3)
				borderWidth: 2
				borderColor: self fanOutColor]]].

	newOutputPane ifNotNil: [:morph |
		aCanvas
			frameAndFillRectangle: morph bounds
			fillColor: (self fanOutColor darker alpha: 0.3)
			borderWidth: 2
			borderColor: self fanOutColor darker].