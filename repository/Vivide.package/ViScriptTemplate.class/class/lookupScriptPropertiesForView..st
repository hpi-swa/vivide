navigation - views
lookupScriptPropertiesForView: aViewClass

	^ self
		lookupPropertiesForView: aViewClass
		receivers: #(script prop query)
		accessor: #valueOfProperty:
		iterator: #do: "standard item views ..."