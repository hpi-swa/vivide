navigation - views
lookupObjectPropertiesForView: aViewClass

	^ self
		lookupPropertiesForView: aViewClass
		receivers: #(node model)
		accessor: #at:
		iterator: #collect: "standard item views ..."