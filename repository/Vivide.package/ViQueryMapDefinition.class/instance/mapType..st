accessing
mapType: aSymbol
	"#all, #twoArgs"
	
	mapType := aSymbol ifNotNil: [:s | s asSymbol].