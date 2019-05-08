navigation - views
lookupScriptPropertiesForView: aViewClass

	ViewProperties ifNil: [ViewProperties := Dictionary new].

	^ ViewProperties
		at: aViewClass -> #script
		ifAbsentPut: [
			self
				lookupPropertiesForView: aViewClass
				receivers: #(script prop query)
				accessor: #valueOfProperty:
				iterator: #do: "standard item views ..." ]