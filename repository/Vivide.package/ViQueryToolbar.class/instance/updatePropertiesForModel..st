as yet unclassified
updatePropertiesForModel: aQueryModel
	
	secondaryList groupSpec hideIfFirst: aQueryModel groups size = 1.
	
	aQueryModel properties
		ifEmpty: [
			"Defaults."
			secondaryList listSpec:
				(UiItemViewColumnSpec newFrom: {
					#text -> #object.
					#headerText -> #object})]
		ifNotEmpty: [
			secondaryList listSpec:
				((UiItemViewColumnSpec newFrom: {
					#text -> #yourself.
					#icon -> (aQueryModel properties ifEmpty: [] ifNotEmpty: [:props | props first, #icon]).
					#color -> (aQueryModel properties ifEmpty: [] ifNotEmpty: [:props | props first, #color])})
					"Just concatenate the text labels of all columns but make all but the first one gray."
					textConverter: [:node | | label |
						label := ''.
						aQueryModel properties withIndexDo: [:prop :idx | label := label, ('{1}{2}{3}' format: {
							idx > 1 ifTrue: [' <font color="#AAAAAA">'] ifFalse: [''].
							node at: prop, #text.
							idx > 1 ifTrue: ['</font>'] ifFalse: ['']})].
						label asHtmlText])].