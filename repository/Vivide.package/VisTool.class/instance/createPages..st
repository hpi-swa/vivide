ui building
createPages: someQuerySpecs
	"Each page gets one query. Connect pages via selection."
	
	| newPages |
	newPages := someQuerySpecs collect: [:spec |
		(ViQueryStep convertList: spec value) in: [:query |
			query
				id: spec key first;
				setViewSpec: spec key second.
			ViQueryPageLight new in: [:newPage | newPage queries add: query. newPage]]].
	newPages overlappingPairsDo: [:p1 :p2 |
		self connect: p1 signal: #objectSelectionChanged: to: p2 selector: #objects:].
	pages addAll: newPages.
	^ newPages