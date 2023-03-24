Class {
	#name : #MGMaybankGoldInvestmentAccount,
	#superclass : #MGMaybankPaperProductGroup,
	#category : #MyGold
}

{ #category : #'data retrieval' }
MGMaybankGoldInvestmentAccount class >> extractDateTimeNodeValue: aNode [
	| textSmallNodes dateTimeNode |
	textSmallNodes := aNode allSelect: [ :n | n hasClass: 'text-small' ].
	dateTimeNode := textSmallNodes at: 1.
	^ (dateTimeNode children at: 1) nodeValue
]

{ #category : #constants }
MGMaybankGoldInvestmentAccount class >> priceTableKey: anObject [
	^ 'table1'
]
