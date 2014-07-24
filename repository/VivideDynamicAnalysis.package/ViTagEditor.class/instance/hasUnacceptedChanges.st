memento - data
hasUnacceptedChanges

	^ (((tag isNil or: [self ui iconBtn icon ~= tag icon]) and: [self ui iconBtn icon ~= ViIconService blankIcon])
		or: [self ui descriptionEdit hasUnacceptedChanges])
		or: [self ui tagnameEdit hasUnacceptedChanges]