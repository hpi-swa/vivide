updating
updateFromChangedCode: evt
	"If there was a change in view code, update my view."
	
	((self view class includesBehavior: evt itemClass)
		or: [(self currentQuery valueOfProperty: #view ifAbsent: [ProtoObject]) includesBehavior: evt itemClass])
			ifFalse: [^ self].
		
	evt itemSelector = #setUp:
		ifTrue: [^ self triggerUpdateView].
		
	evt itemSelector = #process:
		ifTrue: [^ self triggerUpdateResults].
		
	"Re-create the whole view."
	self view: nil.
	self triggerUpdateView.