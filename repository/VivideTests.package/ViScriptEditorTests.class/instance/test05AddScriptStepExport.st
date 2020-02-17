tests - single - debugging
test05AddScriptStepExport
	"Check whether the insertion of a script step creates a new entry in the archive *and* updates one with the #next reference."

	| newEditor |
	self setUpWindow.
	newEditor := editor addStep.

	"1) Is the object model correct?"
	self
		assert: editor object next
		equals: newEditor object.

	"2) Is the serialized version correct?"
	self
		assert: editor object next id
		equals: (editor object referenceInArchive asDictionary at: #next).