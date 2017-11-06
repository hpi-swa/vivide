as yet unclassified
evaluateLastExpression

	| model textEdit editor result |
	self lastExpression ifNil: [^ self].
	self lastExpression ifEmpty: [^ self].
	
	textEdit := self container snippetEdit.
	model := textEdit model.
	editor := textEdit textMorph editor.

	[
		result := Compiler new
			evaluate: self lastExpression
			in: model doItContext
			to: model doItReceiver
			notifying: editor
			ifFail: [^ self]
			logged: true.
		self selectObjects: result.
	] on: Error do: [:err | 
		self showWarning: err messageText.
		self selectObjects: nil].