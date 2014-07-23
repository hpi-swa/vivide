accessing
selectPages: id

	^ pages select: [:page | page queries anySatisfy: [:query | query id = id]]