ui building - views
textViewCreator

	^ [:query :view :env | ViTextView new in: [:v |
		v specs: {ViTextViewSpec newFrom: {#text -> #'1_text'. #editable -> true}}.
"		self connect: v signal: #selectionChanged: to: env selector: #onSelectionChanged:."
		v]]