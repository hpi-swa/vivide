accessing
tapes

	^ {leftFixedTape.rightFixedTape}, (tapeContainer submorphs collect: [:scrollArea |
		scrollArea widget])