actions
addArtifact

	| editor |
	editor := ViScriptEditor new.
	editor object: (ViScriptPart new sourceCode: '[:in :out | out addAll: in]').
		
	"Register new step and definition."
	editor object
		organization: self object organization.
	self object isRegistered ifTrue: [editor object register].
	editor object definition 
		organization: self object definition organization.

	"Insert directly."
	editor object next: self object next.
	self object next: editor object.

	ViLoggingService trigger: {#message -> 'Script part created.'}.

	self artifactCreated: editor.
	editor activateWizard.