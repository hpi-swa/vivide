memento - cleanup
tryQuickClear

	self hasUnacceptedChanges ifTrue: [
		
		self removeAlarm: #resetClearCounter.
		self addAlarm: #resetClearCounter after: 500.
		
		(self hasProperty: #clearCounter)
			ifFalse: [self setProperty: #clearCounter toValue: 1]
			ifTrue: [self setProperty: #clearCounter toValue: (self valueOfProperty: #clearCounter) + 1].  
		
		(self valueOfProperty: #clearCounter) = 1 ifTrue: [
			self warningSent: 'Hit twice quickly to discard all changes.'.
			^ self].
		
		self informationSent: 'All changes discarded.'.
		self resetClearCounter].
	
	self clear.