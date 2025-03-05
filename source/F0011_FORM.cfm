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
<script src="../Scripts/datetimepicker.js?#DUMMY_GUIDE#" type="text/javascript"></script>

<script type="text/javascript" src="../scripts/DialogBoxScript.js?#DUMMY_GUIDE#"></script>
<script src="../scripts/FormDataEntryScripts.js?#DUMMY_GUIDE#" type="text/javascript"></script>
<script src="../scripts/Reporting.js?#DUMMY_GUIDE#" type="text/javascript"></script>
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
            case 'DeleteBranch':
                {


                    var oTargetAccountNumber = document.getElementById('txtTargetLicenseeNumber');
                    var oTargetSourceForm = document.getElementById('txtTargetSourceForm');
                    var oTargetReportAccountNumber = document.getElementById('txtTargetReportItemNumber');


                    oTargetAccountNumber.value = ActionParameterOneValue;

                    oTargetSourceForm.value = ActionParameterThreeValue;

                    oTargetReportAccountNumber.value = ActionParameterTwoValue;


                    sDialogBoxName = "DeleteBranch";
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
            case 'AddBranch':
                {
                    sDialogBoxName = "AddBranch";
                    iDialogWidth = 400;
                    iDialogHeight = 220;

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
            case 'DeleteBranch':
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
            case 'AddBranch':
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
                    sFormAction = '/forms/' + 'F0011_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'AddAccount':
                {
                    sFormAction = '/forms/' + 'F0011_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'DeleteBranch':
                {
                    sFormAction = '/forms/' + 'F0011_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'PromptManageForm':
                {
                    ActionName = 'Prompt Manage Form';
                    var oArray = new Array();
                    oArray.push(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);
                    sFormAction = '/forms/' + 'F0011_FORM.cfm';
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
                    sFormAction = '/forms/' + 'F0011_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'Print':
                {
                    var sFormName = document.getElementById('txtFormName');
                    InvokeFormReportingAction(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);
                    return;
                }
            case 'AddBranch':
                {
                    sFormAction = '/forms/' + 'F0011_FORM.cfm';
                    oForm = document.getElementById('frmMain'); //document.all['frmMain'];

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


<cfif structKeyExists(Form, "txtFormActionName")>
	<cfset IN_FORM_ACTION_NAME = '#txtFormActionName#'>
<cfelse>
	<cfset IN_FORM_ACTION_NAME = 'Default'>
</cfif>


<cfif structKeyExists(Form, "txtActionParameterOne")>
	<cfset IN_FORM_ACTION_PARAMETER_ONE_VALUE = '#txtActionParameterOne#'>
<cfelse>
	<cfset IN_FORM_ACTION_PARAMETER_ONE_VALUE = ''>
</cfif>

<cfif structKeyExists(Form, "txtActionParameterTwo")>
	<cfset IN_FORM_ACTION_PARAMETER_TWO = '#txtActionParameterTwo#'>
<cfelse>
	<cfset IN_FORM_ACTION_PARAMETER_TWO = ''>
</cfif>




<cfif IN_FORM_ACTION_NAME EQ 'Update'>


    <cfset IN_DETAIL_ITEM_NUMBER = '' >
    <cfset IN_BALANCE_PY = '' >
    <cfset IN_ADDITIONS = '' >
    <cfset IN_DELETIONS = '' >
    <cfset IN_BALANCE_CY = ''>
    <cfset IN_CURRENT_PORTION_DUE = '' >
    
    <cfset IN_KEY_VALUE_ARRAY_ONE= '#txtKeyValueArrayOne#'>
    <cfset IN_KEY_VALUE_ARRAY_TWO= '#txtKeyValueArrayTwo#'>
    <cfset OUTPUT_PARAM_RETURN_CODE = 0>
    <cfset OUTPUT_PARAM_INFORMATIVE_MESSAGE = ''>        
    <cfset IN_DETAIL_ITEM_NUMBER = 0 >
    <cfloop index ="id" list="#IN_KEY_VALUE_ARRAY_ONE#" delimiters=",">
    
    <cfset IN_DETAIL_ITEM_NUMBER= #evaluate("txtDetailItemNumber_#id#")#>


     <cfset fileSize = createObject("java","java.io.File").init(#evaluate("txtfile_#id#")#).length()>
       <cfif fileSize GT 0 >
               <cffile action = "upload" 
                       fileField = "txtfile_#id#" 
                       destination = "#UploadDirectory#" 
                       nameConflict = "makeunique"
                       result="status">          
               <cfset sImagePath=#status.ServerFile# >       
   <cfelse>
              
                <cfset sImagePath="">
  

</cfif>
 
    
    <cfset IN_NUMBER_CONTRACTS = #GetFormInputFieldData("txtNumberOfContracts_#id#","Integer", "0")#>
    <cfset IN_TOTAL_CONTRACTS_DUE = #GetFormInputFieldData("txtAssetPricipalCashBy_#id#","FLOAT", "0").Replace('$','').Replace(',','','ALL')#>

    
    <cfif IN_DETAIL_ITEM_NUMBER Eq ''>
    
    </cfif>
    

        <cfif ltrim(IN_DELETIONS) eq '' or not ISNUMERIC(IN_DELETIONS)>
            <cfset IN_DELETIONS=0>
        </cfif>


    <cfstoredproc  procedure="SP_CONTRACTS_DUE_UPDATE" datasource="#application.CCBTConnection#">
        <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="FISCAL_YEAR" value=#IN_FISCAL_YEAR#>
        <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="LICENSEE_NUMBER" value=#IN_LICENSEE_NUMBER#>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="DETAIL_ITEM_NUMBER" value='#IN_DETAIL_ITEM_NUMBER#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="RECORD_TYPE" value='#IN_RECORD_TYPE#'>


        <cfprocparam cfsqltype="CF_SQL_FLOAT" variable="TOTAL_CONTRACTS_DUE" value=#IN_TOTAL_CONTRACTS_DUE#>
        <cfprocparam cfsqltype="CF_SQL_FLOAT" variable="NUMBER_CONTRACTS" value=#IN_NUMBER_CONTRACTS#>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="FileName"  value='#sImagePath#'>


        <cfprocparam cfsqltype="CF_SQL_CHAR" variable="SUBMIT_USER_ID" value="#IN_USER_NAME#">
        
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



<form id="frmMain" name="frmMain" method="post" action="" enctype="multipart/form-data">

    <cfstoredproc  procedure="SP_CONTRACTS_DUE_LOAD" datasource="#application.CCBTConnection#">

    <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="FISCAL_YEAR" value = #IN_FISCAL_YEAR#>

    <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="LICENSEE_NUMBER" value = #IN_LICENSEE_NUMBER#>
    
    <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="RECORD_TYPE" value='#IN_RECORD_TYPE#'>
    <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="ROW_ID" value= -1>
    <cfprocparam cfsqltype="CF_SQL_CHAR" variable="SUBMIT_USER_ID" value="#IN_USER_NAME#">
    
    <cfprocresult name="STORED_PROCEDURE_RESULT_1" resultset="1">
    </cfstoredproc>

<!--<table width="100%" height="45" cellpadding="2" cellspacing="2">
<tr class="clsFormFieldInstructions">
<td style="text-align:center;"><strong>Instructions:</strong></td>
<td>
Please review and complete the requested information below. To change current 
information, simply overwrite in the field. To save completed form click ‘Save’ 
button. Enter the number of contracts and totals for all contracts paid in full 
but not deposited to the care fund by the end of the reporting year. *Although 
you are entering only contract totals and not enumerating each individual 
contract paid in full, but not deposited to the care fund by the end of the 
reporting year, you must however remit the additional detailed schedules or 
reports that substantiate the total(s) you are entering. Failure to remit such 
supplemental material may result in&nbsp; assessment of penalties.
</td>
</tr>
</table>

<table width="100%" cellpadding="2" cellspacing="2">
<tr>
<td class="clsFormFieldHeading">FUNERAL CONTRACTS DUE</td>
</tr>
</table>-->

<table class="clsFormTable" border='0' cellspacing='0' cellpadding='4' style="width:80%;margin-left: auto;margin-right: auto;margin-top: auto;margin-bottom: auto;">
<tr>
<td colspan="6" class="clsFormHeading">CONTRACTS PAID IN FULL BUT FUNDS NOT DEPOSITED BEFORE END OF FISCAL YEAR</td>
</tr>
    <tr class="clsFormInstructionsLabel">
        <td style="padding:4px;" colspan="6">
        <strong>Instructions:</strong>
        Please review and complete the requested information below. To change current information, simply overwrite in the field.  To save the completed form, click the 'Save' button.  Enter the number of contracts and the total dollar amount for all contracts paid in full but not deposited to the Funeral or Burial Trust Fund by the end of the reporting year. *Although you are entering only contract totals and not enumerating each individual contract paid in full (but not deposited to the care fund by the end of the reporting year), you are required to remit the additional detailed schedules or reports that substantiate the total(s) you are entering. Failure to remit such supplemental material may result in assessment of penalties.
        </td>
    </tr>


<tr>
<td colspan="6"></td>
</tr>

<tr class="clsFormHeadingMedium">
<td>&nbsp;</td>
<td>&nbsp;</td>
<td class="style1">&nbsp;</td>
<td>Number of Contracts </td>
<td>Total Amount Contracts Due</td>
<td>Upload Document</td>
</tr>

    <cfset DELIMITED_KEY_VALUE_ARRAY_ONE = "">
    <cfset DELIMITED_KEY_VALUE_ARRAY_TWO = "">
    <cfset DELIMITED_KEY_VALUE_ARRAY_THREE = "">
    <cfset DELIMITED_KEY_VALUE_ARRAY_FOUR = "">
     <cfif STORED_PROCEDURE_RESULT_1.RecordCount EQ 0>
    <tr >
        <td class='clsFormInformativeMessageLabel' colspan='6'></td>

    </tr>
</cfif>
  

    <cfloop query="STORED_PROCEDURE_RESULT_1">

    <cfset PARAM_DETAIL_ITEM_NUMBER = #STORED_PROCEDURE_RESULT_1.DETAIL_ITEM_NUMBER#>
    <cfset PARAM_ACCOUNT_RECORD_TYPE = #STORED_PROCEDURE_RESULT_1.RECORD_TYPE#>
    
    <cfif Len(DELIMITED_KEY_VALUE_ARRAY_ONE) gt 0>
    <cfset DELIMITED_KEY_VALUE_ARRAY_ONE = DELIMITED_KEY_VALUE_ARRAY_ONE & ",">
    </cfif>
    
    <cfset DELIMITED_KEY_VALUE_ARRAY_ONE = DELIMITED_KEY_VALUE_ARRAY_ONE & PARAM_DETAIL_ITEM_NUMBER>
    <cfoutput>
    
<tr class="clsFormRow#iif(currentrow MOD 2, DE('Dark'),DE('Light'))#">
<td class="clsNumericText"><span style="visibility:hidden" "#STORED_PROCEDURE_RESULT_1.LICENSEE_NUMBER#-#PARAM_DETAIL_ITEM_NUMBER#"/>
<input type="text" name="txtDetailItemNumber_#PARAM_DETAIL_ITEM_NUMBER#" id="txtDetailItemNumber_#PARAM_DETAIL_ITEM_NUMBER#" value="#PARAM_DETAIL_ITEM_NUMBER#" style="display:none";/></td>
<td  class="clsFormFieldDataText">
<cfif STORED_PROCEDURE_RESULT_1.SHOW_HIDE EQ 1>
<img src="../images/hide_show_arrow.png" width="24" height="24" alt="Toggle Hide/Show Subsections" onClick="ToggleExtendedRecordInformationDisplay(this, '#PARAM_DETAIL_ITEM_NUMBER#')"; class="clsValueProviderSectionToggle" />
</cfif>

</td>
<td  >Contracts Due</td>
<td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# type="text" 
class="clsFormFieldNumericTextInputWritable"  
name="txtNumberOfContracts_#PARAM_DETAIL_ITEM_NUMBER#" 
id="txtNumberOfContracts_#PARAM_DETAIL_ITEM_NUMBER#" 

 <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''> onkeypress="javascript:HandleUserInput(this, '#PARAM_DETAIL_ITEM_NUMBER#', 'Integer');" </cfif>
value="#STORED_PROCEDURE_RESULT_1.NUMBER_CONTRACTS#" maxlength="9"/></td>

<td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# type="text" class="clsFormFieldNumericTextInputWritable"  name="txtAssetPricipalCashBy_#PARAM_DETAIL_ITEM_NUMBER#" id="txtAssetPricipalCashBy_#PARAM_DETAIL_ITEM_NUMBER#" <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''> onkeypress="javascript:HandleUserInput(this, '#PARAM_DETAIL_ITEM_NUMBER#', 'Float');" 
onblur="javascript:validateFloatOnBlur(this,'#PARAM_DETAIL_ITEM_NUMBER#');" </cfif>  value="#NumberFormat(STORED_PROCEDURE_RESULT_1.TOTAL_CONTRACTS_DUE, '$,.00')#" maxlength="13"/></td>

<td>        
<input type="file" name="txtfile_#PARAM_DETAIL_ITEM_NUMBER#" id="txtfile_#PARAM_DETAIL_ITEM_NUMBER#" size="30" maxlength="250" style="width:310px;"  
<cfif #PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG# eq 1>disabled="disabled"</cfif> <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> >
</td>

</tr>
</cfoutput>

  <div name="trRecordExtendedInformation_Error_#PARAM_DETAIL_ITEM_NUMBER#" id="dvRecordEntry_#PARAM_DETAIL_ITEM_NUMBER#">
 <cfoutput>
<tr name="trRecordExtendedInformation_Error_#PARAM_DETAIL_ITEM_NUMBER#" id="trRecordExtendedInformation_Error_#PARAM_DETAIL_ITEM_NUMBER#" style="display:none">
        <td>&nbsp;</td>
        <td colspan="2">&nbsp;</td>
        <td colspan="3" valign="middle"><div id="dv_Error_Label_#PARAM_DETAIL_ITEM_NUMBER#">
            <table class="clsFormFieldValidationMessage">
                <tr>
                    <td width="37"><img name="imgInformativeMessageIndicatorImage_#PARAM_DETAIL_ITEM_NUMBER#" id="imgInformativeMessageIndicatorImage_#PARAM_DETAIL_ITEM_NUMBER#" src="/images/forms/validation_error.png" width="32" height="32" /></td>
                    <td><div id="dvInformativeMessageText_#PARAM_DETAIL_ITEM_NUMBER#">Here the User will see informative messages Pertaining to Data &nbsp;Entry Errors</div></td>
                </tr>
            </table>
        </div></td>
 </tr>

 </cfoutput>
  

  <tr name="trRecordExtendedInformation_<cfoutput>#PARAM_DETAIL_ITEM_NUMBER#</cfoutput>" id="tr1"  style="display:none;"  class="clsFormFieldHiddenValues">
    <td></td>
    <td colspan="2"></td>
    <td colspan="3" class="clsFormHiddenMessage">The Following is what has been reported by these entities and what is reflected above are values reported by &nbsp; (<cfoutput>#STORED_PROCEDURE_RESULT_1.RECORD_TYPE#</cfoutput>)</td>

  </tr>
  <tr name="trRecordExtendedInformation_<cfoutput>#PARAM_DETAIL_ITEM_NUMBER#</cfoutput>" id="trRecordExtendedInformation_<cfoutput>#PARAM_DETAIL_ITEM_NUMBER#</cfoutput>"  style="display:none;"  class="clsFormFieldHiddenValues">
    <td></td>
    <td colspan="2"></td>
    <td colspan="3" class="clsFormHiddenMessage">The Following is what has been reported by these entities and what is reflected above are values reported by &nbsp; (<cfoutput>#STORED_PROCEDURE_RESULT_1.RECORD_TYPE#</cfoutput>)</td>
  </tr>
  
  

	

<cfstoredproc  procedure="SP_CONTRACTS_DUE_LOAD" datasource="#application.CCBTConnection#">
<cfset IN_DETAIL_ITEM_NUMBER = PARAM_DETAIL_ITEM_NUMBER>

    <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="FISCAL_YEAR" value = #IN_FISCAL_YEAR#>
    <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="LICENSEE_NUMBER" value = #IN_LICENSEE_NUMBER#>

    <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="RECORD_TYPE" value=''>
    <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="ROW_ID" value = #IN_DETAIL_ITEM_NUMBER#>

    <cfprocparam cfsqltype="CF_SQL_CHAR" variable="SUBMIT_USER_ID" value="#IN_USER_NAME#">

    <cfprocresult name="_SUBQUERY_RESULTS" resultset="1">
</cfstoredproc>

<cfoutput query = "_SUBQUERY_RESULTS">
  <tr name="trRecordExtendedInformation_#PARAM_DETAIL_ITEM_NUMBER#" id="trRecordExtendedInformation_#PARAM_DETAIL_ITEM_NUMBER#"  style="display:none;" class="clsValueSources">
  
    <td></td>
    <td class="clsFormFieldHiddenValuesLabel">&nbsp;</td>
    <td class="style1">#RECORD_TYPE#</td>
    <td class="clsFormFieldHiddenValues">#NUMBER_CONTRACTS#</td>
    <td class="clsFormFieldHiddenValues">#NumberFormat(TOTAL_CONTRACTS_DUE,'$,.00')#</td>
    <td class="clsFormFieldHiddenValues">#STORED_PROCEDURE_RESULT_1.UPLOAD_FILE#</td>
  </tr>
 </cfoutput> 
  </div>

  </cfloop>
  
<tr>
<td colspan="6"></td>
</tr>
<cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''>
 <tr class="clsFormInstructionsLabel">
        <td colspan="6">Please ensure that the ‘SAVE’ button is clicked before leaving this page. Otherwise any changes made will be lost. 
        </td>
        </tr> 

  <tr>
    <td background="../images/forms/dialog_bottom_tab_middle_gold.png" colspan="5" align="center" style="font-weight:bold;">   
      	<!---<cfif IN_FISCAL_YEAR EQ IN_SELECTED_FISCAL_YEAR OR IN_FISCAL_YEAR-1 EQ IN_SELECTED_FISCAL_YEAR>--->


         <!---</cfif>--->      


   
<div style="text-align:center;vertical-align:middle"></div>      
<!---<cfif IN_FISCAL_YEAR EQ IN_SELECTED_FISCAL_YEAR OR IN_FISCAL_YEAR-1 EQ IN_SELECTED_FISCAL_YEAR>--->
<input class="clsButtonClass" type="submit" value="Save" <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> onclick="javascript: CheckNavigationTreeCheckBox();document.getElementById('txtFormActionName').value = 'Update';"/>
<!---<cfelse>
<input type="submit" value="Save" onclick="javascript: document.getElementById('txtFormActionName').value = 'Update';" disabled="disabled" />
</cfif>--->
</td>

<td cellspacing="0" style="padding:0px;"><img src="../images/forms/dialog_bottom_tab_right_gold.png" height="40px"/></td>
</tr>
</cfif>
<tr nameit=fred id="hidethis">
<td colspan="4">&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>

<tr>
<td colspan="5">&nbsp;</td>
<td>&nbsp;</td>
</tr>

<tr>
<td colspan="6">&nbsp;</td>
</tr>
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
</form>

</body>
</html>
    