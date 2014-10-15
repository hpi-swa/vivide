actions
addArtifact

	| editor |
	editor := ViScriptEditor new.
	editor object: (ViScriptPart new sourceCode: '[:in :out | out addAll: in]').
	
	"Try to determine the kind of objects that are put into."
	([self interpretUpToSelf allObjects] on: Error do: [#()]) ifNotEmpty: [:objects |
		(ViQueryStepDefinition collectBaseClassesForContext: objects) in: [:tmp |
			editor inputKind: (tmp first isBehavior
				ifTrue: [{tmp first}]
				ifFalse: [tmp collect: [:someClasses | someClasses first]])]].
		
	editor activateWizard.

	"Register new step and definition."
	editor object
		organization: self object organization.
	self object isRegistered ifTrue: [editor object register].
	editor object definition 
		organization: self object definition organization.

	"Insert directly."
	editor object next: self object next.
	self object next: editor object.

	self artifactCreated: editor.