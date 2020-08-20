activation and focus
mouseDown: evt

	evt hand 
		waitForClicksOrDrag: self 
		event: evt 
		selectors: { nil. nil. nil. #startDrag: }
		threshold: HandMorph dragThreshold.