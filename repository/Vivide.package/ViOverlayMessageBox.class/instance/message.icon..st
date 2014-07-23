configuration
message: aString icon: anIcon

	self ui iconLbl form: anIcon.
	self ui messageLbl text: ('<font color="#FFFFFF">', aString, '</font>') asHtmlText.