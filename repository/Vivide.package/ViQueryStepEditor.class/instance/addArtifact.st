actions
addArtifact

	| editor |
	editor := ViQueryStepEditor new.
	editor object: (self currentType key == ViQueryPropertyStep
		ifTrue: [ViQueryStep property: '[:obj | #()]']
		ifFalse: [ViQueryStep collect: ViQueryMapDefinition defaultSourceCode]).

	"Register new step and definition."
	editor object
		organization: self step organization.
	self step isRegistered ifTrue: [editor object register].
	editor object definition 
		organization: self currentDefinition organization.

	"Insert directly."
	editor object next: self step next.
	self step next: editor object.

	editor ui definitionEdit selectAll.
	self artifactCreated: editor.