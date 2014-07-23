as yet unclassified
doMethodReference: ref

	| v o s |
	v := ((ref selector beginsWith: #pvt)
		or: [ref category includesSubstring: 'private' caseSensitive: false]).
	o := ViIconService isOverride: ref selector in: ref actualClass.
	s := ref classIsMeta.

	v & o & s ifTrue: [^ViEclipseIcons methpriStaticOverObjIcon].
	v & o & s not ifTrue: [^ViEclipseIcons methpriOverObjIcon].
	v & o not & s ifTrue: [^ViEclipseIcons methpriStaticObjIcon].
	v & o not & s not ifTrue: [^ViEclipseIcons methpriObjIcon].
	
	v not & o & s ifTrue: [^ViEclipseIcons methpubStaticOverObjIcon].
	v not & o & s not ifTrue: [^ViEclipseIcons methpubOverObjIcon].
	v not & o not & s ifTrue: [^ViEclipseIcons methpubStaticObjIcon].
	v not & o not & s not ifTrue: [^ViEclipseIcons methpubObjIcon].