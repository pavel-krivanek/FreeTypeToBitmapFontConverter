instance creation
registerBitmapFontsFor: familyName ofSizes: sizes

	"self registerBitmapFontsFor: 'Source Code Pro' ofSizes: #(7 9 12 14 18 24)"

	| textStyle fontName fonts  |
	
	fonts := sizes collect: [ :size |
		| regular derivatives |
		regular := FreeTypeToBitmapFontConverter strikeFontFor: familyName style: 'Regular' size: size.
		derivatives := #('Bold' 'Oblique' 'Bold Oblique' ) collect: [ :emphasis |
			FreeTypeToBitmapFontConverter strikeFontFor: familyName style: emphasis size: size ].

		derivatives withIndexDo: [ :derivative :index |
			(regular instVarNamed: #derivativeFonts) at: index put: derivative ].
		regular ].

	textStyle := TextStyle fontArray: fonts.
	fontName := textStyle defaultFont familySizeFace first.

	TextConstants TextSharedInformation at: fontName asSymbol put: textStyle.

