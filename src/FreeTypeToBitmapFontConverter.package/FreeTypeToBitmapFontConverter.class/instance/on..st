instance creation
on: aLogicalFont

	font := aLogicalFont.
	realFont := aLogicalFont realFont.
		
	ascent := font ascent.
	descent := font descent.
	fontHeight := ascent + descent.
	emphasis := emphasis.
	
	strikeFont := StrikeFont new.
	strikeFont name: 'Bitmap ', font familyName.
	
	self computeXTable.
	self computeGlyphs.
	
	strikeFont setGlyphs: glyphs.
	strikeFont xTable: xTable.
	strikeFont instVarNamed: #type put: 0.
	strikeFont instVarNamed: #derivativeFonts put: (Array new: 32).
	strikeFont instVarNamed: #maxWidth put: 0.
	strikeFont instVarNamed: #emphasis put: font emphasis.
	strikeFont instVarNamed: #superscript put: (ascent - descent) // 3.
	strikeFont instVarNamed: #subscript put: (descent - ascent) // 3.
	strikeFont instVarNamed: #minAscii put: 32.
	strikeFont instVarNamed: #maxAscii put: 255.
	strikeFont instVarNamed: #pointSize put: font pointSize.
	strikeFont instVarNamed: #ascent put: font ascent.
	strikeFont instVarNamed: #descent put: font descent.

	