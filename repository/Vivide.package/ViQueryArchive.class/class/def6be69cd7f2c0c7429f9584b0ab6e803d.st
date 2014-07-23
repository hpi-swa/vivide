definitions
def6be69cd7f2c0c7429f9584b0ab6e803d
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 February 2014 1:56:52 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'6be69cd7-f2c0-c742-9f95-84b0ab6e803d'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj |  
	obj isVariableBinding
		ifTrue: [{
			#text -> obj value asString.
			#icon -> (obj key isMeta
				"inst vars" 
				ifFalse: [UiSilkIcons bulletBlueIcon] ifTrue: [
					obj value first isUppercase
						"real class vars"
						ifTrue: [UiSilkIcons bulletBlackIcon]
						"inst vars of meta class"
						ifFalse: [UiSilkIcons bulletPinkIcon]]
				)
			}]
		ifFalse: [
			(obj isBehavior ifTrue: [#()] ifFalse: [{#color ->
				((ViToolSet isMethodCodeCategorized: obj)
					ifTrue: [Color green alpha: 0.5] 
					ifFalse: [nil])
			}]), {
				#text -> (ViLabelService doObject: obj).
				#icon -> (ViIconService doObject: obj)}]]'); add: (#mapType->#each); add: (#block->[:obj |  
	obj isVariableBinding
		ifTrue: [{
			#text -> obj value asString.
			#icon -> (obj key isMeta
				"inst vars" 
				ifFalse: [UiSilkIcons bulletBlueIcon] ifTrue: [
					obj value first isUppercase
						"real class vars"
						ifTrue: [UiSilkIcons bulletBlackIcon]
						"inst vars of meta class"
						ifFalse: [UiSilkIcons bulletPinkIcon]]
				)
			}]
		ifFalse: [
			(obj isBehavior ifTrue: [#()] ifFalse: [{#color ->
				((ViToolSet isMethodCodeCategorized: obj)
					ifTrue: [Color green alpha: 0.5] 
					ifFalse: [nil])
			}]), {
				#text -> (ViLabelService doObject: obj).
				#icon -> (ViIconService doObject: obj)}]]); yourself)