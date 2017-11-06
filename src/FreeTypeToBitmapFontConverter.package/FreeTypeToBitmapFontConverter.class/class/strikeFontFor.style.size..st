instance creation
strikeFontFor: aFamilyName style: aStyle size: pointSize

	| family style font |
	family := LogicalFontManager current allFamilies detect: [ :f | f familyName = 	aFamilyName ] ifNone: [  ].
	style := family members detect: [ :m | m styleName = aStyle ].
	font := style asLogicalFontOfPointSize: pointSize.
	^ (self on: font) strikeFont.