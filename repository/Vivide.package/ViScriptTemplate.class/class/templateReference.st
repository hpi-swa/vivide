templates
templateReference
	"See ViScriptEditor >> #acceptSourceCode to understand auto-bracketing."
	^ (14 to: 31) -> '[:in :out | "#defaultProperties" out addAll: in
	"Deprecated. Use #before and #after instead."]'