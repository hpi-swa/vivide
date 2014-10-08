actions
selectObjects: editorModelNodes
	"Override to respect custom model in view."
	^ super selectObjects: (editorModelNodes collect: [:n | n object])