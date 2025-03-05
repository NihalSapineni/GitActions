<cfinclude template="../utils/PAGE_DIRECTIVES.cfm">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>::</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta http-equiv="expires" content="Mon, 06 Jan 1990 00:00:01 GMT"/><META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE"/><meta http-equiv="author" content="Metmox Corporation"/>
<cfoutput>
<link rel="stylesheet" href="../css/new_form.css?#DUMMY_GUIDE#" />
<link rel="stylesheet" type="text/css" href="../css/dialog.css?#DUMMY_GUIDE#"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="../Scripts/datetimepicker.js?#DUMMY_GUIDE#"></script>

<script type="text/javascript" src="../scripts/DialogBoxScript.js?#DUMMY_GUIDE#"></script>
<script src="../scripts/FormDataEntryScripts.js?#DUMMY_GUIDE#" type="text/javascript"></script>
<script src="../scripts/Reporting.js?#DUMMY_GUIDE#" type="text/javascript"></script>
<script src="../scripts/PhoneValidate.js?#DUMMY_GUIDE#" type="text/javascript"></script>
</cfoutput>
<script type="text/javascript" language="javascript">
    function HandleUserInput(ObjectReference, UniqueIdentifier, ValidationType, ValidationLegalRange, ValidationIllegalRange) {
        if (ValidateKeyboardInput(ObjectReference, UniqueIdentifier, ValidationType, ValidationLegalRange, ValidationIllegalRange) == true) {
            try {
                window.clearTimeout('SyncrhonizeForm()');
                sSyncrhonizeForm = window.setTimeout('SyncrhonizeForm()', 500);
            }
            catch (oException) {
            }
        }
    }

    function SyncrhonizeForm() {
        try {
            SetTotals(null, null);

        }
        catch (oException) {

        }
    }

    function CheckNavigationTreeCheckBox() {
        //parent.NavigationTreeFrame.document.getElementById("chkCUSTODIAN").checked = true;
        var oForm = null;
        var oNavigationTreeFrameWindow = top.frames[1];
        oForm = oNavigationTreeFrameWindow.document.forms[0];
        var txtName = document.getElementById("txtSourceForm").value;
        var obj = oForm.elements["chk" + txtName]; //oForm.chkC0008;
        obj.checked = true;
    }
</script>

