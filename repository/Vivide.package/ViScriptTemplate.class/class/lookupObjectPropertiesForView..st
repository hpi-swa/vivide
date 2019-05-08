navigation - views
lookupObjectPropertiesForView: aViewClass

	ViewProperties ifNil: [ViewProperties := Dictionary new].

	^ ViewProperties
		at: aViewClass -> #object
		ifAbsentPut: [
			self
				lookupPropertiesForView: aViewClass
				receivers: #(node model)
				accessor: #at:
				iterator: #collect: "standard item views ..." ]