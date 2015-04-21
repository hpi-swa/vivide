actions
ensureTag

	self checkTagname ifFalse: [^ false].
	tag ifNotNil: [^ true].
	
	"Create and register a new tag."
	tag := SdTag named: self ui tagnameEdit theText asString.
	
	^ true