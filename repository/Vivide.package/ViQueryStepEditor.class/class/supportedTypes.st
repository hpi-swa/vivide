accessing
supportedTypes

	VivideLight useClassicMode ifTrue: [^ {}].

	^ ViQueryStep allSubclasses copyWithoutAll: ViQueryFillStep withAllSubclasses, {ViScriptPart}