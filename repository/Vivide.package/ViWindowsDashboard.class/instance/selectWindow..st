as yet unclassified
selectWindow: thumbnail

	thumbnail ifNotNil: [
		selectionRectangle bounds: (thumbnail bounds outsetBy: (6@25 corner: 6@6)).
		selectionRectangle submorphs first contents: (thumbnail valueOfProperty: #window) label].
	selectionRectangle setProperty: #target toValue: thumbnail. 