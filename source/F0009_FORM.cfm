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
            case 'DeleteOfficers':
                {


                    var oTargetAccountNumber = document.getElementById('txtTargetLicenseeNumber');
                    var oTargetSourceForm = document.getElementById('txtTargetSourceForm');
                    var oTargetReportAccountNumber = document.getElementById('txtTargetReportItemNumber');


                    oTargetAccountNumber.value = ActionParameterOneValue;

                    oTargetSourceForm.value = ActionParameterThreeValue;

                    oTargetReportAccountNumber.value = ActionParameterTwoValue;


                    sDialogBoxName = "DeleteOfficers";
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
            case 'AddOfficers':
                {
                    sDialogBoxName = "AddOfficers";
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
            case 'DeleteOfficers':
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
            case 'AddOfficers':
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
                    sFormAction = '/forms/' + 'F0009_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'AddAccount':
                {
                    sFormAction = '/forms/' + 'F0009_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'DeleteOfficers':
                {
                    sFormAction = '/forms/' + 'F0009_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'PromptManageForm':
                {
                    ActionName = 'Prompt Manage Form';
                    var oArray = new Array();
                    oArray.push(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);
                    sFormAction = '/forms/' + 'F0009_FORM.cfm';
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
                    sFormAction = '/forms/' + 'F0009_FORM.cfm';
                    oForm = document.getElementById('frmMain');
                    break;
                }
            case 'Print':
                {
                    var sFormName = document.getElementById('txtFormName');
                    InvokeFormReportingAction(o, ActionName, FormActionTagOne, FormActionTagTwo, ActionParameterOneName, ActionParameterOneValue, ActionParameterTwoName, ActionParameterTwoValue, ActionParameterThreeName, ActionParameterThreeValue, ActionParameterFourName, ActionParameterFourValue);
                    return;
                }
            case 'AddOfficers':
                {
                    sFormAction = '/forms/' + 'F0009_FORM.cfm';
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

    <cfset INDEX_POS = 0>
    <cfloop index ="id" list="#IN_KEY_VALUE_ARRAY_ONE#" delimiters=",">

        <cfset INDEX_POS = INDEX_POS + 1>

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
            <cfset IN_OWNER_FIRST_NAME  = #GetFormInputFieldData("txtFirstName_#id#","string", "")#>
            <cfset IN_OWNER_LAST_NAME = #GetFormInputFieldData("txtLastName_#id#","string", "")#>
            <cfset IN_OWNER_SSN = #GetFormInputFieldData("txtSSN_#id#","Integer", "0")#>
            <cfset IN_OWNER_TITLE = #GetFormInputFieldData("ddlOwner_#id#","string", "")#>
            <cfset IN_OWNER_OCCUPATION = #GetFormInputFieldData("txtOccupation_#id#","string", "")#>
            <cfset IN_OWNER_ADDRESS = #GetFormInputFieldData("txtAddress_#id#","string", "")#>
            <cfset IN_OWNER_CITY = #GetFormInputFieldData("txtCity_#id#","string", "")#>
            <!---  <cfset IN_OWNER_STATE = #GetFormInputFieldData("ddlOwnerState_#id#","string", "")#>--->
            <cfset IN_OWNER_ZIP = #GetFormInputFieldData("txtZip_#id#","string", "")#>
            <cfset IN_OWNER_PHONE = #GetFormInputFieldData("txtPhone_#id#","string", "")#>

            <cfset IN_OWNER_RESIDENTIAL_ADDRESS = #GetFormInputFieldData("txtRAddress_#id#","string", "")#>
            <cfset IN_OWNER_RESIDENTIAL_CITY = #GetFormInputFieldData("txtRCity_#id#","string", "")#>
            <cfset IN_OWNER_RESIDENTIAL_STATE = #GetFormInputFieldData("ddlOwnerResidentialState_#id#","string", "")#>
            <cfset IN_OWNER_RESIDENTIAL_ZIP = #GetFormInputFieldData("txtRZip_#id#","string", "")#>
            <cfset IN_OWNER_RESIDENTIAL_PHONE = #GetFormInputFieldData("txtRPhone_#id#","string", "")#>
            <!---<cfset IN_STOCKHOLDER = #GetFormInputFieldData("cboStockholder_#id#","Integer", "0")#> --->
            <cfif IsDefined("cboStockholder_#id#") EQ 'NO'>
            <cfset IN_STOCKHOLDER = 0>
            
          <cfelse>
             <cfset IN_STOCKHOLDER = 1>
          </cfif>
          
          
           <cfif IsDefined("OFFICER_#id#") EQ 'NO'>
            <cfset IN_OFFICER = 0>
            
          <cfelse>
             <cfset IN_OFFICER = 1>
          </cfif>
          
               <cfif IsDefined("PARTNER_#id#") EQ 'NO'>
            <cfset IN_PARTNER = 0>
            
          <cfelse>
             <cfset IN_PARTNER = 1>
          </cfif>
          
               <cfif IsDefined("CEMETERY_AUTHORITY_#id#") EQ 'NO'>
            <cfset IN_CEMETERY_AUTHORITY = 0>
            
          <cfelse>
             <cfset IN_CEMETERY_AUTHORITY = 1>
          </cfif>
          
          <cfif IsDefined("OWNER_#id#") EQ 'NO'>
            <cfset IN_OWNER = 0>
            
          <cfelse>
             <cfset IN_OWNER = 1>
          </cfif>
           

        <cfset OUTPUT_PARAM_RETURN_CODE = 0>
        <cfset OUTPUT_PARAM_INFORMATIVE_MESSAGE = ''>




        <cfstoredproc  procedure="SP_OFFICERS_STOCK_HOLDERS_UPDATE" datasource="#application.CCBTConnection#">
        <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="FISCAL_YEAR" value='#IN_FISCAL_YEAR#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="LICENSEE_NUMBER" value='#IN_LICENSEE_NUMBER#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="RECORD_TYPE" value='#IN_RECORD_TYPE#'>
        <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="DETAIL_ITEM_NUMBER" value='#IN_DETAIL_ITEM_NUMBER#'> 
			
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_FIRST_NAME" value='#IN_OWNER_FIRST_NAME#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_LAST_NAME" value='#IN_OWNER_LAST_NAME#'>
        <!---<cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_SSN" value='#IN_OWNER_SSN#'> --->
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_TITLE" value='#IN_OWNER_TITLE#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_OCCUPATION" value='#IN_OWNER_OCCUPATION#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_ADDRESS" value='#IN_OWNER_ADDRESS#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_CITY" value='#IN_OWNER_CITY#'>
        <!---<cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_STATE" value='#IN_OWNER_STATE#'>--->
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_ZIP" value='#IN_OWNER_ZIP#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_PHONE" value='#IN_OWNER_PHONE#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_RESIDENTIAL_ADDRESS" value='#IN_OWNER_RESIDENTIAL_ADDRESS#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_RESIDENTIAL_CITY" value='#IN_OWNER_RESIDENTIAL_CITY#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_RESIDENTIAL_STATE" value='#IN_OWNER_RESIDENTIAL_STATE#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_RESIDENTIAL_ZIP" value='#IN_OWNER_RESIDENTIAL_ZIP#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_RESIDENTIAL_PHONE" value='#IN_OWNER_RESIDENTIAL_PHONE#'>
        <cfprocparam  cfsqltype="CF_SQL_BIT" variable="STOCKHOLDER" value='#IN_STOCKHOLDER#'>
        
         <cfprocparam  cfsqltype="CF_SQL_BIT" variable="OFFICER" value='#IN_OFFICER#'>
        <cfprocparam  cfsqltype="CF_SQL_BIT" variable="PARTNER" value='#IN_PARTNER#'>
        <cfprocparam  cfsqltype="CF_SQL_BIT" variable="CEMETERY_AUTHORITY" value='#IN_CEMETERY_AUTHORITY#'>
        <cfprocparam  cfsqltype="CF_SQL_BIT" variable="OWNER" value='#IN_OWNER#'>

                
        
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="FileName"  value='#sImagePath#'>

			
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


<cfif IN_FORM_ACTION_NAME EQ 'AddOfficers'>

    <cfif trim(#OFirstName#) neq "" >
        <cfset IN_OWNER_FIRST_NAME = #OFirstName#>
     <cfelse>
        <cfset IN_OWNER_FIRST_NAME = "">
     </cfif>

     <cfif trim(#OLastName#) neq "" >
        <cfset IN_OWNER_LAST_NAME = #OLastName#>
     <cfelse>
        <cfset IN_OWNER_LAST_NAME = "">
     </cfif>
     <!---
      <cfif trim(#OSSN#) neq "" >
        <cfset IN_OWNER_SSN = #OSSN#>
     <cfelse>
        <cfset IN_OWNER_SSN = "">
     </cfif>--->

     <cfif trim(#ddlOwner#) neq "" >
        <cfset IN_OWNER_TITLE = #ddlOwner#>
     <cfelse>
        <cfset IN_OWNER_TITLE = "">
     </cfif>

       <cfif trim(#OOccupation#) neq "" >
        <cfset IN_OWNER_OCCUPATION = #OOccupation#>
     <cfelse>
        <cfset IN_OWNER_OCCUPATION = "">
     </cfif>

         <cfif trim(#OAddress#) neq "" >
        <cfset IN_OWNER_ADDRESS = #OAddress#>
     <cfelse>
        <cfset IN_OWNER_ADDRESS = "">
     </cfif>

        <cfif trim(#OCity#) neq "" >
        <cfset IN_OWNER_CITY = #OCity#>
     <cfelse>
        <cfset IN_OWNER_CITY = "">
     </cfif>

       <cfif trim(#OZip#) neq "" >
        <cfset IN_OWNER_ZIP = #OZip#>
     <cfelse>
        <cfset IN_OWNER_ZIP = "">
     </cfif>

       <cfif trim(#OPhone#) neq "" >
        <cfset IN_OWNER_PHONE = #OPhone#>
     <cfelse>
        <cfset IN_OWNER_PHONE = "">
     </cfif>

       <cfif trim(#ORAddress#) neq "" >
        <cfset IN_OWNER_RESIDENTIAL_ADDRESS = #ORAddress#>
     <cfelse>
        <cfset IN_OWNER_RESIDENTIAL_ADDRESS = "">
     </cfif>

         <cfif trim(#ORCity#) neq "" >
        <cfset IN_OWNER_RESIDENTIAL_CITY = #ORCity#>
     <cfelse>
        <cfset IN_OWNER_RESIDENTIAL_CITY = "">
     </cfif>

        <cfif trim(#ORState#) neq "" >
        <cfset IN_OWNER_RESIDENTIAL_STATE = #ORState#>
     <cfelse>
        <cfset IN_OWNER_RESIDENTIAL_STATE = "">
     </cfif>

         <cfif trim(#ORZip#) neq "" >
        <cfset IN_OWNER_RESIDENTIAL_ZIP = #ORZip#>
     <cfelse>
        <cfset IN_OWNER_RESIDENTIAL_ZIP = "">
     </cfif>

       <cfif trim(#ORPhone#) neq "" >
        <cfset IN_OWNER_RESIDENTIAL_PHONE = #ORPhone#>
     <cfelse>
        <cfset IN_OWNER_RESIDENTIAL_PHONE = "">
     </cfif>


        <cfif IsDefined("Stockholder") EQ 'NO'>
            <cfset IN_STOCKHOLDER = 0>
            
          <cfelse>
             <cfset IN_STOCKHOLDER = 1>
          </cfif>

<cfif IsDefined("OFFICER") EQ 'NO'>
            <cfset IN_OFFICER = 0>
            
          <cfelse>
             <cfset IN_OFFICER = 1>
          </cfif>
          
          
             <cfif IsDefined("PARTNER") EQ 'NO'>
            <cfset IN_PARTNER = 0>
            
          <cfelse>
             <cfset IN_PARTNER = 1>
          </cfif>
          
          
             <cfif IsDefined("CEMETERY_AUTHORITY") EQ 'NO'>
            <cfset IN_CEMETERY_AUTHORITY = 0>
            
          <cfelse>
             <cfset IN_CEMETERY_AUTHORITY = 1>
          </cfif>
          
          
             <cfif IsDefined("OWNER") EQ 'NO'>
            <cfset IN_OWNER = 0>
            
          <cfelse>
             <cfset IN_OWNER = 1>
          </cfif>
    <cfset IN_ADD_PROVIDING_LICENSEE_NUMBER = '#IN_FORM_ACTION_PARAMETER_ONE_VALUE#'>
    <cfset IN_ADD_PROVIDING_AGENCY_PACKAGE_NUMBER = '#IN_FORM_ACTION_PARAMETER_TWO_VALUE#'>


    <cfset OUTPUT_PARAM_RETURN_CODE = 0>
    <cfset OUTPUT_PARAM_INFORMATIVE_MESSAGE = ''>

    <cfstoredproc  procedure="SP_OFFICERS_STOCK_HOLDERS_ADD" datasource="#application.CCBTConnection#">
             <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="FISCAL_YEAR" value='#IN_FISCAL_YEAR#'>  
              <cfprocparam  cfsqltype="CF_SQL_INTEGER" variable="LICENSEE_NUMBER" value=#IN_LICENSEE_NUMBER#>

        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="RECORD_TYPE" value='#IN_RECORD_TYPE#'>

        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_FIRST_NAME" value='#IN_OWNER_FIRST_NAME#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_LAST_NAME" value='#IN_OWNER_LAST_NAME#'>
       <!--- <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_SSN" value='#IN_OWNER_SSN#'> --->
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_TITLE" value='#IN_OWNER_TITLE#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_OCCUPATION" value='#IN_OWNER_OCCUPATION#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_ADDRESS" value='#IN_OWNER_ADDRESS#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_CITY" value='#IN_OWNER_CITY#'>
      <!---  <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_STATE" value='#IN_OWNER_STATE#'>--->
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_ZIP" value='#IN_OWNER_ZIP#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_PHONE" value='#IN_OWNER_PHONE#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_RESIDENTIAL_ADDRESS" value='#IN_OWNER_RESIDENTIAL_ADDRESS#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_RESIDENTIAL_CITY" value='#IN_OWNER_RESIDENTIAL_CITY#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_RESIDENTIAL_STATE" value='#IN_OWNER_RESIDENTIAL_STATE#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_RESIDENTIAL_ZIP" value='#IN_OWNER_RESIDENTIAL_ZIP#'>
        <cfprocparam  cfsqltype="CF_SQL_CHAR" variable="OWNER_RESIDENTIAL_PHONE" value='#IN_OWNER_RESIDENTIAL_PHONE#'>
        <cfprocparam  cfsqltype="CF_SQL_BIT" variable="STOCKHOLDER" value='#IN_STOCKHOLDER#'>
         <cfprocparam  cfsqltype="CF_SQL_BIT" variable="OFFICER" value='#IN_OFFICER#'>
        <cfprocparam  cfsqltype="CF_SQL_BIT" variable="PARTNER" value='#IN_PARTNER#'>
        <cfprocparam  cfsqltype="CF_SQL_BIT" variable="CEMETERY_AUTHORITY" value='#IN_CEMETERY_AUTHORITY#'>
        <cfprocparam  cfsqltype="CF_SQL_BIT" variable="OWNER" value='#IN_OWNER#'>       
                
                
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

<cfif IN_FORM_ACTION_NAME EQ 'DeleteOfficers'>

    <cfset IN_ADD_PROVIDING_LICENSEE_NUMBER = '#IN_FORM_ACTION_PARAMETER_ONE_VALUE#'>
    <cfset IN_ADD_PROVIDING_AGENCY_PACKAGE_NUMBER = '#IN_FORM_ACTION_PARAMETER_THREE_VALUE#'>


    <cfset OUTPUT_PARAM_RETURN_CODE = 0>
    <cfset OUTPUT_PARAM_INFORMATIVE_MESSAGE = ''>

    <cfstoredproc  procedure="SP_OFFICERS_STOCK_HOLDERS_DELETE" datasource="#application.CCBTConnection#">
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

    <cfstoredproc  procedure="SP_OFFICERS_STOCK_HOLDERS_LOAD" datasource="#application.CCBTConnection#">
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

<cfquery name="qrySelectTITLE" datasource="#application.CCBTConnection#">
SELECT * 
FROM TITLE_NAME_LIST
</cfquery>

<table class="clsFormTable" border='0' cellspacing='0' cellpadding='4' style="width:750px;margin-left: auto;margin-right: auto;margin-top: auto;margin-bottom: auto;">

    <tr>
        <td colspan="4" class="clsFormHeading">FUNERAL OWNERSHIP INFORMATION</td>
    </tr>
    <tr class="clsFormInstructionsLabel">
        <td style="padding:4px;" colspan="4">
        <strong>Instructions:</strong>
        Please review and complete the requested information below. To change current information, simply overwrite in the field. To save completed form click 'Save' button.&nbsp; Enter a new officer/stockholder by using the &#39;Add &#39; button. To remove a officer/stockholder click &#39;Delete&#39; button. *Please provide the following information for all people who newly assumed the following positions as they relate to the licensee during the reporting year: a corporation officer, a stockholder owning 10% or more stock in the corporation, an owner, a partner, or a cemetery authority member.</td>
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
            <tr>
        <td colspan="4"></td>
        </tr>

    <cfloop query="STORED_PROCEDURE_RESULT_1">

    <cfset PARAM_DETAIL_ITEM_NUMBER = #STORED_PROCEDURE_RESULT_1.DETAIL_ITEM_NUMBER#>
    <cfset PARAM_ACCOUNT_RECORD_TYPE = #STORED_PROCEDURE_RESULT_1.RECORD_TYPE#>

    <cfif Len(DELIMITED_KEY_VALUE_ARRAY_ONE) gt 0>
    <cfset DELIMITED_KEY_VALUE_ARRAY_ONE = DELIMITED_KEY_VALUE_ARRAY_ONE & ",">
    </cfif>

    <cfset DELIMITED_KEY_VALUE_ARRAY_ONE = DELIMITED_KEY_VALUE_ARRAY_ONE & PARAM_DETAIL_ITEM_NUMBER>
<cfoutput>

    <tr >
        <td colspan="3" class="clsFormSectionHeading">Funeral Ownership Information</td>
        <td class="clsFormSectionHeading"><cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''><input type='button' value='Delete' <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> onclick="javascript:PromptFormAction(this, 'DeleteOfficers', 'Default', 'Default', 'PROVIDING_LICENSEE_NUMBER', '#STORED_PROCEDURE_RESULT_1.LICENSEE_NUMBER#', 'PROVIDING_DETAILED_ITEM_NUMBER', '#PARAM_DETAIL_ITEM_NUMBER#', '', '', '', '');"></cfif></td>    
    </tr>
    <tr >
        <td>&nbsp;</td>
        <td>&nbsp</td>
        <td>&nbsp</td>
        <td>&nbsp</td>
    </tr>

    <tr>
        <td><input style="width:100px;" type="hidden" name="txtDetailItemNumber_#PARAM_DETAIL_ITEM_NUMBER#" id="txtDetailItemNumber_#PARAM_DETAIL_ITEM_NUMBER#" value="#PARAM_DETAIL_ITEM_NUMBER#" style="display:none;"/></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Stockholder</td>
        <td><input type="checkbox" #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# class="clsFormFieldFlag"
        name="cboStockholder_#PARAM_DETAIL_ITEM_NUMBER#" id="cboStockholder_#PARAM_DETAIL_ITEM_NUMBER#" value="1" <cfif #STORED_PROCEDURE_RESULT_1.STOCKHOLDER# EQ "1">checked</cfif> <cfif #PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG# eq 1>disabled="disabled"</cfif> <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> >
        </td>
        <td>&nbsp</td>
    </tr>

 <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Officer</td>
        <td><input type="checkbox" #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# class="clsFormFieldFlag"
        name="OFFICER_#PARAM_DETAIL_ITEM_NUMBER#" id="OFFICER_#PARAM_DETAIL_ITEM_NUMBER#" value="1" <cfif #STORED_PROCEDURE_RESULT_1.OFFICER# EQ "1">checked</cfif> <cfif #PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG# eq 1>disabled="disabled"</cfif> <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> >
        </td>
        <td>&nbsp</td>
    </tr>
    


  <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Partner</td>
        <td><input type="checkbox" #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# class="clsFormFieldFlag"
        name="PARTNER_#PARAM_DETAIL_ITEM_NUMBER#" id="PARTNER_#PARAM_DETAIL_ITEM_NUMBER#" value="1" <cfif #STORED_PROCEDURE_RESULT_1.PARTNER# EQ "1">checked</cfif> <cfif #PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG# eq 1>disabled="disabled"</cfif> <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> >
        </td>
        <td>&nbsp</td>
    </tr>
    
 <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Cemetery Authority</td>
        <td><input type="checkbox" #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# class="clsFormFieldFlag"
        name="CEMETERY_AUTHORITY_#PARAM_DETAIL_ITEM_NUMBER#" id="CEMETERY_AUTHORITY_#PARAM_DETAIL_ITEM_NUMBER#" value="1" <cfif #STORED_PROCEDURE_RESULT_1.CEMETERY_AUTHORITY# EQ "1">checked</cfif> <cfif #PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG# eq 1>disabled="disabled"</cfif> <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> >
        </td>
        <td>&nbsp</td>
    </tr>
    
 
    
         <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Owner</td>
        <td><input type="checkbox" #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# class="clsFormFieldFlag"
        name="OWNER_#PARAM_DETAIL_ITEM_NUMBER#" id="OWNER_#PARAM_DETAIL_ITEM_NUMBER#" value="1" <cfif #STORED_PROCEDURE_RESULT_1.OWNER# EQ "1">checked</cfif> <cfif #PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG# eq 1>disabled="disabled"</cfif> <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> >
        </td>
        <td>&nbsp</td>
    </tr>

    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">First Name</td>
        <td><input style="width:200px;" #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# id="txtFirstName_#PARAM_DETAIL_ITEM_NUMBER#"  name="txtFirstName_#PARAM_DETAIL_ITEM_NUMBER#" type="text" value="#STORED_PROCEDURE_RESULT_1.OWNER_FIRST_NAME#" maxlength="25" class="clsFormFieldTextInputWritableShort" />
        </td>
        <td>&nbsp</td>
    </tr>

    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Last Name</td>
        <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:200px;" id="txtLastName_#PARAM_DETAIL_ITEM_NUMBER#"  name="txtLastName_#PARAM_DETAIL_ITEM_NUMBER#" type="text" value="#STORED_PROCEDURE_RESULT_1.OWNER_LAST_NAME#" maxlength="25" class="clsFormFieldTextInputWritableShort" />
        </td>
        <td>&nbsp</td>
    </tr>
    <!---
    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Social Sec. Number</td>
        <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:200px; height:18px;" id="txtSSN_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldNumericTextZip" name="txtSSN_#PARAM_DETAIL_ITEM_NUMBER#" type="text" value="#STORED_PROCEDURE_RESULT_1.OWNER_SSN#" <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''> onkeypress="javascript:HandleUserInput(this, '#PARAM_DETAIL_ITEM_NUMBER#', 'SSN');"
        onblur="javascript:validateSSN(this,'1111#PARAM_DETAIL_ITEM_NUMBER#');"  </cfif> />
        </td>
        <td>&nbsp</td>
    </tr> --->

        <div name="trRecordExtendedInformation_Error_1111#PARAM_DETAIL_ITEM_NUMBER#" id="Div1">
   <cfoutput>
       <tr name="trRecordExtendedInformation_Error_1111#PARAM_DETAIL_ITEM_NUMBER#" id="trRecordExtendedInformation_Error_1111#PARAM_DETAIL_ITEM_NUMBER#" style="display:none">
               <td> </td>

               <td colspan="3">
               <div id="dv_Error_Label_1111">
                   <table class="clsFormFieldValidationMessage">
                       <tr>
                       <td width="37"><img name="imgInformativeMessageIndicatorImage_1111#PARAM_DETAIL_ITEM_NUMBER#" id="imgInformativeMessageIndicatorImage_1111#PARAM_DETAIL_ITEM_NUMBER#" src="/images/forms/validation_error.png" width="32" height="32" /></td>
                       <td>
                       <div id="dvInformativeMessageText_1111#PARAM_DETAIL_ITEM_NUMBER#">Here the User will see informative messages Pertaining to Data  Entry Errors</div></td>
                       </tr>
                   </table>
               </div>
               </td>

       </tr>
   </cfoutput>
</div>

    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Business Address</td>
        <td><input style="width:200px; height:18px;" #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# id="txtAddress_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldTextInputWritableShort" 
        name="txtAddress_#PARAM_DETAIL_ITEM_NUMBER#" type="text" value="#STORED_PROCEDURE_RESULT_1.OWNER_ADDRESS#" maxlength="25"/>
        </td>
        <td>&nbsp</td>
    </tr>
    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Business City</td>
        <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:200px; height:18px;" id="txtCity_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldTextInputWritableShort" name="txtCity_#PARAM_DETAIL_ITEM_NUMBER#" type="text" value="#STORED_PROCEDURE_RESULT_1.OWNER_CITY#" maxlength="25"/>
        </td>
        <td>&nbsp</td>
    </tr>
    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Business ZIP Code</td>
        <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:100px; height:18px;" id="txtZip_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldNumericTextZip" 
        name="txtZip_#PARAM_DETAIL_ITEM_NUMBER#" type="text"  <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''> onkeypress="javascript:HandleUserInput(this, '9999#PARAM_DETAIL_ITEM_NUMBER#', 'Zip');" 
        onblur="javascript:validateZipCode(this,'9999#PARAM_DETAIL_ITEM_NUMBER#');" </cfif> value="#STORED_PROCEDURE_RESULT_1.OWNER_ZIP#" />
        </td>
        <td>&nbsp</td>
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
        <td class="clsFormColumnarHeadingLabelNarrow">Business Phone</td>
        <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:200px; height:18px;" id="txtPhone_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldPhone"
         name="txtPhone_#PARAM_DETAIL_ITEM_NUMBER#" type="text" value="#STORED_PROCEDURE_RESULT_1.OWNER_PHONE#" 
         onkeydown="javascript:backspacerDOWN(this,event);" 
onkeyup="javascript:backspacerUP(this,event);"
 <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''> onblur="javascript:validatePhoneNumber(this,'2222#PARAM_DETAIL_ITEM_NUMBER#');" </cfif>
 />
        </td>
        <td>&nbsp</td>
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
        <td class="clsFormColumnarHeadingLabelNarrow">Residential Address</td>
        <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:200px; height:18px;" id="txtRAddress_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldTextInputWritableShort" name="txtRAddress_#PARAM_DETAIL_ITEM_NUMBER#" type="text" value="#STORED_PROCEDURE_RESULT_1.OWNER_RESIDENTIAL_ADDRESS#" maxlength="25"/>
        </td>
        <td>&nbsp</td>
    </tr>

    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Residential City</td>
        <td><input #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# style="width:200px; height:18px;" id="txtRCity_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldTextInputWritableShort" 
        name="txtRCity_#PARAM_DETAIL_ITEM_NUMBER#" type="text" value="#STORED_PROCEDURE_RESULT_1.OWNER_RESIDENTIAL_CITY#" maxlength="25"/>
        </td>
        <td>&nbsp</td>
    </tr>

    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Residential State</td>
        <td><select style="height:28px; width:100px;" name="ddlOwnerResidentialState_#PARAM_DETAIL_ITEM_NUMBER#" #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# id="ddlOwnerResidentialState_#PARAM_DETAIL_ITEM_NUMBER#" class="clsFormFieldTextInputWritableShort" <cfif #PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG# eq 1>disabled="disabled"</cfif> <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> >
        <option value=""></option>
        <cfloop query="qrySelectStates">
        <cfif qrySelectStates.STATE_ID eq #STORED_PROCEDURE_RESULT_1.OWNER_RESIDENTIAL_STATE#>
        <option value="#STATE_ID#" selected>#STATE_NAME#</option>
        <cfelse>
        <option value="#STATE_ID#">#STATE_NAME#</option>		
        </cfif>
        </cfloop>						
        </select>
        </td>
        <td>&nbsp</td>
    </tr>



    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Residential ZIP Code</td>
        <td><input style="width:100px; height:18px;" id="txtRZip_#PARAM_DETAIL_ITEM_NUMBER#" #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)#
        class="clsFormFieldNumericTextZip" 
        name="txtRZip_#PARAM_DETAIL_ITEM_NUMBER#" type="text" 
         <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''> onkeypress="javascript:HandleUserInput(this, '6666#PARAM_DETAIL_ITEM_NUMBER#', 'Zip');" onblur="javascript:validateZipCode(this,'6666#PARAM_DETAIL_ITEM_NUMBER#');" </cfif> value="#STORED_PROCEDURE_RESULT_1.OWNER_RESIDENTIAL_ZIP#" />
        </td>
        <td>&nbsp</td>
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
        <td class="clsFormColumnarHeadingLabelNarrow">Residential Phone</td>
        <td><input style="width:200px; height:18px;" id="txtRPhone_#PARAM_DETAIL_ITEM_NUMBER#" 
        #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)#
        class="clsFormFieldPhone" 
        name="txtRPhone_#PARAM_DETAIL_ITEM_NUMBER#" type="text" 
        value="#STORED_PROCEDURE_RESULT_1.OWNER_RESIDENTIAL_PHONE#"  
        onkeydown="javascript:backspacerDOWN(this,event);" 
onkeyup="javascript:backspacerUP(this,event);" <cfif IN_GET_IS_READONLY_ATTRIBUTE EQ ''>
onblur="javascript:validatePhoneNumber(this,'8888#PARAM_DETAIL_ITEM_NUMBER#');" </cfif>
 />
        </td>
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
        <td class="clsFormColumnarHeadingLabelNarrow">Primary Occupation</td>
        <td><input style="width:200px; height:18px;" id="txtOccupation_#PARAM_DETAIL_ITEM_NUMBER#" #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)#
        class="clsFormFieldTextInputWritableShort" 
        name="txtOccupation_#PARAM_DETAIL_ITEM_NUMBER#" type="text" value="#STORED_PROCEDURE_RESULT_1.OWNER_OCCUPATION#" maxlength="25"/>
        </td>
        <td>&nbsp</td>
    </tr>
    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Relationship to Funeral Home</td>
        <td><select style="height:28px; width:100px;" class="clsFormFieldTextInputWritableShort" name="ddlOwner_#PARAM_DETAIL_ITEM_NUMBER#" #GetIsReadonlyAttribute(0, PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG, PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG)# id="ddlOwner_#PARAM_DETAIL_ITEM_NUMBER#" <cfif #PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG# eq 1>disabled="disabled"</cfif> <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif>>
        <cfloop query="qrySelectTITLE">
        <cfif qrySelectTITLE.TITLE_ID eq #STORED_PROCEDURE_RESULT_1.OWNER_TITLE#>
        <option value="#TITLE_ID#" selected>#TITLE_NAME#</option>
        <cfelse>
        <option value="#TITLE_ID#">#TITLE_NAME#</option>	
        </cfif>
        </cfloop>	
        </select>
        </td>
        <td>&nbsp</td>
    </tr>
    <tr>
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">File Upload (PLACE use Only)</td>
        <td><input style="height:24px;" type="file" name="txtfile_#PARAM_DETAIL_ITEM_NUMBER#" id="txtfile_#PARAM_DETAIL_ITEM_NUMBER#" size="30" maxlength="250" <cfif #PARAM_FORM_LEVEL_EDIT_MODE_READONLY_FLAG# eq 1>disabled="disabled"</cfif> <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> >
        </td>
        <td>&nbsp</td>
    </tr>
    <tr>
        <td></td>
        <td>
       
        </td>
        <td></td>
        <td></td>
    </tr>

</cfoutput>
</cfloop>


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
        


<cfstoredproc  procedure="SP_OFFICERS_STOCK_HOLDERS_LOAD" datasource="#application.CCBTConnection#">

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
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Stockholder</td>
        <td>#STOCKHOLDER#</td>        
        <td></td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow"> First Name </td>
        <td>#OWNER_FIRST_NAME#</td>
        <td></td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow"> Last Name </td>
        <td>#OWNER_LAST_NAME#</td>
        <td></td>
    </tr>
    <!---
    <tr name="trRecordExtendedInformation_#PARAM_DETAIL_ITEM_NUMBER#" id="trRecordExtendedInformation_#PARAM_DETAIL_ITEM_NUMBER#"  style="display:none;" class="clsValueSources">
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">  Social Sec. Number </td>
        <td>#OWNER_SSN#</td>
        <td></td>
    </tr> --->
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow"> Address </td>
        <td>#OWNER_ADDRESS#</td>
        <td></td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">City</td>
        <td>#OWNER_CITY#</td>
        <td></td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">ZIP</td>
       <td>#OWNER_ZIP#</td>
        <td></td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Business Phone</td>
        <td>#OWNER_PHONE#</td>
        <td></td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Residential Address</td>
        <td>#OWNER_RESIDENTIAL_ADDRESS#</td>
        <td></td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">City</td>
        <td>#OWNER_RESIDENTIAL_CITY#</td>
        <td></td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">State</td>
        <td>#OWNER_RESIDENTIAL_STATE#</td>
        <td></td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">ZIP</td>
        <td>#OWNER_RESIDENTIAL_ZIP#</td>
        <td></td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Residential Phone</td>
        <td>#OWNER_RESIDENTIAL_PHONE#</td>
        <td></td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Primary Occupation</td>
        <td>#OWNER_OCCUPATION#</td>
        <td></td>
    </tr>

    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">Relationship to Funeral Home</td>
        <td>#OWNER_TITLE#</td>
        <td></td>
    </tr>
    <tr name="trRecordExtendedInformation_0" id="trRecordExtendedInformation_0"  style="display:none;" class="clsValueSources">
        <td></td>
        <td class="clsFormColumnarHeadingLabelNarrow">File Upload</td>
        <td>#STORED_PROCEDURE_RESULT_1.UPLOAD_FILE#</td>
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
        <td colspan="4">Please ensure that the ‘SAVE’ button is clicked before leaving this page. Otherwise any changes made will be lost. 
        </td>
        </tr>
        </cfif>
    <tr>
        <td colspan="3" background="../images/forms/dialog_bottom_tab_middle_gold.png"><div style="text-align:center;vertical-align:middle" >  
         <!---Fix: Issue#RecordCount - “Security Enhancement” Deliverable Sandbox Testing Issue --->
           <cfif STORED_PROCEDURE_RESULT_1.RecordCount NEQ 0> 
        <input type="submit" class="clsButtonClass"  value="Save" <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> onclick="javascript: document.getElementById('txtFormActionName').value = 'Update';"/>
         </cfif>
         
          <!---Fix: Issue#RecordCount --->
<input id="cmdAdd" type="button" class="clsButtonClass"  value="Add Ownership Information" <cfif #PARAM_FORM_LINE_ITEM_LEVEL_EDIT_MODE_FLAG# eq 1>disabled="disabled"</cfif> onclick="javascript:PromptFormAction(this, 'AddOfficers', 'Default', 'Default', '', '', '', '', '', '', '', '');"/>        </div> </td>
        <td  cellspacing="0" style="padding:0px;">
        <img src="../images/forms/dialog_bottom_tab_right_gold.png" height="40px"/></td>
    </tr>
    </cfif>




</table>

<div name="dvDialogUnderlayMask" id="dvDialogUnderlayMask" class="clsDialogUnderlayMaskInActive"></div>
<div id="dvFormSubmitValues" class="clsFormSubmitValues" style="display:none"; >
<cfinclude template='FORM_SUBMIT_VALUES.cfm'></cfinclude>Form Action Test Buttons
<input type="button" name="cmdCommandOne" id="cmdCommandOne" value="Update"  onClick="javascript:PromptFormAction(this, 'Update', 'Default', 'Default', '', '', '', '', '', '', '', '');" />
<input type="button" name="cmdCommandTwo" id="cmdCommandTwo" value="Manage Journal Entries" onClick="javascript:PromptFormAction(this, 'Manage Journal Entries', 'Default', 'Default', '', '', '', '', '', '', '', '');"/>
<input type="button" name="cmdCommandThree" id="cmdCommandThree" value="Promote The Form" onClick="javascript:PromptFormAction(this, 'Promote The Form', 'Default', 'Default', '', '', '', '', '', '', '', '');"/>
<input type="text" name="txtPromoteToRecordType" id="txtPromoteToRecordType" />
</div>
<cfinclude template='DIALOG_ADD_OFFICERS.cfm'></cfinclude>
<cfinclude template='DIALOG_DELETE_OFFICERS.cfm'></cfinclude>
</form>
</body>
</html>
