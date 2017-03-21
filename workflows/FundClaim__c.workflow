<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Claim_is_approved</fullName>
        <description>Claim is approved</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_User__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDF_Claim_is_approved</template>
    </alerts>
    <alerts>
        <fullName>MDFAbility_to_send_a_reminder_to_the_approver_if_it_is_assigned_to_an_individual</fullName>
        <description>Ability to send a reminder to the approver if it is assigned to an individual (not a queue) after x days if it has not been approved.</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <field>Activity_Owner__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDF_Reminder_to_Approver_of_Claim</template>
    </alerts>
    <alerts>
        <fullName>MDFClaimstatuschangenotification</fullName>
        <description>Ability to send a reminder to the approver if it is assigned to an individual (not a queue) after x days if it has not been approved.</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDFClaimStatusChangenotification</template>
    </alerts>
    <alerts>
        <fullName>MDFClaimstatusrejectednotification</fullName>
        <ccEmails>abhiram.sharma@accenture.com</ccEmails>
        <description>MDF Email on that claim has been rejected.</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDFStatusRejectednotification</template>
    </alerts>
    <alerts>
        <fullName>MDFEmail_to_the_Next_Level_of_Approver</fullName>
        <description>Email to the Next Level of Approver</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDF_email_to_the_second_approver</template>
    </alerts>
    <alerts>
        <fullName>MDFFundexpirationdatenotification</fullName>
        <description>Email on &apos;X&apos; days before when fund expiration date is met.</description>
        <protected>false</protected>
        <recipients>
            <field>Activity_Owner__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDFFundexpirationnotification</template>
    </alerts>
    <alerts>
        <fullName>The_ability_to_notify_partner_that_claim_has_been_rejected</fullName>
        <description>The ability to notify partner that claim has been rejected</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_User__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDFStatusRejectednotification</template>
    </alerts>
    <alerts>
        <fullName>The_ability_to_notify_partner_that_the_claim_has_been_rejected</fullName>
        <description>The ability to notify partner that the claim has been rejected</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_User__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDFStatusRejectednotification</template>
    </alerts>
    <fieldUpdates>
        <fullName>Change_Claim_Status_to_Expired</fullName>
        <description>To change the status of Claim to Expired after Claim Expiration Date is met.</description>
        <field>Status__c</field>
        <literalValue>Expired</literalValue>
        <name>Change Claim Status to Expired</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>First_ApprovedReject</fullName>
        <field>FirstApprovedRejected__c</field>
        <literalValue>1</literalValue>
        <name>MDF First Approved Reject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>First_ApprovedReject_Timestamp</fullName>
        <field>Firstapprovedrejectedtimestamp__c</field>
        <formula>NOW()</formula>
        <name>MDFFirst ApprovedReject Timestamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>First_Submitted</fullName>
        <field>FirstSubmitted__c</field>
        <literalValue>1</literalValue>
        <name>MDF First Submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>First_Submitted_Timestamp</fullName>
        <field>FirstSubmittedTimestamp__c</field>
        <formula>NOW()</formula>
        <name>MDF First Submitted Timestamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Last_Submitted_timestamp</fullName>
        <field>LastSubmittedtimestamp__c</field>
        <formula>NOW()</formula>
        <name>MDF Last Submitted timestamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>MDFTotalTimeInPayment</fullName>
        <description>the total time when claim status was Approved - Awaiting Payment</description>
        <field>Total_time_for_payment__c</field>
        <formula>(NOW()-  Last_Approved_timestamp__c)*24*60  + Total_time_for_payment_hidden__c</formula>
        <name>MDFTotalTimeInPayment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>MDF_Mark_Fallout_to_true</fullName>
        <field>Approval_Fallout__c</field>
        <literalValue>1</literalValue>
        <name>MDF Mark Fallout to true</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>MDF_Update_Claim_Approved_Date</fullName>
        <description>Updates the Claim Approved Date</description>
        <field>Claim_Approved_Date__c</field>
        <formula>NOW()</formula>
        <name>MDF Update Claim Approved Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>MDF_Update_Claim_Status</fullName>
        <description>Updates the Claim Status field to Expired when a Claim has been rejected twice.</description>
        <field>Status__c</field>
        <literalValue>Expired</literalValue>
        <name>MDF Update Claim Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>MDF_Update_Count_of_Claim_Rejection</fullName>
        <description>Updates the Count of Claim Rejection Field</description>
        <field>CountofClaimRejection__c</field>
        <formula>CountofClaimRejection__c + 1</formula>
        <name>MDF Update Count of Claim Rejection</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>MDF_Update_Recordtype_to_Master</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Master_Claim</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>MDF Update Recordtype to Master</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>MDF_Update_Status_Field</fullName>
        <description>Update Status Field to Expired when Claim Resubmitting period Ends.</description>
        <field>Status__c</field>
        <literalValue>Expired</literalValue>
        <name>MDF Update Claim Status Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Approval_Level_To_1</fullName>
        <field>CurrentApprovalLevel__c</field>
        <formula>1</formula>
        <name>Set Approval Level To 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Submitted_For_Review</fullName>
        <field>Status__c</field>
        <literalValue>Submitted for Review</literalValue>
        <name>Status Submitted For Review</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Total_Time_hidden</fullName>
        <field>TotaltimeforApproval_RejectionHidden__c</field>
        <formula>IF(  ISNULL(  TotalTimeForApprovalRejection__c  ) , 0,TotalTimeForApprovalRejection__c )</formula>
        <name>MDF Total Time hidden</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Total_time_for_Approval_Rejection</fullName>
        <field>TotalTimeForApprovalRejection__c</field>
        <formula>(NOW() - LastSubmittedtimestamp__c)*24*60 +  TotaltimeforApproval_RejectionHidden__c</formula>
        <name>MDF Total time for Approval/Rejection</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Total_time_for_payment</fullName>
        <field>Total_time_for_payment_hidden__c</field>
        <formula>IF( ISNULL( Total_time_for_payment__c ) , 0, Total_time_for_payment__c)</formula>
        <name>MDF Total time for payment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Claim_Approved_Date</fullName>
        <description>Updates the Claim Approved Date</description>
        <field>Claim_Approved_Date__c</field>
        <formula>NOW()</formula>
        <name>Update Claim Approved Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Claim_Submitted_Date</fullName>
        <field>claim_submitted_date__c</field>
        <formula>NOW()</formula>
        <name>Update Claim Submitted Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Count_of_Submission</fullName>
        <field>CountofClaimSubmission__c</field>
        <formula>CountofClaimSubmission__c +1</formula>
        <name>Update Count of Submission</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Record_Type</fullName>
        <description>Update Record Type to Read-Only</description>
        <field>RecordTypeId</field>
        <lookupValue>Read_Only</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>MDF Update Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Approved - Awaiting Payment</literalValue>
        <name>Update Status to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Rejected</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Update Status to Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_change_timestamp</fullName>
        <field>Last_Approved_timestamp__c</field>
        <formula>NOW()</formula>
        <name>MDF status change timestamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>MDF Claim ReadOnly</fullName>
        <actions>
            <name>Update_Record_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>FundClaim__c.Status__c</field>
            <operation>equals</operation>
            <value>Approved - Awaiting Payment,Canceled,Expired</value>
        </criteriaItems>
        <description>Updates Record Type on change of Claim status.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>MDF Claim Update Total Time</fullName>
        <actions>
            <name>Last_Submitted_timestamp</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Total_Time_hidden</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>FundClaim__c.Status__c</field>
            <operation>equals</operation>
            <value>Submitted for Review</value>
        </criteriaItems>
        <description>Total time for Approval/Rejection</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MDF Claim status change notification</fullName>
        <actions>
            <name>MDFClaimstatuschangenotification</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>if status is not changed with in x days, i.e from &apos;submitted for review&apos; to approved , the email will be sent.</description>
        <formula>AND(  Days_Since_Submitted__c &gt;=5,  ISPICKVAL(Status__c, &apos;Submitted for Review&apos;)   )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>MDF Count Of Claim Submission</fullName>
        <actions>
            <name>Update_Count_of_Submission</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Req. 9597:The ability to report on the number of times a claim goes back and forth to the partner (through the approval process) with audit notes and rejection reasons.</description>
        <formula>AND( 	 ISCHANGED(Status__c), 	 OR( 	 AND( ISPICKVAL(PRIORVALUE(Status__c),&apos;Saved Not-Submitted Claim&apos;), ISPICKVAL(Status__c,&apos;Submitted for Review&apos;)), 	  AND( ISPICKVAL(PRIORVALUE(Status__c),&apos;Approved - Awaiting Payment&apos;), ISPICKVAL(Status__c,&apos;Submitted for Review&apos;)), 	   AND( ISPICKVAL(PRIORVALUE(Status__c),&apos;Paid&apos;), ISPICKVAL(Status__c,&apos;Submitted for Review&apos;)), 		 AND( ISPICKVAL(PRIORVALUE(Status__c),&apos;Rejected&apos;), ISPICKVAL(Status__c,&apos;Submitted for Review&apos;)), 		  AND( ISPICKVAL(PRIORVALUE(Status__c),&apos;Claim Revoked&apos;), ISPICKVAL(Status__c,&apos;Submitted for Review&apos;))    )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>MDF Expire Claim after Claim Expiration Date</fullName>
        <active>false</active>
        <criteriaItems>
            <field>FundClaim__c.Status__c</field>
            <operation>notEqual</operation>
            <value>Expired</value>
        </criteriaItems>
        <description>Change the Status of Claim to Expired when Claim Expiration Date is met.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Change_Claim_Status_to_Expired</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>FundClaim__c.ClaimExpirationDate__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>MDF Expire Claim after end of Re-Submitting period</fullName>
        <active>true</active>
        <criteriaItems>
            <field>FundClaim__c.Status__c</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <description>The Claim Status should be Changed to Expired if previously it was rejected and then it was not submitted again for Approval in the given period.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>MDF_Update_Status_Field</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>15</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>MDF Fund expiration date notification</fullName>
        <active>true</active>
        <description>The ability for system to notify partners to submit claims before claim submission deadline expires</description>
        <formula>ISPICKVAL( Status__c , &apos;Saved &amp; Not Submitted&apos;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>MDFFundexpirationdatenotification</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>FundClaim__c.Claim_Submission_Date__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>MDF Reminder to Approve Claims</fullName>
        <active>true</active>
        <criteriaItems>
            <field>FundClaim__c.Status__c</field>
            <operation>equals</operation>
            <value>Submitted for Review</value>
        </criteriaItems>
        <description>Ability to send a reminder to the approver if it is assigned to an individual (not a queue) after x days if it has not been approved.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>MDFAbility_to_send_a_reminder_to_the_approver_if_it_is_assigned_to_an_individual</name>
                <type>Alert</type>
            </actions>
            <timeLength>5</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>MDF Update Claim Submitted Date</fullName>
        <actions>
            <name>Update_Claim_Submitted_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update Claim Submitted Date</description>
        <formula>ISPICKVAL( Status__c ,&apos;Submitted for Review&apos;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MDF Update Count of Claim Rejection</fullName>
        <actions>
            <name>MDF_Update_Claim_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>FundClaim__c.CountofClaimRejection__c</field>
            <operation>equals</operation>
            <value>3</value>
        </criteriaItems>
        <description>Updates the Count of Claim Rejection Field when a Claim has been Rejected.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>MDF Update Recordtype to Master</fullName>
        <actions>
            <name>MDF_Update_Recordtype_to_Master</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>FundClaim__c.Status__c</field>
            <operation>equals</operation>
            <value>Saved Not-Submitted Claim</value>
        </criteriaItems>
        <criteriaItems>
            <field>FundClaim__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>MDF Read-Only</value>
        </criteriaItems>
        <description>Updates record type to master when status is Saved but not submitter</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>MDF notification for the second approver</fullName>
        <active>true</active>
        <description>The mail is sent to the second approver if the 1st approver does not accepts the request for x days.</description>
        <formula>ISPICKVAL( Status__c ,&apos;Submitted for Review&apos;)&amp;&amp;    !ISNULL(claim_submitted_date__c)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>MDFEmail_to_the_Next_Level_of_Approver</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>FundClaim__c.claim_submitted_date__c</offsetFromField>
            <timeLength>5</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>MDFClaimExpirationDatePassed</fullName>
        <active>true</active>
        <criteriaItems>
            <field>FundClaim__c.CountofClaimSubmission__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FundClaim__c.Status__c</field>
            <operation>notEqual</operation>
            <value>Approved - Awaiting Payment,Paid,Canceled,Rejected,Claim Revoked</value>
        </criteriaItems>
        <description>Claim is submitted and not approved, then expire it on Claim Expire date +15 Days</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Change_Claim_Status_to_Expired</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>FundClaim__c.ClaimExpirationDate__c</offsetFromField>
            <timeLength>15</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>MDFClaimExpirationIfNotSubmiited</fullName>
        <active>true</active>
        <criteriaItems>
            <field>FundClaim__c.CountofClaimSubmission__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <description>If Claim is created and not submitted before claim expiration date, make it Expire</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Change_Claim_Status_to_Expired</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>FundClaim__c.ClaimExpirationDate__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>MDFClaimFirst approvedRejectedTimestamp</fullName>
        <actions>
            <name>First_ApprovedReject</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>First_ApprovedReject_Timestamp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>First approved/Rejected when FirstApproved/Rejected unchecked and Status is Approved - Awaiting Payment  or Rejected</description>
        <formula>(FirstApprovedRejected__c =false ) &amp;&amp; ( ISPICKVAL( Status__c ,&quot;Approved - Awaiting Payment&quot;)|| ISPICKVAL( Status__c ,&quot;Rejected&quot; ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MDFClaimFirstSubmittedTimestamp</fullName>
        <actions>
            <name>First_Submitted</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>First_Submitted_Timestamp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>First Submitted Timestamp when FirstSubmitted=Unchecked and status= Submitted for Review</description>
        <formula>(FirstSubmitted__c = false &amp;&amp;  ISPICKVAL( Status__c , &quot;Submitted for Review&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>MDFClaimTotalTimeApproval%2FRejection</fullName>
        <actions>
            <name>Total_time_for_Approval_Rejection</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Claim Status is Approved or rejected, record the time of action.</description>
        <formula>(ISPICKVAL( Status__c , &quot;Approved - Awaiting Payment&quot;) || ISPICKVAL( Status__c , &quot;Rejected&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MDFStatusChangeTimestamp</fullName>
        <actions>
            <name>Total_time_for_payment</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>status_change_timestamp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>FundClaim__c.Status__c</field>
            <operation>equals</operation>
            <value>Approved - Awaiting Payment</value>
        </criteriaItems>
        <description>Updates Change Time Stamp</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MDFUpdateAwaitedTime</fullName>
        <actions>
            <name>MDFTotalTimeInPayment</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>FundClaim__c.Status__c</field>
            <operation>equals</operation>
            <value>Paid</value>
        </criteriaItems>
        <description>Updates total time while the claim&apos;s status was Approved - Awaiting Payment</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
