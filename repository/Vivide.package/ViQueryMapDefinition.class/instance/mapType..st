accessing
mapType: aSymbol
	"#all, #twoArgs"
	
	mapType == aSymbol ifTrue: [^ self].
	
	mapType in: [:oldMapType |
		mapType := aSymbol ifNotNil: [:s | s asSymbol].
		
		self notifier
			mapTypeChanged: self
			from: oldMapType to: mapType].