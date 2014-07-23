updating
updateTypeFromEditor

	self ui definitionEdit visible ifFalse: [^ self].
	self currentType: self currentTypeFromEditor.