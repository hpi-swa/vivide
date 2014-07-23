focus
onFocusLost

	(self hasKeyboard or: [resultList hasAnyKeyboard])
		ifFalse: [self hideResults].