<!-- Schematron binding rules automatically generated by Validex Generator Midran ltd -->
<!-- Data binding to UBL syntax for T01 -->
<!-- Timestamp: 2016-03-05 16:35:54 +0100 -->

<!--
    2017 - SIDN  changes for Simplerinvoicing
    Changes for SimplerInvoicing:
    - Renamed is-a and id
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="BII-T01" id="BII-UBL-T01">
  <param name="BII2-T01-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T01-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T01-R003" value="(cac:LineItem/cbc:ID)"/>
  <param name="BII2-T01-R004" value="(cbc:IssueDate)"/>
  <param name="BII2-T01-R005" value="(cac:ValidityPeriod/cbc:EndDate)"/>
  <param name="BII2-T01-R006" value="(cbc:ID)"/>
  <param name="BII2-T01-R007" value="(cbc:AllowanceChargeReason)"/>
  <param name="BII2-T01-R009" value="(cbc:DocumentCurrencyCode)"/>
  <param name="BII2-T01-R010" value="(cac:LineItem/cbc:Quantity) &gt;= 0"/>
  <param name="BII2-T01-R011" value="((cac:LineItem/cac:Price/cbc:PriceAmount) &gt;= 0) or (not(cac:LineItem/cac:Price))"/>
  <param name="BII2-T01-R012" value="(cbc:PayableAmount) &gt;= 0"/>
  <param name="BII2-T01-R013" value="(cbc:LineExtensionAmount) &gt;= 0"/>
  <param name="BII2-T01-R014" value="(xs:decimal(cbc:LineExtensionAmount)) = (round(xs:decimal(sum(/ubl:Order/cac:OrderLine/cac:LineItem/cbc:LineExtensionAmount)) * 10 * 10) div 100)"/>
  <param name="BII2-T01-R015" value="(cbc:AllowanceTotalAmount and (xs:decimal(cbc:AllowanceTotalAmount)) = (round(xs:decimal(sum(/ubl:Order/cac:AllowanceCharge[cbc:ChargeIndicator=&quot;false&quot;]/cbc:Amount)) * 10 * 10) div 100)) or not(cbc:AllowanceTotalAmount)"/>
  <param name="BII2-T01-R016" value="(cbc:ChargeTotalAmount and (xs:decimal(cbc:ChargeTotalAmount)) = (round(xs:decimal(sum(/ubl:Order/cac:AllowanceCharge[cbc:ChargeIndicator=&quot;true&quot;]/cbc:Amount)) * 10 * 10) div 100)) or not(cbc:ChargeTotalAmount)"/>
  <param name="BII2-T01-R017" value="((/ubl:Order/cac:TaxTotal/cbc:TaxAmount) 
and 
(((cbc:ChargeTotalAmount) and 
(cbc:AllowanceTotalAmount) and 
(cbc:PayableAmount = (round((cbc:LineExtensionAmount + /ubl:Order/cac:TaxTotal/cbc:TaxAmount + cbc:ChargeTotalAmount - cbc:AllowanceTotalAmount) * 10 * 10) div 100)))
or 
(not(cbc:ChargeTotalAmount) and 
(cbc:AllowanceTotalAmount) and 
(cbc:PayableAmount = (round((cbc:LineExtensionAmount + /ubl:Order/cac:TaxTotal/cbc:TaxAmount - cbc:AllowanceTotalAmount) * 10 * 10) div 100)))
or 
((cbc:ChargeTotalAmount) and 
not(cbc:AllowanceTotalAmount) and 
(cbc:PayableAmount = (round((cbc:LineExtensionAmount + /ubl:Order/cac:TaxTotal/cbc:TaxAmount + cbc:ChargeTotalAmount) * 10 * 10) div 100))) 
or 
(not(cbc:ChargeTotalAmount) and 
not(cbc:AllowanceTotalAmount) and 
(cbc:PayableAmount = (round((cbc:LineExtensionAmount + /ubl:Order/cac:TaxTotal/cbc:TaxAmount ) * 10 * 10) div 100))))) 
or 
(
not(/ubl:Order/cac:TaxTotal/cbc:TaxAmount) 
and 
(((cbc:ChargeTotalAmount) and 
(cbc:AllowanceTotalAmount) and 
(cbc:PayableAmount = (round((cbc:LineExtensionAmount + cbc:ChargeTotalAmount - cbc:AllowanceTotalAmount) * 10 * 10) div 100)))
or 
(not(cbc:ChargeTotalAmount) and 
(cbc:AllowanceTotalAmount) and 
(cbc:PayableAmount = (round((cbc:LineExtensionAmount - cbc:AllowanceTotalAmount) * 10 * 10) div 100)))
or 
((cbc:ChargeTotalAmount) and 
not(cbc:AllowanceTotalAmount) and 
(cbc:PayableAmount = (round((cbc:LineExtensionAmount + cbc:ChargeTotalAmount) * 10 * 10) div 100))) 
or 
(not(cbc:ChargeTotalAmount) and 
not(cbc:AllowanceTotalAmount) and 
(cbc:PayableAmount = (round((cbc:LineExtensionAmount ) * 10 * 10) div 100)))))"/>
  <param name="BII2-T01-R018" value="(cac:TaxTotal and (xs:decimal(cac:TaxTotal/cbc:TaxAmount)) = (round(xs:decimal(sum(/ubl:Order/cac:OrderLine/cac:LineItem/cbc:TotalTaxAmount)) * 10 * 10) div 100)) or not(/ubl:Order/cac:OrderLine/cac:LineItem/cbc:TotalTaxAmount)"/>
  <param name="BII2-T01-R019" value="(cbc:Name)"/>
  <param name="BII2-T01-R020" value="(cbc:Value)"/>
  <param name="BII2-T01-R021" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T01-R022" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T01-R029" value="(cac:LineItem/cbc:Quantity)"/>
  <param name="BII2-T01-R030" value="(cac:LineItem/cbc:Quantity/@unitCode)"/>
  <param name="BII2-T01-R031" value="(cac:LineItem/cac:Item/cbc:Name) or (cac:LineItem/cac:Item/cac:StandardItemIdentification/cbc:ID) or  (cac:LineItem/cac:Item/cac:SellersItemIdentification/cbc:ID)"/>
  <param name="Order_Line" value="//cac:OrderLine"/>
  <param name="Order" value="/ubl:Order"/>
  <param name="Allowance_Charges" value="/ubl:Order/cac:AllowanceCharge"/>
  <param name="Expected_totals" value="//cac:AnticipatedMonetaryTotal"/>
  <param name="Item_property" value="//cac:AdditionalItemProperty"/>
  <param name="Seller" value="//cac:SellerSupplierParty"/>
  <param name="Buyer" value="//cac:BuyerCustomerParty"/>
  <param name="Item" value="//cac:Item"/>
</pattern>
