loading - editors
loadQueryPage: anEditor

	anEditor currentQuery: (self properties at: #query ifAbsent: [^ self]).