import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
	id: page
	
	SilicaFlickable {
		anchors.fill: parent
		width: parent.width
		
		contentHeight: column.height
		
		VerticalScrollDecorator {}
		
		Column {
			id: column
			anchors {
				top: parent.top
				left: parent.left
				right: parent.right
			}
			
			anchors.margins: 20
			
			//spacing: Theme.paddingLarge
			spacing: 20
			
			PageHeader {
				width: column.width
				title: "TesX VAT Calc"
			}
			
			
			Row {
				Label {
					id: initial_amount_label
					text: "Initial Amount: "
				}
				
				TextField {
					id: initial_amountTXT
					focus: true
					placeholderText: "example: 100.00"
					
					width: column.width - initial_amount_label.width
					
					inputMethodHints: Qt.ImhDigitsOnly
					KeyNavigation.tab: vatTXT
				}
			}
			
			TextSwitch {
				id: add_vat_btn
				checked: true
				automaticCheck: false
				text: "Add VAT"
				onClicked: {
					var x = add_vat_btn.checked
					add_vat_btn.checked = !x
					
					extract_vat_btn.checked = x
				}
			}
			
			TextSwitch {
				id: extract_vat_btn
				checked: false
				automaticCheck: false
				text: "Extract VAT"
				onClicked: {
					var x = extract_vat_btn.checked
					extract_vat_btn.checked = !x
					
					add_vat_btn.checked = x
				}
			}
			
			
			Row {
				
				
				Label {
					id: vat_label
					text: "VAT: "
					
				}
				
				TextField {
					id: vatTXT
					focus: true
					placeholderText: "example: 20"
					
					width: column.width - vat_label.width - vat_percent_label.width
					inputMethodHints: Qt.ImhDigitsOnly
					
					KeyNavigation.tab: calc_btn
					KeyNavigation.backtab: initial_amountTXT
				}
				
				Label {
					id: vat_percent_label
					text: "%"
					
					
				}
				
			}
			
			
			Row {
				anchors.horizontalCenter: parent.horizontalCenter
				
				Button {
					id: calc_btn
					text: "Calc"
					onClicked: {
						var am  = parseFloat(initial_amountTXT.text);
						var vat = parseFloat(vatTXT.text);
						
						if(isNaN(am) || isNaN(vat)) {
							resultTXT.text = ""
							result_vatTXT.text = ""
						}
						
						var r = 0.0
						var v = 0.0
						
						if(add_vat_btn.checked) {
							v = am * (vat) / 100
							r = am + v
						}
						else {
							r = am * 100 / (100 + vat)
							v = am - r
						}
						
						resultTXT.text = r
						result_vatTXT.text = v
					}
					
				}
			}
			
			Row {
				Label {
					id: result_label
					text: "Result: "
				}
				
				TextField {
					id: resultTXT
					text: ""
					readOnly: true
					
					width: column.width - result_label.width
					
					
				}
			}
			
			Row {
				Label {
					id: result_vat_label
					text: "VAT: "
				}
				
				TextField {
					id: result_vatTXT
					text: ""
					readOnly: true
					
					width: column.width - result_vat_label.width
					
				}
			}
		}
	}
}


