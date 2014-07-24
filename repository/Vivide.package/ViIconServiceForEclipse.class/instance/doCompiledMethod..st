operations
doCompiledMethod: aMethod

	| v o s |
	v := ((aMethod selector beginsWith: #pvt)
		or: [(aMethod methodClass organization categoryOfElement: aMethod selector)
			includesSubstring: 'private' caseSensitive: false]).
	o := ViIconService isOverride: aMethod selector in: aMethod methodClass.
	s := aMethod methodClass isMeta.

	v & o & s ifTrue: [^ViEclipseIcons methpriStaticOverObjIcon].
	v & o & s not ifTrue: [^ViEclipseIcons methpriOverObjIcon].
	v & o not & s ifTrue: [^ViEclipseIcons methpriStaticObjIcon].
	v & o not & s not ifTrue: [^ViEclipseIcons methpriObjIcon].
	
	v not & o & s ifTrue: [^ViEclipseIcons methpubStaticOverObjIcon].
	v not & o & s not ifTrue: [^ViEclipseIcons methpubOverObjIcon].
	v not & o not & s ifTrue: [^ViEclipseIcons methpubStaticObjIcon].
	v not & o not & s not ifTrue: [^ViEclipseIcons methpubObjIcon].