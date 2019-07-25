updating
updateFromChangedCode: evt
	"If there was a change in view code, update my view."
	
	({Object. Morph. ViArtifactListView2. ViMultiPaneWidget} includes: evt itemClass)
		ifTrue: [^ self "Ignore system classes"].
	
	"Check needed for ViQueryNodeTests >> #test11Notifiactions."
	self script ifNil: [^ self].
	
	((self view class includesBehavior: evt itemClass)
		or: [(self script valueOfProperty: #view ifAbsent: [ProtoObject]) value "supports blocks"
			includesBehavior: evt itemClass])
				ifFalse: [^ self].
	
	[
		evt itemSelector = #setUp:
			ifTrue: [^ self view setUp: self script].
			
		evt itemSelector = #process:
			ifTrue: [^ self view process: self model].
	] on: Error do: [:ex | self triggerShowError: ex].
	
	"Re-create the whole view."
	self view: nil.
	self triggerUpdateView.