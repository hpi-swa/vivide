memento - data
acceptChanges

	self ensureTag ifFalse: [^ self].

	self ui tagnameEdit acceptChanges.
	self ui descriptionEdit acceptChanges.	
	
	self updateIcon: (self ui iconBtn icon ~= ViIconService blankIcon
		ifTrue: [self ui iconBtn icon]
		ifFalse: []).
		
	self clear.