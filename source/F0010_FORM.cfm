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
            case 'DeleteInsurance':
                {


                    var oTargetAccountNumber = document.getElementById('txtTargetLicenseeNumber');
                    var oTargetSourceForm = document.getElementById('txtTargetSourceForm');
                    var oTargetReportAccountNumber = document.getElementById('txtTargetReportItemNumber');


                    oTargetAccountNumber.value = ActionParameterOneValue;

                    oTargetSourceForm.value = ActionParameterThreeValue;

                    oTargetReportAccountNumber.value = ActionParameterTwoValue;


                    sDialogBoxName = "DeleteInsurance";
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
            case 'AddInsurance':
                {
                    sDialogBoxName = "AddInsurance";
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
            case 'DeleteInsurance':
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
            case 'AddInsurance':
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
                    sFormAction = '/forms/' + 'F0010_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'AddAccount':
                {
                    sFormAction = '/forms/' + 'F0010_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'DeleteInsurance':
                {
                    sFormAction = '/forms/' + 'F0010_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'PromptManageForm':
                {
                    ActionName = 'Prompt Manage Form';
                    var oArray = new Array();
                    oArray.push(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);
                    sFormAction = '/forms/' + 'F0010_FORM.cfm';
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
                    sFormAction = '/forms/' + 'F0010_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'Print':
                {
                    var sFormName = document.getElementById('txtFormName');
                    InvokeFormReportingAction(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);
                    return;
                }
            case 'AddInsurance':
                {
                    sFormAction = '/forms/' + 'F0010_FORM.cfm';
                    oForm = document.getElementById('frmMain'); //document.getElementById('frmMain');

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
        try {
            var sKeyValuesOne = document.getElementById("txtKeyValueArrayOne").value;
            var sKeyValuesTwo = document.getElementById("txtKeyValueArrayTwo").value;
            var sKeyValuesThree = document.getElementById("txtKeyValueArrayThree").value;


            var KeyValueArrayOne = sKeyValuesOne.split(",");
            var KeyValueArrayTwo = sKeyValuesTwo.split(",");
            var KeyValueArrayThree = sKeyValuesThree.split(",");


            var iYourAmountFieldOneTotal = 0;
            var iYourAmountFieldTwoTotal = 0;
            var iAmountTotal = 0;

            var i = 0;
            for (i = 0; i < KeyValueArrayOne.length; i++) {
                var sKey = KeyValueArrayOne[i];

                var oYourAmountFieldOne = document.getElementById('txtYourAmountFieldOne_' + sKey);
                var oYourAmountFieldTwo = document.getElementById('txtYourAmountFieldTwo_' + sKey);
                var oTotal = document.getElementById('txtTotals_' + sKey);

                var iYourAmountFieldOne = SafeIntegerParse(oYourAmountFieldOne.value);
                var iYourAmountFieldTwo = SafeIntegerParse(oYourAmountFieldTwo.value);
                var iTotal = iYourAmountFieldOne + iYourAmountFieldTwo;
                oTotal.value = iTotal;

                iYourAmountFieldOneTotal += iYourAmountFieldOne;
                iYourAmountFieldTwoTotal += iYourAmountFieldTwo;
            }

            var oYourAmountFieldOneGrandTotal = document.getElementById('txtYourAmountFieldOneGrandTotal');
            var oYourAmountFieldTwoGrandTotal = document.getElementById('txtYourAmountFieldTwoGrandTotal');
            var oTotalGrandTotal = document.getElementById('txtGrandTotals');

            oYourAmountFieldOneGrandTotal.value = iYourAmountFieldOneTotal;
            oYourAmountFieldTwoGrandTotal.value = iYourAmountFieldTwoTotal;
            oTotalGrandTotal.value = iYourAmountFieldOneTotal + iYourAmountFieldTwoTotal;

        }
        catch (oException) {

        }

    }

    function LoadBody() {
        try {
            //DoPerformRibbonAction(null, 'FormAction', 'PromptManageForm', '', '', '', '', '', '', '', '', '', '');
        }
        catch (oException) {

        }
    }

</script>

</head>

<body>

<cfinclude template='FORM_SUBMIT_VALUES_DECLARATION.cfm'></cfinclude>
    <cfinclude template='FORM_HEADER.cfm'></cfinclude>

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
    <cfset IN_LIST_KEY_VALUE_ARRAY_ONE= '#IN_KEY_VALUE_ARRAY_ONE.split(',')#'>

    <cfset INDEX_POS = 0>
    <cfloop index ="id" list="#IN_KEY_VALUE_ARRAY_ONE#" delimiters=",">

        <cfset INDEX_POS = INDEX_POS + 1>

        <cfset IN_SOURCE_FORM = '#IN_LIST_KEY_VALUE_ARRAY_ONE[INDEX_POS]#'>
        
        <cfset IN_DETAIL_ITEM_NUMBER= #evaluate("txtDetailItemNumber_#id#")#>   

        <cfset IN_INSURANCE_FIRST_NAME = #GetFormInputFieldData("txtFirstName_#id#","string", "")#>
        <cfset IN_INSURANCE_LAST_NAME = #GetFormInputFieldData("txtLastName_#id#","string", "")#>
        <cfset IN_INSURANCE_ADDRESS = #GetFormInputFieldData("txtAddress_#id#","string", "")#>
        <cfset IN_INSURANCE_CITY = #GetFormInputFieldData("txtCity_#id#","string", "")#>
        <cfset IN_INSURANCE_STATE = #GetFormInputFieldData("ddlInsuranceState_#id#","string", "")#>
        <cfset IN_INSURANCE_BUSINESS_NAME = #GetFormInputFieldData("txtInsuranceComapnyName_#id#","string", "")#>
        <cfset IN_INSURANCE_NAIC_NUMBER = #GetFormInputFieldData("txtNAIC_#id#","string", "")#>
        <cfset IN_INSURANCE_PHONE = #GetFormInputFieldData("txtPhone_#id#","string", "")#>
        <cfset IN_INSURANCE_FAX = #GetFormInputFieldData("txtFax_#id#","string", "")#>

           
        <cfset OUTPUT_PARAM_RETURN_CODE = 0>
        <cfset OUTPUT_PARAM_INFORMATIVE_MESSAGE = ''>




        <cfstoredproc  procedure="SP_FUNERAL_INSURANCE_UPDATE" datasource="#application.CCBTConnection#">
        <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="FISCAL_YEAR" value='#IN_FISCAL_YEAR#'>
        <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="LICENSEE_NUMBER" value='#IN_LICENSEE_NUMBER#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="RECORD_TYPE" value='#IN_RECORD_TYPE#'>
        <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="DETAIL_ITEM_NUMBER" value='#IN_DETAIL_ITEM_NUMBER#'> 
			
            <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_FIRST_NAME" value='#IN_INSURANCE_FIRST_NAME#'>
            <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_LAST_NAME" value='#IN_INSURANCE_LAST_NAME#'>
            <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_ADDRESS" value='#IN_INSURANCE_ADDRESS#'>
            <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_CITY" value='#IN_INSURANCE_CITY#'>
            <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_STATE" value='#IN_INSURANCE_STATE#'>
            <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_BUSINESS_NAME" value='#IN_INSURANCE_BUSINESS_NAME#'>
            <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_NAIC_NUMBER" value='#IN_INSURANCE_NAIC_NUMBER#'>
            <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_PHONE" value='#IN_INSURANCE_PHONE#'>
            <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_FAX" value='#IN_INSURANCE_FAX#'>
			
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


<cfif IN_FORM_ACTION_NAME EQ 'AddInsurance'>

     <cfif trim(#InsFName#) neq "" >
        <cfset IN_INSURANCE_FIRST_NAME = #InsFName#>
     <cfelse>
        <cfset IN_INSURANCE_FIRST_NAME = "">
     </cfif>

    <cfif trim(#InsLName#) neq "" >
        <cfset IN_INSURANCE_LAST_NAME = #InsLName#>
     <cfelse>
        <cfset IN_INSURANCE_LAST_NAME = "">
     </cfif>

         <cfif trim(#InsAddress#) neq "" >
        <cfset IN_INSURANCE_ADDRESS = #InsAddress#>
     <cfelse>
        <cfset IN_INSURANCE_ADDRESS = "">
     </cfif>

     <cfif trim(#InsCity#) neq "" >
        <cfset IN_INSURANCE_CITY = #InsCity#>
     <cfelse>
        <cfset IN_INSURANCE_CITY = "">
     </cfif>

     <cfif trim(#InsState#) neq "" >
        <cfset IN_INSURANCE_STATE = #InsState#>
     <cfelse>
        <cfset IN_INSURANCE_STATE = "">
     </cfif>

     <cfif trim(#InsBusinessName#) neq "" >
        <cfset IN_INSURANCE_BUSINESS_NAME = #InsBusinessName#>
     <cfelse>
        <cfset IN_INSURANCE_BUSINESS_NAME = "">
     </cfif>
     <cfif trim(#InsNAICNum#) neq "" >
        <cfset IN_INSURANCE_NAIC_NUMBER = #InsNAICNum#>
     <cfelse>
        <cfset IN_INSURANCE_NAIC_NUMBER = "">
     </cfif>
     <cfif trim(#InsPhone#) neq "" >
        <cfset IN_INSURANCE_PHONE = #InsPhone#>
     <cfelse>
        <cfset IN_INSURANCE_PHONE = "">
     </cfif>
     <cfif trim(#InsFax#) neq "" >
        <cfset IN_INSURANCE_FAX = #InsFax#>
     <cfelse>
        <cfset IN_INSURANCE_FAX = "">
     </cfif>

    <cfset IN_ADD_PROVIDING_LICENSEE_NUMBER = '#IN_FORM_ACTION_PARAMETER_ONE_VALUE#'>
    <cfset IN_ADD_PROVIDING_AGENCY_PACKAGE_NUMBER = '#IN_FORM_ACTION_PARAMETER_TWO_VALUE#'>


    <cfset OUTPUT_PARAM_RETURN_CODE = 0>
    <cfset OUTPUT_PARAM_INFORMATIVE_MESSAGE = ''>

    <cfstoredproc  procedure="SP_FUNERAL_INSURANCE_ADD" datasource="#application.CCBTConnection#">
            <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="FISCAL_YEAR" value='#IN_FISCAL_YEAR#'>
        <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="LICENSEE_NUMBER" value=#IN_LICENSEE_NUMBER#>

        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="RECORD_TYPE" value='#IN_RECORD_TYPE#'>

        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_FIRST_NAME" value='#IN_INSURANCE_FIRST_NAME#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_LAST_NAME" value='#IN_INSURANCE_LAST_NAME#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_ADDRESS" value='#IN_INSURANCE_ADDRESS#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_CITY" value='#IN_INSURANCE_CITY#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_STATE" value='#IN_INSURANCE_STATE#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_BUSINESS_NAME" value='#IN_INSURANCE_BUSINESS_NAME#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_NAIC_NUMBER" value='#IN_INSURANCE_NAIC_NUMBER#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_PHONE" value='#IN_INSURANCE_PHONE#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="INSURANCE_FAX" value='#IN_INSURANCE_FAX#'>

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

<cfif IN_FORM_ACTION_NAME EQ 'DeleteInsurance'>

    <cfset IN_ADD_PROVIDING_LICENSEE_NUMBER = '#IN_FORM_ACTION_PARAMETER_ONE_VALUE#'>
    <cfset IN_ADD_PROVIDING_AGENCY_PACKAGE_NUMBER = '#IN_FORM_ACTION_PARAMETER_THREE_VALUE#'>


    <cfset OUTPUT_PARAM_RETURN_CODE = 0>
    <cfset OUTPUT_PARAM_INFORMATIVE_MESSAGE = ''>

    <cfstoredproc  procedure="SP_FUNERAL_INSURANCE_DELETE" datasource="#application.CCBTConnection#">
        <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="FISCAL_YEAR" value=#IN_FISCAL_YEAR#>
        <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="LICENSEE_NUMBER" value=#IN_LICENSEE_NUMBER#>

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

    <cfstoredproc  procedure="SP_FUNERAL_INSURANCE_LOAD" datasource="#application.CCBTConnection#">
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


<table class="clsFormTable" border='0' cellspacing='0' cellpadding='4' style="width:70%;margin-left: auto;margin-right: auto;margin-top: auto;margin-bottom: auto;">
<tr><td colspan="4"  class="clsFormHeading">INSURANCE INFORMATION</td></tr>


    <tr class="clsFormInstructionsLabel">
        <td style="padding:4px;" colspan="4">
        <strong>Instructions:</strong>Please review and complete the requested information below. To change current information, simply overwrite in the field. To save completed form click 'Save' button. Enter a new insurance company by using the &#39;Add &#39; button. To remove an insurance company click &#39;Delete&#39; button.
        </td>
    </tr>

      <tr>
        <td colspan="4"></td>
        </tr>

<cfset DELIMITED_KEY_VALUE_ARRAY_ONE = "">
<cfset DELIMITED_KEY_VALUE_ARRAY_TWO = "">
<cfset DELIMITED_KEY_VALUE_ARRAY_THREE = "">
<cfset DELIMITED_KEY_VALUE_ARRAY_FOUR = "">
<cfif STORED_PROCEDURE_RESULT_1.RecordCount EQ 0>
   <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''>
        <tr>
        <td colspan="4" ></td>
        </tr>
        </cfif>
</cfif>

<cfloop query="STORED_PROCEDURE_RESULT_1">

<cfset PARAM_DETAIL_ITEM_NUMBER = #STORED_PROCEDURE_RESULT_1.DETAIL_ITEM_NUMBER#>
<cfset PARAM_ACCOUNT_RECORD_TYPE = #STORED_PROCEDURE_RESULT_1.RECORD_TYPE#>

<cfif Len(DELIMITED_KEY_VALUE_ARRAY_ONE) gt 0>
<cfset DELIMITED_KEY_VALUE_ARRAY_ONE = DELIMITED_KEY_VALUE_ARRAY_ONE & ",">
</cfif>
    
    <cfset DELIMITED_KEY_VALUE_ARRAY_ONE = DELIMITED_KEY_VALUE_ARRAY_ONE & PARAM_DETAIL_ITEM_NUMBER>
    <cfoutput>
    <tr>  <td colspan="4"><input style="width:100px;" type="hidden" name="txtDetailItemNumber_#PARAM_DETAIL_ITEM_NUMBER#" id="txtDetailItemNumber_#PARAM_DETAIL_ITEM_NUMBER#" value="#PARAM_DETAIL_ITEM_NUMBER#" style="display:none;"/></td>
</tr>

<tr>
        <td colspan="4" class="clsFormSectionSubHeadingLeftJustified">Insurance Information</td>
    <td class="clsFormSectionSubHeadingLeftJustified">
   <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''> <input type='button' value='Delete' <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> onclick="javascript:PromptFormAction(this, 'DeleteInsurance', 'Default', 'Default', 'PROVIDING_LICENSEE_NUMBER', '#STORED_PROCEDURE_RESULT_1.LICENSEE_NUMBER#', 'PROVIDING_DETAILED_ITEM_NUMBER', '#PARAM_DETAIL_ITEM_NUMBER#', '', '', '', '');">
    </cfif></td>
    </tr>

    <tr>
    
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Insurance Company Name</td>
        <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:350px; height:18px;" type="text" class="clsFormFieldTextInputWritableShort" name="txtInsuranceComapnyName_#PARAM_DETAIL_ITEM_NUMBER#" 
        id="txtInsuranceComapnyName_#PARAM_DETAIL_ITEM_NUMBER#" value="#STORED_PROCEDURE_RESULT_1.INSURANCE_BUSINESS_NAME#" maxlength="40"/></td>
        <td></td>

    </tr>


    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Address</td>
        <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:350px; height:18px;" id="txtAddress_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldTextInputWritableShort" 
        name="txtAddress_#PARAM_DETAIL_ITEM_NUMBER#" type="text" value="#STORED_PROCEDURE_RESULT_1.INSURANCE_ADDRESS#" maxlength="40"/></td>
        <td></td>
    </tr>

    <tr>
    <td></td>
    <td class="clsFormColumnarHeadingLabelNarrow">City</td>
    <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:100px; height:18px;" id="txtCity_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldTextInputWritableShort" 
    name="txtCity_#PARAM_DETAIL_ITEM_NUMBER#" type="text" value="#STORED_PROCEDURE_RESULT_1.INSURANCE_CITY#" maxlength="25"/></td>
    <td></td>
    </tr>


    <tr>
    <td></td>
    <td class="clsFormColumnarHeadingLabelNarrow">State</td>
    <td><select style=" height:28px; width:150px;" name="ddlInsuranceState_#PARAM_DETAIL_ITEM_NUMBER#" id="ddlCustState_#PARAM_DETAIL_ITEM_NUMBER#" #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# class="clsFormFieldTextInputWritableShort" 
<cfif #PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG# eq 1>disabled="disabled"</cfif> <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> >
    <cfloop query="qrySelectStates">
    <cfif qrySelectStates.STATE_ID eq #STORED_PROCEDURE_RESULT_1.INSURANCE_STATE#>
    <option value="#STATE_ID#" selected>#STATE_NAME#</option>
    <cfelse>
    <option value="#STATE_ID#">#STATE_NAME#</option>		
    </cfif>
    </cfloop>						
    </select></td>
    <td></td>
    </tr>

    <tr>
    <td></td>
    <td class="clsFormColumnarHeadingLabelNarrow">Contact First Name</td>
    <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:230px; height:18px;" id="txtFirstName_#PARAM_DETAIL_ITEM_NUMBER#"  name="txtFirstName_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldTextInputWritableShort"type="text" value="#STORED_PROCEDURE_RESULT_1.INSURANCE_FIRST_NAME#" maxlength="25"/></td>
    <td></td>
    </tr>

    <tr>
    <td></td>
    <td class="clsFormColumnarHeadingLabelNarrow">Contact Last Name</td>
    <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:230px; height:18px;" id="txtLastName_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldTextInputWritableShort" name="txtLastName_#PARAM_DETAIL_ITEM_NUMBER#" type="text" value="#STORED_PROCEDURE_RESULT_1.INSURANCE_LAST_NAME#" maxlength="25"/></td>
    <td></td>
    </tr>


    <tr>
    <td></td>
    <td class="clsFormColumnarHeadingLabelNarrow">Phone</td>
    <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:100px; height:18px;" id="txtPhone_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldPhone" name="txtPhone_#PARAM_DETAIL_ITEM_NUMBER#" type="text" 
    value="#STORED_PROCEDURE_RESULT_1.INSURANCE_PHONE#" 

    onkeydown="javascript:backspacerDOWN(this,event);" 
onkeyup="javascript:backspacerUP(this,event);"
 <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''>onblur="javascript:validatePhoneNumber(this,'2222#PARAM_DETAIL_ITEM_NUMBER#');"</cfif>
 /></td>
    <td></td>
    </tr>

<div name="trRecordExtendedInformation_Error_2222#PARAM_DETAIL_ITEM_NUMBER#" id="dvRecordEntry_2222#PARAM_DETAIL_ITEM_NUMBER#">
    <cfoutput>
        <tr name="trRecordExtendedInformation_Error_2222#PARAM_DETAIL_ITEM_NUMBER#" id="trRecordExtendedInformation_Error_2222#PARAM_DETAIL_ITEM_NUMBER#" style="display:none">
            <td>&nbsp;</td>

            <td colspan="3">
                <div id="dv_Error_Label_2222#PARAM_DETAIL_ITEM_NUMBER#">
                    <table class="clsFormFieldValidationMessage">
                        <tr>
                        <td width="37"><img name="imgInformativeMessageIndicatorImage_2222#PARAM_DETAIL_ITEM_NUMBER#" id="imgInformativeMessageIndicatorImage_2222#PARAM_DETAIL_ITEM_NUMBER#" src="/images/forms/validation_error.png" width="32" height="32" /></td>
                        <td>
                        <div id="dvInformativeMessageText_2222#PARAM_DETAIL_ITEM_NUMBER#">Here the User will see informative messages Pertaining to Data &nbsp;Entry Errors</div></td>
                        </tr>
                    </table>
                </div>
            </td>

        </tr>
    </cfoutput>
</div>



    <tr>
    <td></td>
    <td class="clsFormColumnarHeadingLabelNarrow">Fax</td>
    <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:100px; height:18px;" id="txtFax_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldPhone" 
    name="txtFax_#PARAM_DETAIL_ITEM_NUMBER#" type="text" value="#STORED_PROCEDURE_RESULT_1.INSURANCE_FAX#"  
    onkeydown="javascript:backspacerDOWN(this,event);" 
onkeyup="javascript:backspacerUP(this,event);"
 <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''> onblur="javascript:validatePhoneNumber(this,'9999#PARAM_DETAIL_ITEM_NUMBER#');" </cfif>
/></td>
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
    <td class="clsFormColumnarHeadingLabelNarrow">NAIC Number</td>
    <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:100px; height:18px;" id="txtNAIC_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldPhone" name="txtNAIC_#PARAM_DETAIL_ITEM_NUMBER#" type="text" 
    value="#STORED_PROCEDURE_RESULT_1.INSURANCE_NAIC_NUMBER#" maxlength="40"/></td>
    <td></td>
    </tr>
    <tr>
    <td></td>
    <td colspan="3">
    </td></tr>
</cfoutput>
</cfloop>




<cfif STORED_PROCEDURE_RESULT_1.SHOW_HIDE EQ 1>  
    <tr>
        <td></td>
        <td colspan="3">
            <img src="../images/hide_show_arrow.png" width="24" height="24" alt="Toggle Hide/Show Subsections" onClick="ToggleExtendedRecordInformationDisplay(this, 0)"; class="clsValueProviderSectionToggle" />
        </td>
    </tr>
      
    <cfif STORED_PROCEDURE_RESULT_1.RECORD_TYPE EQ 'IOC'>
        <cfset IN_DETAIL_ITEM_NUMBER = 'Licensee'>
     <cfelse>  
        <cfset IN_DETAIL_ITEM_NUMBER = 'IOC'>
    </cfif>
<cfstoredproc  procedure="SP_FUNERAL_INSURANCE_LOAD" datasource="#application.CCBTConnection#">
<cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="FISCAL_YEAR" value = #IN_FISCAL_YEAR#>
<cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="LICENSEE_NUMBER" value = #IN_LICENSEE_NUMBER#>
<cfprocparam  cfsqltype="CF_SQL_CHAR" variable="RECORD_TYPE" value='#IN_DETAIL_ITEM_NUMBER#'>
<cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="ROW_ID" value = #-1#>
<cfprocparam cfsqltype="CF_SQL_CHAR" variable="SUBMIT_USER_ID" value="#IN_USER_NAME#">
<cfprocresult name="_SUBQUERY_RESULTS" resultset="1">
</cfstoredproc>
<cfloop query = "_SUBQUERY_RESULTS">
<cfoutput>
<tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;"  class="clsFormFieldHiddenValues">
<td>&nbsp;</td>
<td colspan="3" class="clsFormHiddenMessage">The Following is what has been reported by (#RECORD_TYPE#) and what is reflected above are values reported by &nbsp; (<cfoutput>#STORED_PROCEDURE_RESULT_1.RECORD_TYPE#</cfoutput>)</td>
</tr>

<tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">  
<td></td>
<td class="clsFormColumnarHeadingLabelNarrow"> Insurance Bussiness Name</td>
<td class="clsFormFieldHiddenValues">#INSURANCE_BUSINESS_NAME#</td>
<td></td>
</tr>

<tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">  
<td></td>
<td class="clsFormColumnarHeadingLabelNarrow">Insurance address</td>
<td class="clsFormFieldHiddenValues">#INSURANCE_ADDRESS#</td>
<td></td>
</tr>

<tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">  
<td></td>
<td class="clsFormColumnarHeadingLabelNarrow">Insurance City</td>
<td class="clsFormFieldHiddenValues">#INSURANCE_CITY#</td>
<td></td>
</tr>

<tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">  
<td></td>
<td class="clsFormColumnarHeadingLabelNarrow">Insurance state</td>
<td class="clsFormFieldHiddenValues">#INSURANCE_STATE#</td>
<td></td>
</tr>

<tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">  
<td></td>
<td class="clsFormColumnarHeadingLabelNarrow">Insurance First Name</td>
<td class="clsFormFieldHiddenValues">#INSURANCE_FIRST_NAME#</td>
<td></td>
</tr>

<tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">  
<td></td>
<td class="clsFormColumnarHeadingLabelNarrow">Insurance Last Name</td>
<td class="clsFormFieldHiddenValues">#INSURANCE_LAST_NAME#</td>
<td></td>
</tr>

<tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">  
<td></td>
<td class="clsFormColumnarHeadingLabelNarrow">Insurance Phone</td>
<td class="clsFormFieldHiddenValues">#INSURANCE_PHONE#</td>
<td></td>
</tr>
<tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">  
<td></td>
<td class="clsFormColumnarHeadingLabelNarrow">Insurance Fax</td>
<td class="clsFormFieldHiddenValues">#INSURANCE_FAX#</td>
<td></td>
</tr>
<tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">  
<td></td>
<td class="clsFormColumnarHeadingLabelNarrow">Insurance NAIC Number</td>
<td class="clsFormFieldHiddenValues">#INSURANCE_NAIC_NUMBER#</td>
<td></td>
</tr>
 </cfoutput> 
  </cfloop>
</cfif>
  <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''>
    <tr>
    <td colspan="4"></td>
    </tr>
    <cfif STORED_PROCEDURE_RESULT_1.RecordCount NEQ 0>
    <tr class="clsFormInstructionsLabel">
    <td colspan="6">Please ensure that the ‘SAVE’ button is clicked before leaving this page. Otherwise any changes made will be lost. 
    </td>
    </tr> 
    </cfif>
<tr>
<td colspan="3" background="../images/forms/dialog_bottom_tab_middle_gold.png" align="center" style="font-size:12px;">
<div style="text-align:center;vertical-align:middle" > 
<cfif STORED_PROCEDURE_RESULT_1.RecordCount NEQ 0>
 <!---Fix: Issue#RecordCount - “Security Enhancement” Deliverable Sandbox Testing Issue --->
<!---<cfif IN_FISCAL_YEAR EQ IN_SELECTED_FISCAL_YEAR OR IN_FISCAL_YEAR-1 EQ IN_SELECTED_FISCAL_YEAR>--->
<input class="clsButtonClass" type="submit"   value=" Save " <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> onclick="javascript:PromptFormAction(this, 'Update', 'Default', 'Default', '', '', '', '', '', '', '', '');"/>
 <!---Fix: Issue#RecordCount  --->
</cfif>
<input  class="clsButtonClass" id="cmdAdd" type="button" value="Add Insurance Company" <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> onclick="javascript:PromptFormAction(this, 'AddInsurance', 'Default', 'Default', '', '', '', '', '', '', '', '');"/>
<!---<cfelse>
<input id="Button1" type="button" value="Add" onclick="javascript:PromptFormAction(this, 'AddInsurance', 'Default', 'Default', '', '', '', '', '', '', '', '');" disabled="disabled"/>
<input type="submit" value="Save" onclick="javascript: document.getElementById('txtFormActionName').value = 'Update';" disabled="disabled" />
</cfif>--->

</div></td>
<td cellspacing="0" style="padding:0px;"><img src="../images/forms/dialog_bottom_tab_right_gold.png" height="43px"/></td>
</tr> 
</cfif>
</table>

<div name="dvDialogUnderlayMask" id="dvDialogUnderlayMask" class="clsDialogUnderlayMaskInActive"></div>

<div id="dvFormSubmitValues" class="clsFormSubmitValues" style="display:none"; >
<cfinclude template='FORM_SUBMIT_VALUES.cfm'></cfinclude>
Form Action Test Buttons
<input type="button" name="cmdCommandOne" id="cmdCommandOne" value="Update"  onClick="javascript:PromptFormAction(this, 'Update', 'Default', 'Default', '', '', '', '', '', '', '', '');" />
<input type="button" name="cmdCommandTwo" id="cmdCommandTwo" value="Manage Journal Entries" onClick="javascript:PromptFormAction(this, 'Manage Journal Entries', 'Default', 'Default', '', '', '', '', '', '', '', '');"/>
<input type="button" name="cmdCommandThree" id="cmdCommandThree" value="Promote The Form" onClick="javascript:PromptFormAction(this, 'Promote The Form', 'Default', 'Default', '', '', '', '', '', '', '', '');"/>
<input type="text" name="txtPromoteToRecordType" id="txtPromoteToRecordType" />
</div>

<cfinclude template='DIALOG_ADD_INSURANCE.cfm'></cfinclude>
<cfinclude template='DIALOG_DELETE_INSURANCE.cfm'></cfinclude>
</form>
</body>
</html>
