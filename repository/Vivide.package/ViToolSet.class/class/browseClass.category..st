browsing
browseClass: aClass category: aMethodCategory

	VivideLight active ifNil: [^ super browseClass: aClass category: aMethodCategory].

	^ self browseClass: aClass