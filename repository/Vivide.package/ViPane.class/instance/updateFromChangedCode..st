updating
updateFromChangedCode: evt
	"If there was a change in view code, update my view."
	
	({Object. Morph. ViArtifactListView2} includes: evt itemClass)
		ifTrue: [^ self "Ignore system classes"].
	
	"Check needed for ViQueryNodeTests >> #test11Notifiactions."
	self currentQuery ifNil: [^ self].
	
	((self view class includesBehavior: evt itemClass)
		or: [(self currentQuery valueOfProperty: #view ifAbsent: [ProtoObject]) includesBehavior: evt itemClass])
			ifFalse: [^ self].
	
	[
		evt itemSelector = #setUp:
			ifTrue: [^ self view setUp: self currentQuery].
			
		evt itemSelector = #process:
			ifTrue: [^ self view process: self model].
	] on: Error do: [:ex |
		self showError: (ViShallowException for: ex)].
	
	"Re-create the whole view."
	self view: nil.
	self triggerUpdateView.