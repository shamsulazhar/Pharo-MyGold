Class {
	#name : #MGMaybankSilverInvestmentAccount,
	#superclass : #MGMaybankPaperProductGroup,
	#category : #MyGold
}

{ #category : #'data retrieval' }
MGMaybankSilverInvestmentAccount class >> extractDateTimeNodeValue: aNode [
	| textSmallNodes dateTimeNode |
	textSmallNodes := aNode allSelect: [ :n | n hasClass: 'text-small' ].
	dateTimeNode := textSmallNodes at: 3.
	^ (dateTimeNode children at: 1) nodeValue
]

{ #category : #constants }
MGMaybankSilverInvestmentAccount class >> priceTableKey: anObject [
	^ 'table3'
]
