tests - single - ui
test02PropertyBar

	script := { [:num | num * num] -> { #color -> #yellow. #foo -> #bar } } asScript.

	"1) Starting point."
	editor object: script.
	self assert: #('#yellow' '#bar') equals: self propertyTrace.
	
	"2) Make change through script object."
	script setProperty: #color toValue: #blue.
	self forceGuiUpdate. "Update is deferred."
	self assert: #('#blue' '#bar') equals: self propertyTrace.

	"3) Make change through script editor."
	editor goUpToTop.
	editor visibleSourceCode: script sourceCode, ' -> { #color -> #red. #foo -> #bar }'.
	editor acceptSourceCode.
	self assert: #('#red' '#bar') equals: self propertyTrace.