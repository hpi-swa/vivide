as yet unclassified
showLastExceptions

	(self toolWindows detect: [:wnd |
		wnd editor objects in: [:objects |
			objects size = 1 and: [objects first == ViObjectHistory lastExceptions]]]
		ifNone: []) ifNotNil: [:wnd | wnd activate. ^ self].
		
	self openArtifact: ViObjectHistory lastExceptions.