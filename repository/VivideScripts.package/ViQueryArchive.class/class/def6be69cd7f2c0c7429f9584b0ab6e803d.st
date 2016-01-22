definitions
def6be69cd7f2c0c7429f9584b0ab6e803d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj |  
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
				#icon -> (ViIconService doObject: obj)}]]).
(#class -> ViQueryMapDefinition).
(#id -> #'6be69cd7-f2c0-c742-9f95-84b0ab6e803d').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 1:56:52 pm')})).
(#sourceCode -> '[:obj |  
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
				#icon -> (ViIconService doObject: obj)}]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})