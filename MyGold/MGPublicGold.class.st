"
Public Gold
"
Class {
	#name : #MGPublicGold,
	#superclass : #MGVendor,
	#category : #MyGold
}

{ #category : #'as yet unclassified' }
MGPublicGold class >> url [
	^ 'https://www.publicgold.com.my/'
]

{ #category : #constants }
MGPublicGold >> getProductGroups [
	^ {MGPublicGoldGoldJewellery22K.MGPublicGoldGoldWaferDinar22K.
	MGPublicGoldFlexibar24K.
	MGPublicGoldClassicBungamasTaiFook24K.
	MGPublicGoldSmallBarWafer24K.
	MGPublicGoldGoldWaferDinar24K.
	MGPublicGoldGoldBar24K.
	MGPublicGoldSilverBullion}
]