<script type="text/javascript" language="javascript">

    function DoPerformRibbonAction(o, ActionType, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue) {
        var oArray = new Array();
        oArray.push(o, ActionType, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);
        //    alert(oArray);

        PromptFormAction(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);

    }

    function ResetFormAction() {
        document.getElementById('txtFormActionName').value = 'Default';

        //Note: The following is intentionally spelled out as parameter name and parameter value
        //      The reason is to alliviate any confusion and to over simplify the code for readability by future developers
        document.getElementById('txtActionParameterOneName').value = '';
        document.getElementById('txtActionParameterOneValue').value = '';

        document.getElementById('txtActionParameterTwoName').value = '';
        document.getElementById('txtActionParameterTwoValue').value = '';

        document.getElementById('txtActionParameterThreeName').value = '';
        document.getElementById('txtActionParameterThreeValue').value = '';

        document.getElementById('txtActionParameterFourName').value = '';
        document.getElementById('txtActionParameterFourValue').value = '';

    }

    function PrepareAndHandleFormPromptReturn(o, DialogBoxName, FormActionTagOne, FormActionTagTwo) {
        var oArray = new Array();
        oArray.push(o, DialogBoxName, FormActionTagOne, FormActionTagTwo);
        //alert(oArray);

        var sActionName = '';
        var sFormActionTagOne = '';
        var sFormActionTagOne = '';


        var sActionParameterOneName = '';
        var sActionParameterOneValue = '';
        var sActionParameterTwoName = '';
        var sActionParameterTwoValue = '';
        var sActionParameterThreeName = '';
        var sActionParameterThreeValue = '';
        var sActionParameterFourName = '';
        var sActionParameterFourValue = '';

        sActionName = document.getElementById('txtFormActionName').value;
        sFormActionTagOne = document.getElementById('txtFormActionTagOne').value;
        sFormActionTagTwo = document.getElementById('txtFormActionTagTwo').value;

        //Note: The following is intentionally spelled out as parameter name and parameter value
        //      The reason is to alliviate any confusion and to over simplify the code for readability by future developers
        sActionParameterOneName = document.getElementById('txtActionParameterOneName').value;
        sActionParameterOneValue = document.getElementById('txtActionParameterOneValue').value;

        sActionParameterTwoName = document.getElementById('txtActionParameterTwoName').value;
        sActionParameterTwoValue = document.getElementById('txtActionParameterTwoValue').value;

        sActionParameterThreeName = document.getElementById('txtActionParameterThreeName').value;
        sActionParameterThreeValue = document.getElementById('txtActionParameterThreeValue').value;

        sActionParameterFourName = document.getElementById('txtActionParameterFourName').value;
        sActionParameterFourValue = document.getElementById('txtActionParameterFourValue').value;

        HandleFormPromptReturn(o, DialogBoxName, sActionName, sFormActionTagOne, sFormActionTagTwo, sActionParameterOneName, sActionParameterOneValue, sActionParameterTwoName, sActionParameterTwoValue, sActionParameterThreeName, sActionParameterThreeValue, sActionParameterFourName, sActionParameterFourValue);
    }

    function PromptFormAction(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue) {
        var sFormAction = '';
        var sFormTarget = 'ContentFrame';
        var oForm = null;

        var oButtonSender = o;
        var sDialogBoxName = "";
        var iDialogWidth = 0;
        var iDialogHeight = 0;


        var oArray = new Array();
        oArray.push(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);
        //alert(oArray);


        switch (ActionName) {

            case 'Update':
                {
                    InvokeFormAction(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);
                    break;
                }
            case 'PromptManageForm':
                {
                    sDialogBoxName = "PromptManageForm";
                    iDialogWidth = 500;
                    iDialogHeight = 320;
                    ShowDialog(oButtonSender, sDialogBoxName, iDialogWidth, iDialogHeight);
                    break;
                }
            case 'DeleteBond':
                {


                    var oTargetAccountNumber = document.getElementById('txtTargetLicenseeNumber');
                    var oTargetSourceForm = document.getElementById('txtTargetSourceForm');
                    var oTargetReportAccountNumber = document.getElementById('txtTargetReportItemNumber');


                    oTargetAccountNumber.value = ActionParameterOneValue;

                    oTargetSourceForm.value = ActionParameterThreeValue;

                    oTargetReportAccountNumber.value = ActionParameterTwoValue;


                    sDialogBoxName = "DeleteBond";
                    iDialogWidth = 300;
                    iDialogHeight = 320;

                    ShowDialog(oButtonSender, sDialogBoxName, iDialogWidth, iDialogHeight);
                    break;
                }
            case 'Direct Invoke':
                {
                    InvokeFormAction(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);
                    break;
                }
            case 'Print':
                {
                    InvokeFormAction(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);
                    break;
                }
            case 'AddBond':
                {
                    sDialogBoxName = "AddBond";
                    iDialogWidth = 400;
                    iDialogHeight = 320;

                    ShowDialog(oButtonSender, sDialogBoxName, iDialogWidth, iDialogHeight);

                    break;
                }
        }

        document.getElementById('txtFormActionName').value = ActionName;

        //Note: The following is intentionally spelled out as parameter name and parameter value
        //      The reason is to alliviate any confusion and to over simplify the code for readability by future developers
        document.getElementById('txtActionParameterOneName').value = ActionParameterOneName;
        document.getElementById('txtActionParameterOneValue').value = ActionParameterOneValue;

        document.getElementById('txtActionParameterTwoName').value = ActionParameterTwoName;
        document.getElementById('txtActionParameterTwoValue').value = ActionParameterTwoValue;

        document.getElementById('txtActionParameterThreeName').value = ActionParameterThreeName;
        document.getElementById('txtActionParameterThreeValue').value = ActionParameterThreeValue;

        document.getElementById('txtActionParameterFourName').value = ActionParameterFourName;
        document.getElementById('txtActionParameterFourValue').value = ActionParameterFourValue;

    }


    function HandleFormPromptReturn(o, DialogBoxName, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue) {
        var sFormAction = '';
        var sFormTarget = 'ContentFrame';
        var oForm = null;

        var oArray = new Array();
        oArray.push(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);
        //alert(oArray);

        switch (ActionName) {
            case 'PromptManageForm':
                {
                    break;
                }
            case 'Update':
                {
                    break;
                }
            case 'AddItem':
                {
                    var oAccountSelection = document.getElementById('cboAccountSelection');

                    ActionParameterThreeName = 'REPORT_ACCOUNT_NUMBER';
                    ActionParameterThreeValue = oAccountSelection.value;

                    break;
                }
            case 'DeleteBond':
                {

                    var oTargetAccountNumber = document.getElementById('txtTargetLicenseeNumber');
                    var oTargetSourceForm = document.getElementById('txtTargetSourceForm');
                    var oTargetReportAccountNumber = document.getElementById('txtTargetReportItemNumber');

                    ActionParameterOneName = 'PARAM_ITEM_NUMBER';
                    ActionParameterOneValue = oTargetAccountNumber.value;

                    ActionParameterTwoName = 'PARAM_SOURCE_FORM';
                    ActionParameterTwoValue = oTargetSourceForm.value;

                    ActionParameterThreeName = 'PARAM_REPORT_ACCOUNT_NUMBER';
                    ActionParameterThreeValue = oTargetReportAccountNumber.value;


                    break;
                }
            case 'PostJournalEntries':
                {
                    break;
                }
            case 'AddBond':
                {
                    break;
                }
        }

        InvokeFormAction(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);
    }

    function InvokeFormAction(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue) {
        var sFormAction = '';
        var sFormTarget = 'ContentFrame';
        var oForm = null;

        var oArray = new Array();
        oArray.push(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);
        //alert(oArray);

        switch (ActionName) {

            case 'Update':
                {
                    sFormAction = '/forms/' + 'F0008_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'AddAccount':
                {
                    sFormAction = '/forms/' + 'F0008_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'DeleteBond':
                {
                    sFormAction = '/forms/' + 'F0008_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'PromptManageForm':
                {
                    ActionName = 'Prompt Manage Form';
                    var oArray = new Array();
                    oArray.push(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);
                    sFormAction = '/forms/' + 'F0008_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'Direct Invoke':
                {
                    //Direct Invoke
                    ActionName = 'Direct Invoke';
                    var oArray = new Array();
                    oArray.push(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);

                    sFormTarget = 'ContentFrame';
                    sFormAction = '/forms/' + 'F0008_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'Print':
                {
                    var sFormName = document.getElementById('txtFormName');
                    InvokeFormReportingAction(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);
                    return;
                }
            case 'AddBond':
                {
                    sFormAction = '/forms/' + 'F0008_FORM.cfm';
                    oForm = document.getElementById('frmMain'); //document.all['frmMain');

                    break;
                }

        }

        document.getElementById('txtFormActionName').value = ActionName;

        //Note: The following is intentionally spelled out as parameter name and parameter value
        //      The reason is to alliviate any confusion and to over simplify the code for readability by future developers
        document.getElementById('txtActionParameterOneName').value = ActionParameterOneName;
        document.getElementById('txtActionParameterOneValue').value = ActionParameterOneValue;

        document.getElementById('txtActionParameterTwoName').value = ActionParameterTwoName;
        document.getElementById('txtActionParameterTwoValue').value = ActionParameterTwoValue;

        document.getElementById('txtActionParameterThreeName').value = ActionParameterThreeName;
        document.getElementById('txtActionParameterThreeValue').value = ActionParameterThreeValue;

        document.getElementById('txtActionParameterFourName').value = ActionParameterFourName;
        document.getElementById('txtActionParameterFourValue').value = ActionParameterFourValue;

        if (oForm != null) {
            oForm.action = sFormAction;
            oForm.target = sFormTarget;
            oForm.submit();
        }


    }
</script>

<script type="text/javascript" language="javascript">

    function SetTotals(o, UniqueIdentifier) {
        var recomma = /,/g;

        try
        {

            //alert("hello");

            var sKeyValuesOne = document.all["txtKeyValueArrayOne"].value;

            var sKeyValuesTwo = document.all["txtKeyValueArrayTwo"].value;

            var sKeyValuesThree = document.all["txtKeyValueArrayThree"].value;

            var KeyValueArrayOne = sKeyValuesOne.split(",");

            var KeyValueArrayTwo = sKeyValuesTwo.split(",");

            var KeyValueArrayThree = sKeyValuesThree.split(",");

            var iCashOnHandTotal = 0;

            //var iCashInTransitTotal = 0;

            //var iAmountTotal = 0;

            var i = 0;

            for (i = 0; i < KeyValueArrayOne.length; i++)
            {

                var sKey = KeyValueArrayOne[i];

                var oCashOnHand = document.all['txtBondAmount_' + sKey];

                //var oCashInTransit = document.all['txtCashInTransit_' + sKey];

                //var oTotal = document.all['txtTotals_' + sKey];

                var iCashOnHand = SafeIntegerParse(oCashOnHand.value.replace('$', '').replace(recomma, ""));

                //var iCashInTransit = SafeIntegerParse(oCashInTransit.value);

                //var iTotal = iCashOnHand + iCashInTransit;

                //oTotal.value = iTotal;

                iCashOnHandTotal += iCashOnHand;

                //iCashInTransitTotal += iCashInTransit;

            }
            var oCashOnHandGrandTotal = document.all['TotalBondAmount'];

            //var oCashInTransitGrandTotal = document.all['txtCashInTransitGrandTotal'];

            //var oTotalGrandTotal = document.all['txtGrandTotals'];

            oCashOnHandGrandTotal.value = formatCurrency(iCashOnHandTotal);

            //oCashInTransitGrandTotal.value = iCashInTransitTotal;

            //oTotalGrandTotal.value = iCashOnHandTotal + iCashInTransitTotal;

        }

        catch (oException)
        {

        }

    }

    function LoadBody()
    {

        try
        {

            //DoPerformRibbonAction(null, 'FormAction', 'PromptManageForm', '', '', '', '', '', '', '', '', '', '');

        }

        catch (oException)
        {

        }

    }

</script>

</head>

<body>

<cfinclude template='FORM_SUBMIT_VALUES_DECLARATION.cfm'></cfinclude>
    <cfinclude template='FORM_HEADER.cfm'></cfinclude>
 <cfset TOTAL_COUNT = 1>
<!---<CFSET PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG = 0>
<CFSET PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG = 0>--->
<CFSET IN_GET_IS_READONLY_ATTRIBUTE = #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)#>
<CFSET APP_PARAM_SHOW_SIMPLE_DATA_MANIPULATION_INFORMATIVE_MESSAGES = 1>
<CFSET PARAM_SOURCE_FORM  = #IN_SOURCE_FORM#>

<cfif isDefined("session.IdentityType")>
<cfif session.IdentityType EQ 'Internal Auditor'>
    <CFSET PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG = 1>
</cfif>
</cfif>

<cfif IN_FORM_ACTION_NAME EQ 'Update'>
	
	<cfif structKeyExists(Form, "txtKeyValueArrayOne")>

	<cfelse>
		<cfset IN_FORM_ACTION_NAME = ''>
	</cfif> 
</cfif>

<cfif IN_FORM_ACTION_NAME EQ 'Update'>
	
	<cfif structKeyExists(Form, "txtKeyValueArrayOne")>

	<cfelse>
		<cfset IN_FORM_ACTION_NAME = ''>
	</cfif>
</cfif>

<cfif IN_FORM_ACTION_NAME EQ 'Update'>


    <cfset IN_KEY_VALUE_ARRAY_ONE= '#txtKeyValueArrayOne#'>
    <cfset IN_KEY_VALUE_ARRAY_TWO= '#txtKeyValueArrayTwo#'>
    <cfset IN_KEY_VALUE_ARRAY_THREE= '#txtKeyValueArrayThree#'>


    <cfset IN_SOURCE_FORM = ''>
    <cfset IN_PROVIDING_LICENSEE_NUMBER = ''>
    <cfset IN_PROVIDING_AGENCY_PACKAGE_NUMBER = ''>

    <cfset IN_DUE_AMOUNT = 0>

    <cfset OUTPUT_PARAM_RETURN_CODE = 0>
    <cfset OUTPUT_PARAM_INFORMATIVE_MESSAGE = ''>    

    <cfset INDEX_POS = 0>
    <cfloop index ="id" list="#IN_KEY_VALUE_ARRAY_ONE#" delimiters=",">

        <cfset INDEX_POS = INDEX_POS + 1>



        <cfset IN_DETAIL_ITEM_NUMBER= #evaluate("txtDetailItemNumber_#id#")#>   

            <cfset IN_BOND_ISSUER  = #GetFormInputFieldData("txtBondCompanyName_#id#","string", "")#>
            <cfset IN_BOND_NUMBER = #GetFormInputFieldData("txtBondNumber_#id#","string", "")#>
            <cfset IN_BOND_AMOUNT = #GetFormInputFieldData("txtBondAmount_#id#","Float", "0").Replace('$','').Replace(',','','ALL')#>
            <cfset IN_BOND_EXPIRATION = #GetFormInputFieldData("txtExpirationDate_#id#","DATE", "1/1/1900")#>

                 <cfset IN_BOND_EFFECTIVE_DATE = #GetFormInputFieldData("txtEffectiveDate_#id#","DATE", "1/1/1900")#>
            <cfset IN_BOND_ADDRESS = "">
            <cfset IN_BOND_CITY = #GetFormInputFieldData("txtCity_#id#","string", "")#>
            <cfset IN_BOND_STATE = #GetFormInputFieldData("ddlBondState_#id#","string", "")#>
            <cfset IN_BOND_ZIP = #GetFormInputFieldData("txtZip_#id#","string", "")#>
            <cfset IN_BOND_PHONE = #GetFormInputFieldData("txtPhone_#id#","string", "")#>
            <cfset IN_BOND_LOCAL_AGENT_BUSINESS = #GetFormInputFieldData("txtLocalAgentBusimess_#id#","string", "")#>

            <cfset IN_BOND_LOCAL_AGENT_OFFICER = #GetFormInputFieldData("txtLocalAgentOfficer_#id#","string", "")#>

        <cfset OUTPUT_PARAM_RETURN_CODE = 0>
        <cfset OUTPUT_PARAM_INFORMATIVE_MESSAGE = ''>




        <cfstoredproc  procedure="SP_BOND_CREDIT_UPDATE" datasource="#application.CCBTConnection#">
        <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="FISCAL_YEAR" value='#IN_FISCAL_YEAR#'>
        <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="LICENSEE_NUMBER" value='#IN_LICENSEE_NUMBER#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="RECORD_TYPE" value='#IN_RECORD_TYPE#'>
        <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="DETAIL_ITEM_NUMBER" value='#IN_DETAIL_ITEM_NUMBER#'> 
			
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_ISSUER" value='#IN_BOND_ISSUER#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_NUMBER" value='#IN_BOND_NUMBER#'>
        <cfprocparam  cfsqltype="CF_SQL_FLOAT" variable="BOND_AMOUNT" value='#IN_BOND_AMOUNT#'>
        <cfprocparam  cfsqltype="CF_SQL_DATE" variable="BOND_EXPIRATION" value='#IN_BOND_EXPIRATION#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_ADDRESS" value='#IN_BOND_ADDRESS#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_CITY" value='#IN_BOND_CITY#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_STATE" value='#IN_BOND_STATE#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_ZIP" value='#IN_BOND_ZIP#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_PHONE" value='#IN_BOND_PHONE#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_LOCAL_AGENT_BUSINESS" value='#IN_BOND_LOCAL_AGENT_BUSINESS#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_LOCAL_AGENT_OFFICER" value='#IN_BOND_LOCAL_AGENT_OFFICER#'>
                <cfprocparam  cfsqltype="CF_SQL_DATE" variable="BOND_EFFECTIVE_DATE" value='#IN_BOND_EFFECTIVE_DATE#'>

			
        <cfprocparam cfsqltype="CF_SQL_CHAR" variable="SUBMIT_USER_ID" value='#IN_USER_NAME#'>
			
        <cfprocparam type='out' cfsqltype="CF_SQL_INTEGER" variable="OUTPUT_PARAM_RETURN_CODE">
        <cfprocparam type='out' cfsqltype="CF_SQL_CHAR" variable="OUTPUT_PARAM_INFORMATIVE_MESSAGE">

        <cfprocresult name="STORED_PROCEDURE_RESULT" resultset="1">
        </cfstoredproc>


        <cfif OUTPUT_PARAM_RETURN_CODE neq 0>
            <cfset getPageContext().getCFOutput().clear()>
            <cfcontent reset="true"></cfcontent>

            <cfset DIALOG_MESSAGE_CODE = #OUTPUT_PARAM_RETURN_CODE#>
            <cfset DIALOG_MESSAGE_INFORMATIVE_MESSAGE = '#OUTPUT_PARAM_INFORMATIVE_MESSAGE#'>
        
            <cfinclude template='DIALOG_ERROR_MESSAGE.cfm'></cfinclude>

            <cfexit>

        <cfelse>
        </cfif>


    </cfloop>

        <cfif APP_PARAM_SHOW_SIMPLE_DATA_MANIPULATION_INFORMATIVE_MESSAGES eq 1>
            <cfset getPageContext().getCFOutput().clear()>
            <cfcontent reset="true"></cfcontent>

            <cfset DIALOG_MESSAGE_CODE = #OUTPUT_PARAM_RETURN_CODE#>
            <cfset DIALOG_MESSAGE_INFORMATIVE_MESSAGE = '#OUTPUT_PARAM_INFORMATIVE_MESSAGE#'>
            
            <cfinclude template='DIALOG_INFORMATIVE_MESSAGE_EX.cfm'></cfinclude>

            <cfexit>
        </cfif>


</cfif>


<cfif IN_FORM_ACTION_NAME EQ 'AddBond'>

 <cfif trim(#BondIssuer#) neq "" >
        <cfset IN_BOND_ISSUER = #BondIssuer#>
     <cfelse>
        <cfset IN_BOND_ISSUER = "">
     </cfif>

     <cfif trim(#BondNumber#) neq "" >
        <cfset IN_BOND_NUMBER = #BondNumber#>
     <cfelse>
        <cfset IN_BOND_NUMBER = "">
     </cfif>
      <cfif trim(#BondExpiration#) neq "" >
        <cfset IN_BOND_EXPIRATION = #BondExpiration#>
     <cfelse>
        <cfset IN_BOND_EXPIRATION = "">
     </cfif>
           <cfif trim(#BondEffective#) neq "" >
        <cfset IN_BOND_EFFECTIVE_DATE = #BondEffective#>
     <cfelse>
        <cfset IN_BOND_EFFECTIVE_DATE = "">
     </cfif>


     
      <cfif trim(#BondAddress#) neq "" >
        <cfset IN_BOND_ADDRESS = #BondAddress#>
     <cfelse>
        <cfset IN_BOND_ADDRESS = "">
     </cfif>

      <cfif trim(#BondCity#) neq "" >
        <cfset IN_BOND_CITY = #BondCity#>
     <cfelse>
        <cfset IN_BOND_CITY = "">
     </cfif>
       <cfif trim(#BondState#) neq "" >
        <cfset IN_BOND_STATE = #BondState#>
     <cfelse>
        <cfset IN_BOND_STATE = "">
     </cfif>

        <cfif trim(#BondZip#) neq "" >
        <cfset IN_BOND_ZIP = #BondZip#>
     <cfelse>
        <cfset IN_BOND_ZIP = "">
     </cfif>
      <cfif trim(#BondPhone#) neq "" >
        <cfset IN_BOND_PHONE = #BondPhone#>
     <cfelse>
        <cfset IN_BOND_PHONE = "">
     </cfif>
       <cfif trim(#BondLocalAgentBusiness#) neq "" >
        <cfset IN_BOND_LOCAL_AGENT_BUSINESS = #BondLocalAgentBusiness#>
     <cfelse>
        <cfset IN_BOND_LOCAL_AGENT_BUSINESS = "">
     </cfif>

         <cfif trim(#BondLocalAgentOfficer#) neq "" >
        <cfset IN_BOND_LOCAL_AGENT_OFFICER = #BondLocalAgentOfficer#>
     <cfelse>
        <cfset IN_BOND_LOCAL_AGENT_OFFICER = "">
     </cfif>
        

    <cfset amtHeld = #BondAmt.Replace('$','').Replace(',','','ALL')#>
      <cfif trim(#BondAmt#) neq "" and isnumeric(#amtHeld#)>
        <cfset IN_BOND_AMOUNT = #BondAmt.Replace('$','').Replace(',','','ALL')#>
     <cfelse>
        <cfset IN_BOND_AMOUNT = 0>
     </cfif>

   
    <cfset IN_ADD_PROVIDING_LICENSEE_NUMBER = '#IN_FORM_ACTION_PARAMETER_ONE_VALUE#'>
    <cfset IN_ADD_PROVIDING_AGENCY_PACKAGE_NUMBER = '#IN_FORM_ACTION_PARAMETER_TWO_VALUE#'>


    <cfset OUTPUT_PARAM_RETURN_CODE = 0>
    <cfset OUTPUT_PARAM_INFORMATIVE_MESSAGE = ''>

    <cfstoredproc  procedure="SP_BOND_CREDIT_ADD" datasource="#application.CCBTConnection#">

            <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="FISCAL_YEAR" value='#IN_FISCAL_YEAR#'>
        <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="LICENSEE_NUMBER" value='#IN_LICENSEE_NUMBER#'>

        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="RECORD_TYPE" value='#IN_RECORD_TYPE#'>

        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_ISSUER" value='#IN_BOND_ISSUER#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_NUMBER" value='#IN_BOND_NUMBER#'>
        <cfprocparam  cfsqltype="CF_SQL_FLOAT" variable="BOND_AMOUNT" value='#IN_BOND_AMOUNT#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_EXPIRATION" value='#IN_BOND_EXPIRATION#'>

        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_ADDRESS" value='#IN_BOND_ADDRESS#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_CITY" value='#IN_BOND_CITY#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_STATE" value='#IN_BOND_STATE#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_ZIP" value='#IN_BOND_ZIP#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_PHONE" value='#IN_BOND_PHONE#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_LOCAL_AGENT_BUSINESS" value='#IN_BOND_LOCAL_AGENT_BUSINESS#'>
   

        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_LOCAL_AGENT_OFFICER" value='#IN_BOND_LOCAL_AGENT_OFFICER#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="BOND_EFFECTIVE_DATE" value='#IN_BOND_EFFECTIVE_DATE#'>

        <cfprocparam cfsqltype="CF_SQL_CHAR" variable="SUBMIT_USER_ID" value="#IN_USER_NAME#">
        <cfprocparam type='out' cfsqltype="CF_SQL_INTEGER" variable="OUTPUT_PARAM_RETURN_CODE">
        <cfprocparam type='out' cfsqltype="CF_SQL_CHAR" variable="OUTPUT_PARAM_INFORMATIVE_MESSAGE">          

        
        <cfprocresult name="STORED_PROCEDURE_RESULT_1" resultset="1">
    </cfstoredproc>




  <cfif OUTPUT_PARAM_RETURN_CODE neq 0>
        <cfset getPageContext().getCFOutput().clear()>
        <cfcontent reset="true"></cfcontent>

        <cfset DIALOG_MESSAGE_CODE = #OUTPUT_PARAM_RETURN_CODE#>
        <cfset DIALOG_MESSAGE_INFORMATIVE_MESSAGE = '#OUTPUT_PARAM_INFORMATIVE_MESSAGE#'>
        
        <cfinclude template='DIALOG_INFORMATIVE_MESSAGE_EX.cfm'></cfinclude>

        <cfexit>

    <cfelse>
        <cfif APP_PARAM_SHOW_SIMPLE_DATA_MANIPULATION_INFORMATIVE_MESSAGES eq 1>
        <cfset getPageContext().getCFOutput().clear()>
        <cfcontent reset="true"></cfcontent>

        <cfset DIALOG_MESSAGE_CODE = #OUTPUT_PARAM_RETURN_CODE#>
        <cfset DIALOG_MESSAGE_INFORMATIVE_MESSAGE = '#OUTPUT_PARAM_INFORMATIVE_MESSAGE#'>
        
        <cfinclude template='DIALOG_INFORMATIVE_MESSAGE_EX.cfm'></cfinclude>

        <cfexit>
        </cfif>
    </cfif>
</cfif>

<cfif IN_FORM_ACTION_NAME EQ 'DeleteBond'>

    <cfset IN_ADD_PROVIDING_LICENSEE_NUMBER = '#IN_FORM_ACTION_PARAMETER_ONE_VALUE#'>
    <cfset IN_ADD_PROVIDING_AGENCY_PACKAGE_NUMBER = '#IN_FORM_ACTION_PARAMETER_THREE_VALUE#'>


    <cfset OUTPUT_PARAM_RETURN_CODE = 0>
    <cfset OUTPUT_PARAM_INFORMATIVE_MESSAGE = ''>

    <cfstoredproc  procedure="SP_BOND_CREDIT_DELETE" datasource="#application.CCBTConnection#">

            <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="FISCAL_YEAR" value=#IN_FISCAL_YEAR#>
        <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="LICENSEE_NUMBER" value='#IN_LICENSEE_NUMBER#'>

        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="RECORD_TYPE" value='#IN_RECORD_TYPE#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="DETAIL_ITEM_NUMBER" value='#IN_FORM_ACTION_PARAMETER_THREE_VALUE#'>


        <cfprocparam cfsqltype="CF_SQL_CHAR" variable="SUBMIT_USER_ID" value="#IN_USER_NAME#">

        <cfprocparam type='out' cfsqltype="CF_SQL_INTEGER" variable="OUTPUT_PARAM_RETURN_CODE">
        <cfprocparam type='out' cfsqltype="CF_SQL_CHAR" variable="OUTPUT_PARAM_INFORMATIVE_MESSAGE">


        <cfprocresult name="STORED_PROCEDURE_RESULT_1" resultset="1">
    </cfstoredproc>



<cfif OUTPUT_PARAM_RETURN_CODE neq 0>
        <cfset getPageContext().getCFOutput().clear()>
        <cfcontent reset="true"></cfcontent>

        <cfset DIALOG_MESSAGE_CODE = #OUTPUT_PARAM_RETURN_CODE#>
        <cfset DIALOG_MESSAGE_INFORMATIVE_MESSAGE = '#OUTPUT_PARAM_INFORMATIVE_MESSAGE#'>
        
        <cfinclude template='DIALOG_INFORMATIVE_MESSAGE_EX.cfm'></cfinclude>

        <cfexit>

    <cfelse>
        <cfif APP_PARAM_SHOW_SIMPLE_DATA_MANIPULATION_INFORMATIVE_MESSAGES eq 1>
        <cfset getPageContext().getCFOutput().clear()>
        <cfcontent reset="true"></cfcontent>

        <cfset DIALOG_MESSAGE_CODE = #OUTPUT_PARAM_RETURN_CODE#>
        <cfset DIALOG_MESSAGE_INFORMATIVE_MESSAGE = '#OUTPUT_PARAM_INFORMATIVE_MESSAGE#'>
        
        <cfinclude template='DIALOG_INFORMATIVE_MESSAGE_EX.cfm'></cfinclude>

        <cfexit>
        </cfif>
    </cfif>
</cfif>


<form id="frmMain" name="frmMain" method="post" action="" enctype="multipart/form-data">

    <cfstoredproc  procedure="SP_BOND_CREDIT_LOAD" datasource="#application.CCBTConnection#">
    <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="FISCAL_YEAR" value = #IN_FISCAL_YEAR#>

    <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="LICENSEE_NUMBER" value = #IN_LICENSEE_NUMBER#>
    
    <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="RECORD_TYPE" value='#IN_RECORD_TYPE#'>
    <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="ROW_ID" value= -1>
    <cfprocparam cfsqltype="CF_SQL_CHAR" variable="SUBMIT_USER_ID" value="#IN_USER_NAME#">
    
    <cfprocresult name="STORED_PROCEDURE_RESULT_1" resultset="1">
    </cfstoredproc>


<cfquery name="qrySelectStates" datasource="#application.CCBTConnection#">
SELECT * 
FROM STATE_PROVINCE
ORDER BY STATE_NAME
</cfquery>



    <table class="clsFormTable" border='0' cellspacing='0' cellpadding='4' style="width:800px;margin-left: auto;margin-right: auto;margin-top: auto;margin-bottom: auto;">

    <tr>
        <td colspan="4" class="clsFormHeading">FUNERAL BOND OR LETTER OF CREDIT</td>
    </tr>
    <tr class="clsFormInstructionsLabel">
        <td colspan="4" style="text-align:left;"><strong>Instructions:</strong>
        Please review and complete the requested information below. To change current information, simply overwrite in the field. To save completed form click 'Save' button. Enter a new bond or letter of credit by using the &#39;Add &#39; button. To remove a bond/letter of credit click &#39;Delete&#39; button. Each licensee must maintain a bond with a surety company or an irrevocable, unconditional letter of credit issued by a bank, credit union, or 
        trust company of at least $1,000. The bond or letter of credit must &quot;run to&quot; or &quot;indemnify&quot; the Comptroller, State of Illinois, and must be secured by an entity authorized to do business in the State of Illinois.</td>
    </tr>
    <tr >
    <td colspan="4"></td>
    </tr>
        
    <cfset DELIMITED_KEY_VALUE_ARRAY_ONE = "">
    <cfset DELIMITED_KEY_VALUE_ARRAY_TWO = "">
    <cfset DELIMITED_KEY_VALUE_ARRAY_THREE = "">
    <cfset DELIMITED_KEY_VALUE_ARRAY_FOUR = "">
    <cfif STORED_PROCEDURE_RESULT_1.RecordCount EQ 0>
    <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''>
        <tr >
        <td colspan="4" ></td>
        </tr>
    </cfif>
    </cfif>
     <tr >
    <td colspan="4"></td>
    </tr>
<cfloop query="STORED_PROCEDURE_RESULT_1">
        <cfset PARAM_DETAIL_ITEM_NUMBER = #STORED_PROCEDURE_RESULT_1.DETAIL_ITEM_NUMBER#>
        <cfset PARAM_ACCOUNT_RECORD_TYPE = #STORED_PROCEDURE_RESULT_1.RECORD_TYPE#>
        <cfif Len(DELIMITED_KEY_VALUE_ARRAY_ONE) gt 0>
        <cfset DELIMITED_KEY_VALUE_ARRAY_ONE = DELIMITED_KEY_VALUE_ARRAY_ONE & ","></cfif>
        <cfset DELIMITED_KEY_VALUE_ARRAY_ONE = DELIMITED_KEY_VALUE_ARRAY_ONE & PARAM_DETAIL_ITEM_NUMBER>
       <cfset FORM_ROW_CLASS = "clsFormRow#iif(STORED_PROCEDURE_RESULT_1.currentrow MOD 2, DE('Dark'),DE('Light'))#">
<cfoutput>
    <tr>
    <td colspan="3" class="clsFormSectionHeading">Funeral Bond Or Letter of Credit</td>
    <td class="clsFormSectionHeading"><cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''><input type='button' value='Delete' <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> onclick="javascript:PromptFormAction(this, 'DeleteBond', 'Default', 'Default', 'PROVIDING_LICENSEE_NUMBER', '#STORED_PROCEDURE_RESULT_1.LICENSEE_NUMBER#', 'PROVIDING_DETAILED_ITEM_NUMBER', '#PARAM_DETAIL_ITEM_NUMBER#', '', '', '', '');"></cfif></td>
    </tr>

    <tr>
        <td>&nbsp;</td>
        <td>&nbsp</td>
        <td>&nbsp</td>
        <td>&nbsp</td>
    </tr>

    <tr>
    <td><input style="width:100px;" type="hidden" name="txtDetailItemNumber_#PARAM_DETAIL_ITEM_NUMBER#" id="txtDetailItemNumber_#PARAM_DETAIL_ITEM_NUMBER#" value="#PARAM_DETAIL_ITEM_NUMBER#" style="display:none;"/></td>
    <td class="clsFormColumnarHeadingLabelNarrow">Bond Company or Bank Holding Letter of Credit</td>
    <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:320px;" type="text" class="clsFormFieldTextInputWritable" name="txtBondCompanyName_#PARAM_DETAIL_ITEM_NUMBER#" 
    id="txtBondCompanyName_#PARAM_DETAIL_ITEM_NUMBER#" value="#STORED_PROCEDURE_RESULT_1.BOND_ISSUER#" maxlength="40" />
    </td>
    <td>&nbsp</td>

    </tr>

    
    <tr>
    <td></td>
    <td class="clsFormColumnarHeadingLabelNarrow">Bond/Letter of Credit(LOC)</td>
    <td>

    
   

   <select name="txtBondNumber_#PARAM_DETAIL_ITEM_NUMBER#" id="txtBondNumber_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldOption" style="height:28px; width:150px;"  <cfif #PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG# eq 1>  disabled="disabled" </cfif> <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> >
<option value="0" <cfif #STORED_PROCEDURE_RESULT_1.BOND_NUMBER# EQ "0"> selected</cfif>>--Select--</option>
<option value="Bond" <cfif #STORED_PROCEDURE_RESULT_1.BOND_NUMBER# EQ "Bond"> selected</cfif>>Bond</option>
<option value="Letter of Credit" <cfif #STORED_PROCEDURE_RESULT_1.BOND_NUMBER# EQ "Letter of Credit"> selected</cfif>>Letter of Credit</option>
</select>
</td>

    <!---<input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:100px;" id="txtBondNumber_#PARAM_DETAIL_ITEM_NUMBER#" 
    class="clsFormFieldTextInputWritable" 
    name="txtBondNumber_#PARAM_DETAIL_ITEM_NUMBER#" 
    type="text" value="#STORED_PROCEDURE_RESULT_1.BOND_NUMBER#" 
    maxlength="15"/>
    </td>
    <td>&nbsp</td>--->

    </tr>

    <tr>
    <td></td>
    <td class="clsFormColumnarHeadingLabelNarrow">Expiration Date</td>
    <td><input style="width:100px;" id="txtExpirationDate_#PARAM_DETAIL_ITEM_NUMBER#" 
    class="clsFormFieldTextInputWritable" #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)#
    name="txtExpirationDate_#PARAM_DETAIL_ITEM_NUMBER#" type="text" 
    value="#STORED_PROCEDURE_RESULT_1.BOND_EXPIRATION#" tabindex="3"
    <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''> onkeypress="javascript:HandleUserInput(this, '9765#PARAM_DETAIL_ITEM_NUMBER#', 'Date');" </cfif>
       onblur="javascript:checkDate(this,9765#PARAM_DETAIL_ITEM_NUMBER#);"/>&nbsp;
	   <cfif isDefined("session.IdentityType")>
       <cfif session.IdentityType eq 'Internal Auditor'>
       <cfelseif #PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG# eq 0><a href="javascript:NewCal('txtExpirationDate_#PARAM_DETAIL_ITEM_NUMBER#','mmddyyyy')"><img src="/images/forms/cal.gif" width="18" height="18" border="0" alt="Pick a date"></a>
       </cfif></cfif></td>
    <td>&nbsp</td>
    </tr>

    <div name="trRecordExtendedInformation_Error_9765#PARAM_DETAIL_ITEM_NUMBER#" id="dvRecordEntry_9765#PARAM_DETAIL_ITEM_NUMBER#">
        <tr name="trRecordExtendedInformation_Error_9765#PARAM_DETAIL_ITEM_NUMBER#" id="trRecordExtendedInformation_Error_9765#PARAM_DETAIL_ITEM_NUMBER#" style="display:none">
            <td>&nbsp;</td>
            <td colspan="3">
                <div id="dv_Error_Label_9765">
                    <table class="clsFormFieldValidationMessage">
                        <tr>
                            <td width="37"><img name="imgInformativeMessageIndicatorImage_9765#PARAM_DETAIL_ITEM_NUMBER#" id="imgInformativeMessageIndicatorImage_9765#PARAM_DETAIL_ITEM_NUMBER#" src="/images/forms/validation_error.png" width="32" height="32" /></td>
                            <td>
                            <div id="dvInformativeMessageText_9765#PARAM_DETAIL_ITEM_NUMBER#">Here the User will see informative messages Pertaining to Data &nbsp;Entry Errors</div>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </div>


    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Effective Date</td>
        <td><input style="width:100px;" id="txtEffectiveDate_#PARAM_DETAIL_ITEM_NUMBER#" #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)#
        class="clsFormFieldTextInputWritable" 
        name="txtEffectiveDate_#PARAM_DETAIL_ITEM_NUMBER#" type="text" 
        value="#STORED_PROCEDURE_RESULT_1.BOND_EFFECTIVE_DATE#" tabindex="4"
       <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''> onkeypress="javascript:HandleUserInput(this, '9766#PARAM_DETAIL_ITEM_NUMBER#', 'Date');" 
        onblur="javascript:checkDate(this,9766#PARAM_DETAIL_ITEM_NUMBER#);" </cfif>/>&nbsp;
		<cfif isDefined("session.IdentityType")>
        <cfif session.IdentityType eq 'Internal Auditor'>
        <cfelseif #PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG# eq 0><a href="javascript:NewCal('txtEffectiveDate_#PARAM_DETAIL_ITEM_NUMBER#','mmddyyyy')"><img src="/images/forms/cal.gif" width="18" height="18" border="0" alt="Pick a date"></a></cfif></cfif></td>
      <td>&nbsp</td>
    </tr>

     <div name="dvRecordEntry_9766#PARAM_DETAIL_ITEM_NUMBER#" id="dvRecordEntry_9766#PARAM_DETAIL_ITEM_NUMBER#">
        <tr name="trRecordExtendedInformation_Error_9766#PARAM_DETAIL_ITEM_NUMBER#" id="trRecordExtendedInformation_Error_9766#PARAM_DETAIL_ITEM_NUMBER#" style="display:none">
            <td>&nbsp;</td>
            <td colspan="3"><div id="dv_Error_Label_9766">
                <table class="clsFormFieldValidationMessage">
                    <tr>
                        <td width="37"><img name="imgInformativeMessageIndicatorImage_9766#PARAM_DETAIL_ITEM_NUMBER#" id="imgInformativeMessageIndicatorImage_9766#PARAM_DETAIL_ITEM_NUMBER#" src="/images/forms/validation_error.png" width="32" height="32" /></td>
                        <td>
                        <div id="dvInformativeMessageText_9766#PARAM_DETAIL_ITEM_NUMBER#">Here the User will see informative messages Pertaining to Data &nbsp;Entry Errors</div>
                        </td>
                    </tr>
                </table>
            </div>
            </td>
        </tr>
    </div>


    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Bond Amount</td>
        <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)#  type="text" class="clsFormFieldNumericTextInputWritable" name="txtBondAmount_#PARAM_DETAIL_ITEM_NUMBER#" id="txtBondAmount_#PARAM_DETAIL_ITEM_NUMBER#"  
        <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''> onkeypress="javascript:HandleUserInput(this, '8888#PARAM_DETAIL_ITEM_NUMBER#', 'Float');" </cfif>
        
        onchange="SetTotals(this,'#PARAM_DETAIL_ITEM_NUMBER#');"
               <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''>  onblur="javascript:validateFloatOnBlur(this,'8888#PARAM_DETAIL_ITEM_NUMBER#');"</cfif>  value="#NumberFormat(STORED_PROCEDURE_RESULT_1.BOND_AMOUNT, '$,.00')#" 
        maxlength="13" /></td>

        <td>&nbsp</td>
    </tr>


<div name="trRecordExtendedInformation_Error_8888#PARAM_DETAIL_ITEM_NUMBER#" id="dvRecordEntry_8888#PARAM_DETAIL_ITEM_NUMBER#">
    <cfoutput>
        <tr name="trRecordExtendedInformation_Error_8888#PARAM_DETAIL_ITEM_NUMBER#" id="trRecordExtendedInformation_Error_8888#PARAM_DETAIL_ITEM_NUMBER#" style="display:none">
            <td>&nbsp;</td>

            <td colspan="3">
                <div id="dv_Error_Label_8888#PARAM_DETAIL_ITEM_NUMBER#">
                    <table class="clsFormFieldValidationMessage">
                        <tr>
                        <td width="37"><img name="imgInformativeMessageIndicatorImage_8888#PARAM_DETAIL_ITEM_NUMBER#" id="imgInformativeMessageIndicatorImage_8888#PARAM_DETAIL_ITEM_NUMBER#" src="/images/forms/validation_error.png" width="32" height="32" /></td>
                        <td>
                        <div id="dvInformativeMessageText_8888#PARAM_DETAIL_ITEM_NUMBER#">Here the User will see informative messages Pertaining to Data &nbsp;Entry Errors</div></td>
                        </tr>
                    </table>
                </div>
            </td>

        </tr>
    </cfoutput>
</div>

    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Business Address of Local Agent or Bank</td>
        <td><input style="width:320px;" id="txtLocalAgentBusimess_#PARAM_DETAIL_ITEM_NUMBER#"
        #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# 
        class="clsFormFieldTextInputWritableShort" 
        name="txtLocalAgentBusimess_#PARAM_DETAIL_ITEM_NUMBER#" type="text" 
        value="#STORED_PROCEDURE_RESULT_1.BOND_LOCAL_AGENT_BUSINESS#" maxlength="40"/></td>
        </td>
        <td>&nbsp</td>
    </tr>
    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Name of Local Agent or Bank Trust Officer</td>
        <td class="style3"><input style="width:320px;" id="txtLocalAgentOfficer_#PARAM_DETAIL_ITEM_NUMBER#" 
        #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)#
        class="clsFormFieldTextInputWritableShort" 
        name="txtLocalAgentOfficer_#PARAM_DETAIL_ITEM_NUMBER#" type="text" 
        value="#STORED_PROCEDURE_RESULT_1.BOND_LOCAL_AGENT_OFFICER#" maxlength="40"/></td>
        </td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">City</td>
        <td class="style3"><input style="width:100px;" id="txtCity_#PARAM_DETAIL_ITEM_NUMBER#" 
        #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)#
        class="clsFormFieldTextInputWritableShort" 
        name="txtCity_#PARAM_DETAIL_ITEM_NUMBER#" type="text" 
        value="#STORED_PROCEDURE_RESULT_1.BOND_CITY#" maxlength="25"/></td>
        </td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">State</td>
        <td class="style3"><select #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:100px; height:28px;" name="ddlBondState_#PARAM_DETAIL_ITEM_NUMBER#" id="ddlBondState_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldOption" <cfif #PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG# eq 1>disabled="disabled"</cfif> <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> >
        <option value=""></option>
        <cfloop query="qrySelectStates">
        <cfif qrySelectStates.STATE_ID eq #STORED_PROCEDURE_RESULT_1.BOND_STATE#>
        <option value="#STATE_ID#" selected>#STATE_NAME#</option>
        <cfelse>
        <option value="#STATE_ID#">#STATE_NAME#</option>		
        </cfif>
        </cfloop>						
        </select></td>
        </td>
        <td></td>
    </tr>

  <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">ZIP</td>
        <td class="style3"><input style="width:100px;" id="txtZip_#PARAM_DETAIL_ITEM_NUMBER#" 
        #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)#
        class="clsFormFieldTextInputWritableShort" 
        name="txtZip_#PARAM_DETAIL_ITEM_NUMBER#" type="text" 
        value="#STORED_PROCEDURE_RESULT_1.BOND_ZIP#"           <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''>   onkeypress="javascript:HandleUserInput(this, '6666#PARAM_DETAIL_ITEM_NUMBER#', 'Zip');"
        onblur="javascript:validateZipCode(this,'6666#PARAM_DETAIL_ITEM_NUMBER#');" </cfif>></td>
        </td>
        <td></td>
    </tr>

     <div name="trRecordExtendedInformation_Error_6666#PARAM_DETAIL_ITEM_NUMBER#" id="dvRecordEntry_6666#PARAM_DETAIL_ITEM_NUMBER#">

<tr name="trRecordExtendedInformation_Error_6666#PARAM_DETAIL_ITEM_NUMBER#" id="trRecordExtendedInformation_Error_6666#PARAM_DETAIL_ITEM_NUMBER#" style="display:none">
    <td>&nbsp;</td>

    <td colspan="3"><div id="dv_Error_Label_6666">
        <table class="clsFormFieldValidationMessage">
            <tr>
                <td width="37"><img name="imgInformativeMessageIndicatorImage_6666#PARAM_DETAIL_ITEM_NUMBER#" id="imgInformativeMessageIndicatorImage_6666#PARAM_DETAIL_ITEM_NUMBER#" src="/images/forms/validation_error.png" width="32" height="32" /></td>
                <td>
                <div id="dvInformativeMessageText_6666#PARAM_DETAIL_ITEM_NUMBER#">Here the User will see informative messages Pertaining to Data &nbsp;Entry Errors</div>
                </td>
            </tr>
        </table>
    </div>
    </td>
</tr>
</div>






 <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Phone</td>
        <td class="style3">
            <input style="width:100px;" id="txtPhone_#PARAM_DETAIL_ITEM_NUMBER#" 
            #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)#
            class="clsFormFieldTextInputWritableShort" 
            name="txtPhone_#PARAM_DETAIL_ITEM_NUMBER#" type="text" 
            value="#STORED_PROCEDURE_RESULT_1.BOND_PHONE#" 
            onkeydown="javascript:backspacerDOWN(this,event);" 
    onkeyup="javascript:backspacerUP(this,event);"
            <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''> onblur="javascript:validatePhoneNumber(this,'9999#PARAM_DETAIL_ITEM_NUMBER#');" </cfif> />
        </td>
        <td></td>
</tr>

 <div name="trRecordExtendedInformation_Error_9999#PARAM_DETAIL_ITEM_NUMBER#" id="dvRecordEntry_9999#PARAM_DETAIL_ITEM_NUMBER#">
    <cfoutput>
        <tr name="trRecordExtendedInformation_Error_9999#PARAM_DETAIL_ITEM_NUMBER#" id="trRecordExtendedInformation_Error_9999#PARAM_DETAIL_ITEM_NUMBER#" style="display:none">
                <td>&nbsp;</td>

                <td colspan="3">
                <div id="dv_Error_Label_9999">
                    <table class="clsFormFieldValidationMessage">
                        <tr>
                        <td width="37"><img name="imgInformativeMessageIndicatorImage_9999#PARAM_DETAIL_ITEM_NUMBER#" id="imgInformativeMessageIndicatorImage_9999#PARAM_DETAIL_ITEM_NUMBER#" src="/images/forms/validation_error.png" width="32" height="32" /></td>
                        <td>
                        <div id="dvInformativeMessageText_9999#PARAM_DETAIL_ITEM_NUMBER#">Here the User will see informative messages Pertaining to Data &nbsp;Entry Errors</div></td>
                        </tr>
                    </table>
                </div>
                </td>

        </tr>
    </cfoutput>
</div>


    <tr>
        <td></td>
        <td>
        
        </td>
        <td></td>
        <td></td>
    </tr>
</cfoutput>
</cfloop>

<cfoutput>
<cfif STORED_PROCEDURE_RESULT_1.RecordCount NEQ 0>
    <tr class="clsFormGrandTotalsEmphatic">
        <td></td>
        <td><b>Bond or Letter of Credit Amount Total:</b></td>
        <td >
        <cfif STORED_PROCEDURE_RESULT_1.recordcount GTE 1>
        <input  type="text" class="clsFormFieldNumericTextInputWritable" 
        #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)#
        name="TotalBondAmount" id="Text1"  value="#NumberFormat(STORED_PROCEDURE_RESULT_1.TOTAL_BOND_AMOUNT, '$,.00')#" tabindex="12"
        maxlength="13" readonly=readonly /></cfif></td>
        <td></td>
    </tr>
	 </cfif>
        </cfoutput>






<cfif STORED_PROCEDURE_RESULT_1.SHOW_HIDE EQ 1>
    <cfif STORED_PROCEDURE_RESULT_1.RECORD_TYPE EQ 'IOC'>
        <cfset IN_DETAIL_ITEM_NUMBER = 'Licensee'>
    <cfelse>  
        <cfset IN_DETAIL_ITEM_NUMBER = 'IOC'>
    </cfif>
    <tr>
        <td></td>
        <td colspan="3">
            <img src="../images/hide_show_arrow.png" width="24" height="24" alt="Toggle Hide/Show Subsections" onClick="ToggleExtendedRecordInformationDisplay(this, 0)"; class="clsValueProviderSectionToggle" />
        </td>
    </tr>

   
  

    <cfstoredproc  procedure="SP_BOND_CREDIT_LOAD" datasource="#application.CCBTConnection#">
    <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="FISCAL_YEAR" value = #IN_FISCAL_YEAR#>
    <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="LICENSEE_NUMBER" value = #IN_LICENSEE_NUMBER#>
    <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="RECORD_TYPE" value='#IN_DETAIL_ITEM_NUMBER#'>
    <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="ROW_ID" value = #-1#>
    <cfprocparam cfsqltype="CF_SQL_CHAR" variable="SUBMIT_USER_ID" value="#IN_USER_NAME#">
    <cfprocresult name="_SUBQUERY_RESULTS" resultset="1"></cfstoredproc>
    <cfloop query = "_SUBQUERY_RESULTS">
    <cfoutput>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;"  class="clsFormFieldHiddenValues">
        <td>&nbsp;</td>
        <td colspan="3" class="clsFormHiddenMessage">The Following is what has been reported by (#RECORD_TYPE#) and what is reflected above are values reported by &nbsp; (<cfoutput>#STORED_PROCEDURE_RESULT_1.RECORD_TYPE#</cfoutput>)</td>
    </tr>

    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td>&nbsp;</td>
        <td class="clsFormColumnarHeadingLabelNarrow"
        >Bond Company or Bank Holding Letter of Credit</td>
        <td class="clsFormFieldHiddenValuesData">#BOND_NUMBER#</td>
        <td>&nbsp;</td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td>&nbsp;</td>
        <td class="clsFormColumnarHeadingLabelNarrow">Bond Number</td>
        <td class="clsFormFieldHiddenValuesData">#BOND_NUMBER#</td>
        <td>&nbsp;</td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td>&nbsp;</td>
        <td class="clsFormColumnarHeadingLabelNarrow">Expiration Date</td>
        <td class="clsFormFieldHiddenValuesData">#BOND_EXPIRATION#</td>
        <td>&nbsp;</td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td>&nbsp;</td>
        <td class="clsFormColumnarHeadingLabelNarrow">Effective Date</td>
        <td class="clsFormFieldHiddenValuesData">#BOND_EFFECTIVE_DATE#</td>
        <td>&nbsp;</td>
    </tr>
   
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td>&nbsp;</td>
        <td class="clsFormColumnarHeadingLabelNarrow"> Bond Amount </td>
        <td class="clsFormFieldHiddenValuesData">#NumberFormat(BOND_AMOUNT,'$,.00')#</td>
        <td>&nbsp;</td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td>&nbsp;</td>
        <td class="clsFormColumnarHeadingLabelNarrow">Business Address of Local Agent or Bank</td>
        <td class="clsFormFieldHiddenValuesData">#BOND_LOCAL_AGENT_BUSINESS#</td>
        <td>&nbsp;</td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td>&nbsp;</td>
        <td class="clsFormColumnarHeadingLabelNarrow">Business Address of Local Agent or Bank</td>
        <td class="clsFormFieldHiddenValuesData">#BOND_LOCAL_AGENT_OFFICER#</td>
        <td>&nbsp;</td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td>&nbsp;</td>
        <td class="clsFormColumnarHeadingLabelNarrow"> City</td>
        <td class="clsFormFieldHiddenValuesData">#BOND_CITY#</td>
        <td>&nbsp;</td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td>&nbsp;</td>
        <td class="clsFormColumnarHeadingLabelNarrow"> State </td>
        <td class="clsFormFieldHiddenValuesData">#BOND_STATE#</td>
        <td>&nbsp;</td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td>&nbsp;</td>
        <td class="clsFormColumnarHeadingLabelNarrow"> ZIP </td>
        <td class="clsFormFieldHiddenValuesData">#BOND_ZIP#</td>
        <td>&nbsp;</td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td>&nbsp;</td>
        <td class="clsFormColumnarHeadingLabelNarrow"> Phone </td>
        <td class="clsFormFieldHiddenValuesData">#BOND_PHONE#</td>
        <td>&nbsp;</td>
    </tr>
     <cfset TOTAL_COUNT = #TOTAL_BOND_AMOUNT#>
    <tr>
    <td colspan="6"></td>
    </tr>
      </cfoutput>  
</cfloop>

<cfoutput>
<cfif STORED_PROCEDURE_RESULT_1.RecordCount NEQ 0>
    <tr class="clsFormGrandTotalsEmphatic" name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;">
        <td></td>
        <td><b>Bond or Letter of Credit Amount Total:</b></td>
        <td >
        <cfif STORED_PROCEDURE_RESULT_1.recordcount GTE 1>
        <input  type="text" class="clsFormFieldNumericTextInputWritable" 
        #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)#
        name="TotalBondAmount" id="TotalBondAmount"  value="#NumberFormat(TOTAL_COUNT, '$,.00')#" tabindex="12"
        maxlength="13" readonly=readonly /></cfif></td>
        <td></td>
    </tr>
	 </cfif>
        </cfoutput>
</cfif>
    <tr>
        <td colspan="4"></td>
    </tr>    <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''>
<cfif STORED_PROCEDURE_RESULT_1.RecordCount NEQ 0>
    <tr class="clsFormInstructionsLabel">
        <td colspan="4">Please ensure that the ‘SAVE’ button is clicked before leaving this page. Otherwise any changes made will be lost.</td>
    </tr>
    </cfif>
    <tr>
        <td colspan="3"background="../images/forms/dialog_bottom_tab_middle_gold.png">
        <div style="text-align:center;vertical-align:middle" > 
          <!---Fix: Issue#RecordCount - “Security Enhancement” Deliverable Sandbox Testing Issue --->
         <cfif STORED_PROCEDURE_RESULT_1.RecordCount NEQ 0> 
        <input type="submit" class="clsButtonClass"  value="Save" <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> onclick="javascript:document.getElementById('txtFormActionName').value = 'Update';"/>
       </cfif>
         <!---Fix: Issue#RecordCount - “Security Enhancement” Deliverable Sandbox Testing Issue --->
        <input id="cmdAdd" type="button" class="clsButtonClass"  value="Add Bond or Letter of Credit" <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> onclick="javascript:PromptFormAction(this, 'AddBond', 'Default', 'Default', '', '', '', '', '', '', '', '');"/> 
        </div></td>
         <td  cellspacing="0" style="padding:0px;">
        <img src="../images/forms/dialog_bottom_tab_right_gold.png" height="40px"/></td>
    </tr>
    </cfif>
</table>






<div name="dvDialogUnderlayMask" id="dvDialogUnderlayMask" class="clsDialogUnderlayMaskInActive"></div>
<div id="dvFormSubmitValues" class="clsFormSubmitValuesHidden" >
<cfinclude template='FORM_SUBMIT_VALUES.cfm'></cfinclude>
Form Action Test Buttons
<input type="button" name="cmdCommandOne" id="cmdCommandOne" value="Update"  onClick="javascript:PromptFormAction(this, 'Update', 'Default', 'Default', '', '', '', '', '', '', '', '');" />
<input type="button" name="cmdCommandTwo" id="cmdCommandTwo" value="Manage Journal Entries" onClick="javascript:PromptFormAction(this, 'Manage Journal Entries', 'Default', 'Default', '', '', '', '', '', '', '', '');"/>
<input type="button" name="cmdCommandThree" id="cmdCommandThree" value="Promote The Form" onClick="javascript:PromptFormAction(this, 'Promote The Form', 'Default', 'Default', '', '', '', '', '', '', '', '');"/>
<input type="text" name="txtPromoteToRecordType" id="txtPromoteToRecordType" />
</div>
<cfinclude template='DIALOG_ADD_BOND.cfm'></cfinclude>
<cfinclude template='DIALOG_DELETE_BOND.cfm'></cfinclude>
</form>
</body>
</html>
