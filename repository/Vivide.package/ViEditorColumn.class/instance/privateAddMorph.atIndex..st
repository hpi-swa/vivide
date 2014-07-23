submorphs-add/remove
privateAddMorph: anEditor atIndex: index

	"Use the width of the first morph that is added."
	self submorphs ifEmpty: [
		self width: anEditor width].

	super privateAddMorph: anEditor atIndex: index.

	anEditor expand.