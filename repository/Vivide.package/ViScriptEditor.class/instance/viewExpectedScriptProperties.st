as yet unclassified
viewExpectedScriptProperties
	"Returns a list of all properties the view expects."

	^ self
		viewExpectedPropertiesReceivers: #(script prop query)
		accessor: #valueOfProperty:
		iterator: #do: "standard item views ..."