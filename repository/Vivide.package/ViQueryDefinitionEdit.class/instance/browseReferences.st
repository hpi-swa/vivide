as yet unclassified
browseReferences

	ViPane new
		currentQuery: (self definition organization stepById: #refToDef);
		objects: {self definition};
		popUpAt: sendersBtn boundsInWorld bottomLeft.