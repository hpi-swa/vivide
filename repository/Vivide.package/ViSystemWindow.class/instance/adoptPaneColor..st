as yet unclassified
adoptPaneColor: aColor

	self flag: #trunk. "mt: Move this check to trunk?!"
	aColor ifNil: [^ self].

	super adoptPaneColor: aColor.

	{closeBox. collapseBox. menuBox. expandBox}
		do: [:b | b ifNotNil: [b color: aColor]]