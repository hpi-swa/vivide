updating
updateInput
	"Try to found out about input objects."

	| inputObjects |
	inputObjects := #().
	[
		self interpretUpToDetect: [:script :interpreter |
			"The current step in the interpreter was not yet interpreted, which renders the corresponding objects as *input* not *output*."
			script = self object
				ifTrue: [inputObjects := interpreter objects. true]
				ifFalse: [false]].
	] on: Error do: [].

	"If no input could be detected, just use a fake object."			
	self input: (inputObjects ifEmpty: [{Object new}]).