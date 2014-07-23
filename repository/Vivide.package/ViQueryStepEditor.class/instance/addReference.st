actions
addReference

	| editor |
	editor := ViQueryStepEditor new.
	editor object: ViQueryReferenceStep new.

	"Register new step and definition."
	editor object
		organization: self step organization.
	self step isRegistered ifTrue: [editor object register].

	"Insert directly."
	editor object next: self step next.
	self step next: editor object.

	self artifactCreated: editor.