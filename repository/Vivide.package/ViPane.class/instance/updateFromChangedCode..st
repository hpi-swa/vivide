updating
updateFromChangedCode: evt
	"If there was a change in view code, update my view."
	
	(evt itemClass includesBehavior: self view class)
		ifFalse: [^ self].
		
	evt itemSelector = #setUp:
		ifTrue: [^ self triggerUpdateView].
		
	evt itemSelector = #process:
		ifTrue: [^ self triggerUpdateResults].
		
	"Re-create the whole view."
	self view: nil.
	self triggerUpdateView.