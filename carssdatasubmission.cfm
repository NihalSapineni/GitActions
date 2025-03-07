<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body >


<cfscript>
    formdata=StructNew();
</cfscript>

<cftry>
	<cfset val ='form.paynotes = ' & #form.paynotes#>
	<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
		<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='In Carsssubmission Page'>
		<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value='#val#'>
	</cfstoredproc>
	<cfset TNumberCombined="" />
	<cfset payParams=#form.paynotes# />

	<!---BELOW LINE COMMENTED BCOZ, GREG WANTED TO SEDN ALL TRANSACTIONS AS APPROVED.--->
	<!---<cfif #form.status# eq "2" >--->

	<cfif #form.status# eq "2" >
		<cfset myArrayList = ListToArray(payParams,',')>
		<!---<cfdump var="#myArrayList#">
		<cfdump var=#form# />--->
		<cfset val ='payParams = ' & #payParams#>
		<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
			<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='entering into the loop'>
			<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value='#val#'>
		</cfstoredproc>
		<cfloop index="i" from="1" to="#arrayLen(myArrayList)#">
			<cfset myArrayList1 = ListToArray(myArrayList[i],'|')>  
			<cfset val ='RECEIVEDDATE = ' & #Now()# & ' and TRANSTYPECODE = LPP'>
			<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
				<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='Calling PlaceAmontDueInfo.PlaceInvoiceInfo qBindtransactionID function'>
				<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value='#val#'>
			</cfstoredproc>
			<cfinvoke component="PlaceAmontDueInfo.PlaceInvoiceInfo" method="qBindtransactionID" returnvariable="qryValue">
				<cfinvokeargument name="RECEIVEDDATE" value="#Now()#">
				<cfinvokeargument name="TRANSTYPECODE" value="LPP">
			</cfinvoke>
			<cfset val ='return value = ' & serializeJSON(#qryValue#)>
			<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
				<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='PlaceAmontDueInfo.PlaceInvoiceInfo qBindtransactionID function call completed'>
				<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value='#val#'>
			</cfstoredproc>
			<cfset TNumber=#qryValue.results# />
			<cfset TNumberCombined=TNumberCombined & "," &  TNumber />
			<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
				<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='setting up formdata'>
				<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value=''>
			</cfstoredproc>
			<cfscript>
				formdata.AMOUNT= #myArrayList1[3]#;
				formdata.CHECKNUMBER= #form.checknumber# #form.cardnumber#;
				formdata.CLEARINGACCOUNTNUMBER="";
				formdata.COUNTRYID="1";
				formdata.CREATERECORD="Create Adjustment";
				formdata.DEBTORACCOUNTNUMBER=#form.licenceecode#;
				formdata.DEBTORID= #myArrayList1[6]#;
				formdata.Debt_ID= #myArrayList1[5]#;
				formdata.DEPOSITDATE=#DateFormat(now(),'yyyy-mm-dd')#;
				formdata.EFILEDATE="";
				formdata.FIELDNAMES="Debt_ID, DEBTORID,SWITC";
				formdata.FISCALYEAR=#Trim(myArrayList1[1])#;
				formdata.NOTE="";
				formdata.PAYERSADDRESS="";
				formdata.PAYERSCITY="";
				formdata.PAYERSCOMPANYADDRESS="";
				formdata.PAYERSFIRSTNAME=#form.name#;
				formdata.PAYERSLASTNAME=#form.name#;
				formdata.PAYERSPHONENUMBER="";
				formdata.PAYERSSTATEID="3";
				formdata.PAYERSZIPCODE=#form.payerzipcode#;
		
				//Echeck
				if(#form.paymentMethod# EQ 1)
				{
					formdata.PAYMENTTYPEID="15";//formdata.PAYMENTTYPEID="4";
				}
				else if (#form.paymentMethod# EQ 0 || #form.paymentMethod# EQ 2)
				{
					formdata.PAYMENTTYPEID="2";//formdata.PAYMENTTYPEID="3";
				}
		
		
				formdata.PLACEINVOICE="1";
				formdata.PLACE_LICENSEENUMBER=#form.licenceenumber#;
				formdata.PLACE_LICENSEETYPE=#form.lcode2digits#;
				formdata.PLACE_TRANSACTION_NUMBER=#TNumber#;
				formdata.POSTMARKDATE=#Now()#;
				formdata.RECEIVEDDATE=#Now()#;
				formdata.REMLEN1="100";
				formdata.SWITCH_AUTOTRANSACTIONID= "ON";
				formdata.SYSTEMCODE=#myArrayList1[4]#;

		

				formdata.TRANSACTIONAPPROVED="Yes";
				formdata.TRANSACTIONID1=#LEFT(TNumber,3)#;
				formdata.TRANSACTIONID2=#RIGHT(LEFT(TNumber,8),5)#;
				formdata.TRANSACTIONID3=#RIGHT(LEFT(TNumber,13),5)#;
				formdata.TRANSACTIONID4=#RIGHT(TNumber,2)#;
				formdata.TRANSACTIONIDPREP="";
				formdata.TRANSTYPECODE=#LEFT(TNumber,3)#;
		
			</cfscript> 
			<cfset val ='formdata = ' & serializeJSON(#formdata#)>
			<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
				<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='formdata setting completed'>
				<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value='#val#'>
			</cfstoredproc>
			<!---<CFdump var=#formdata#/>	--->

			<!---<cfdump var=#AddResults# />--->	
			<cfset val ='Debt_ID = ' & #formdata.Debt_ID# & ' and FiscalYear = ' &  #formdata.FISCALYEAR#>
			<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
				<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='calling PlaceAmontDueInfo.PlaceInvoiceInfo qGetPFrecord function'>
				<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value='#val#'>
			</cfstoredproc>
			<cfinvoke component="PlaceAmontDueInfo.PlaceInvoiceInfo" method="qGetPFrecord" returnvariable="qryValue">
				<cfinvokeargument name="Debt_ID" value="#formdata.Debt_ID#">
				<cfinvokeargument name="FiscalYear" value="#formdata.FISCALYEAR#">
			</cfinvoke>
			<cfset val ='return value = ' & serializeJSON(#qryValue#)>
			<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
				<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='PlaceAmontDueInfo.PlaceInvoiceInfo qGetPFrecord function call completed'>
				<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value='#val#'>
			</cfstoredproc>
			<!---<CFdump var=#qryValue#/>	
			<cfabort> --->
			<cfif qryValue.recordcount NEQ 0>
				<cfset formdata.Place_Expirationdate = qryValue.Place_Expirationdate>
				<cfset val ='Place_Expirationdate = ' & #formdata.Place_Expirationdate#>
				<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='inside five year renewals'>
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value='#val#'>
				</cfstoredproc>
				<cfset val ='formData = ' & serializeJSON(#formdata#)>
				<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='calling PlaceAmontDueInfo.CARRS AddCollections function'>
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value='#val#'>
				</cfstoredproc>
				<cfinvoke component="PlaceAmontDueInfo.CARRS" method="AddCollections" returnvariable="AddResults">
					<cfinvokeargument name="formData" value="#formdata#">
				</cfinvoke>
				<cfset val ='return value = ' & serializeJSON(#AddResults#)>
				<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='PlaceAmontDueInfo.CARRS AddCollections function call completed'>
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value='#val#'>
				</cfstoredproc>
					<!--- Update Place 5year expiration date if the transaction if for 'FiveYearLicenseRenewalFee'  --->
				<cfset val ='Debt_ID = ' & #formdata.Debt_ID# & ' and FiscalYear = ' &  #formdata.FISCALYEAR#>
				<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='calling PlaceAmontDueInfo.PlaceInvoiceInfo setPlaceExpirationdate function for five year renewal'>
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value='#val#'>
				</cfstoredproc>
				<cfinvoke component="PlaceAmontDueInfo.PlaceInvoiceInfo" method="setPlaceExpirationdate">
					<cfinvokeargument name="Debt_ID" value="#formdata.Debt_ID#">
					<cfinvokeargument name="FiscalYear" value="#formdata.FISCALYEAR#">
				</cfinvoke>
				<cfset val ='query = UPDATE FEE_LEDGER_DETAIL_INFO SET EXPIRATION_DATE = DateAdd(year,5,EXPIRATION_DATE) where licensee_number = ' & #formdata.PLACE_LICENSEENUMBER# & ' and fiscal_year = ' & #formdata.FISCALYEAR# & ' and source_form=FiveYearLicenseRenewalFee'>
				<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='Updating FEE_LEDGER_DETAIL_INFO table with the new expiration date for five year renewal'>
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value='#val#'>
				</cfstoredproc>
				<cfquery  name="qryUpdateExpDate" datasource="#application.CCBTConnection#">
					UPDATE FEE_LEDGER_DETAIL_INFO SET EXPIRATION_DATE = DateAdd(year,5,EXPIRATION_DATE) where licensee_number = <cfqueryparam value="#formdata.PLACE_LICENSEENUMBER#" cfsqltype="cf_sql_integer">  and fiscal_year = <cfqueryparam value="#formdata.FISCALYEAR#" cfsqltype="cf_sql_integer">
					and source_form='FiveYearLicenseRenewalFee'
				</cfquery>
				<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='Updating FEE_LEDGER_DETAIL_INFO table completed'>
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value=''>
				</cfstoredproc>
				<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='5 year renewal update completed'>
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value=''>
				</cfstoredproc>
			<cfelse>
				<cfset formdata.Place_Expirationdate = qryValue.Place_Expirationdate>
				<cfset val ='Place_Expirationdate = ' & #formdata.Place_Expirationdate#>
				<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='inside if not five year renewals'>
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value='#val#'>
				</cfstoredproc>
				<cfset val ='formData = ' & serializeJSON(#formdata#)>
				<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='Calling PlaceAmontDueInfo.CARRS AddCollections function'>
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value='#val#'>
				</cfstoredproc>
				<cfinvoke component="PlaceAmontDueInfo.CARRS" method="AddCollections" returnvariable="AddResults">
					<cfinvokeargument name="formData" value="#formdata#">
				</cfinvoke>
				<cfset val ='return value = ' & serializeJSON(#AddResults#)>
				<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='PlaceAmontDueInfo.CARRS AddCollections function call completed'>
					<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value='#val#'>
				</cfstoredproc>
			</cfif>
		</cfloop>
		<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
			<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='loop exited'>
			<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value=''>
		</cfstoredproc>

		<cfset TNumberCombined=Right(#TNumberCombined#,#Len(TNumberCombined)#-1) />
		<cfset val ='query = UPDATE ncr_payments_log SET TRANSACTIONID = ' & #TNumberCombined# & ' WHERE identifier_key= ' & "#form.transid#">
		<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
			<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='Updating NCR_Payment_log table'>
			<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value='#val#'>
		</cfstoredproc>
		<cfquery  name="qrySearch" datasource="#application.CCBTConnection#">
			UPDATE ncr_payments_log SET TRANSACTIONID = <cfqueryparam value="#TNumberCombined#" cfsqltype="cf_sql_char">  WHERE identifier_key= <cfqueryparam value="#form.transid#" cfsqltype="cf_sql_char">
		</cfquery>
		<cfstoredproc  procedure="EPAY_LOG_DETAILS" datasource="#application.CCBTConnection#">
			<cfprocparam cfsqltype="CF_SQL_CHAR" variable="LOG_DESCRIPTION" value='Updating NCR_Payment_log table completed'>
			<cfprocparam cfsqltype="CF_SQL_CHAR" variable="QUERY_DETAILS" value=''>
		</cfstoredproc>

<!---
		DATE		: 15-FEB-2024
		AUTHOR		: RAMESH
		DESFRIPTION	: BELOW SESSION VARIABLE IS USED TO REFRESH PENDING PAYMENTS IN THE MAIN PAGE.

	--->

		<script>
			localStorage.setItem("PlacePaymentComplete", "1");
		</script>
		
	<div style="text-align:center;">
	<img src='/images/confirm.jpg'  /><br/>Thank you for the payment. Your payment is Approved. <br/> Your transaction reference number is:<cfoutput>#EncodeForHTML(form.confirmnumber)#</cfoutput>
	</div>
	<cfelse>
	<div style="text-align:center;">
		Opps!!. something went wrong. we will get back.
	</div>
</cfif>
	<cfcatch type="any">
		<cfstoredproc  procedure="STORE_EXCEPTION_DETAILS" datasource="#application.CCBTConnection#">
			<cfprocparam cfsqltype="CF_SQL_CHAR" variable="EXCEPTION_TYPE" value=#cfcatch.type#>
			<cfprocparam cfsqltype="CF_SQL_CHAR" variable="EXCEPTION_MESSAGE" value=#cfcatch.message#>
			<cfprocparam cfsqltype="CF_SQL_CHAR" variable="EXCEPTION" value=#cfcatch.StackTrace#>
	    </cfstoredproc>
	</cfcatch>
</cftry>


</body>
</html>