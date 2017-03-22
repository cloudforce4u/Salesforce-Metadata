<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>MDFAbilitytonotifythesecondlevelofApprover</fullName>
        <description>Ability to notify the second level of Approver.</description>
        <protected>false</protected>
        <recipients>
            <recipient>sfdc.notifications@hp.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <field>Approver5__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Approver6__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Approver7__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Approver8__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDFActivityUnapproved</template>
    </alerts>
    <alerts>
        <fullName>MDFNotify_PBM_that_an_Activity_has_been_created</fullName>
        <ccEmails>sfdc.notifications@hp.com</ccEmails>
        <description>Notify PBM that an Activity has been created.</description>
        <protected>false</protected>
        <recipients>
            <field>Primary_PBM__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDFClaimStatusApproved</template>
    </alerts>
    <alerts>
        <fullName>MDFThe_ability_to_provide_notifications_to_partners_in_regards_to_deadlines</fullName>
        <ccEmails>sfdc.notifications@hp.com</ccEmails>
        <description>The ability to provide notifications to partners in regards to deadlines</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <field>Primary_PBM__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDF_End_Date_has_passed</template>
    </alerts>
    <alerts>
        <fullName>MDFTo_Notify_Partner_when_an_Activity_has_been_Rejected</fullName>
        <ccEmails>sfdc.notifications@hp.com</ccEmails>
        <description>To Notify Partner when an Activity has been Rejected</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDFRequestActivityStatusRejected</template>
    </alerts>
    <alerts>
        <fullName>MDFfundspendingforapprovalnotification</fullName>
        <ccEmails>sfdc.notifications@hp.com</ccEmails>
        <ccEmails>sfdc.notifications@hp.com</ccEmails>
        <description>email is sent when there are fund amount that has not been approved.</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDF_funds_pending_for_approval</template>
    </alerts>
    <alerts>
        <fullName>The_ability_to_notify_Partner_that_an_Activity_has_been_Rejected</fullName>
        <description>The ability to notify Partner that an Activity has been Rejected</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDFRequestActivityStatusRejected</template>
    </alerts>
    <alerts>
        <fullName>The_ability_to_notify_the_partner_if_an_activity_has_been_rejected</fullName>
        <description>The ability to notify the partner if an activity has been rejected</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDFRequestActivityStatusRejected</template>
    </alerts>
    <alerts>
        <fullName>To_Notify_Partner_when_an_Activity_has_been_Rejected</fullName>
        <ccEmails>bhargav.sharma@hp.com</ccEmails>
        <description>To Notify Partner when an Activity has been Rejected</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDFRequestActivityStatusRejected</template>
    </alerts>
    <alerts>
        <fullName>To_Notify_Users_that_an_Activity_has_been_Approved</fullName>
        <description>To Notify Users that an Activity has been Approved</description>
        <protected>false</protected>
        <recipients>
            <field>Primary_Partner__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDF_Activity_Approved</template>
    </alerts>
    <alerts>
        <fullName>To_notify_Partner_that_an_Activity_has_been_Rejected</fullName>
        <description>To notify Partner that an Activity has been Rejected</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDFRequestActivityStatusRejected</template>
    </alerts>
    <fieldUpdates>
        <fullName>ActivityStatusToSavedNotSubmittedAct</fullName>
        <field>Status__c</field>
        <literalValue>Saved Not-Submitted Activity</literalValue>
        <name>MDFActivityStatusToSavedNotSubmittedAct</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ActivitySubmittedDate</fullName>
        <description>To Capture Activity Submitted Date</description>
        <field>ActivitySubmittedDate__c</field>
        <formula>TODAY()</formula>
        <name>MDF Activity Submitted Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Activity_Approved_Date</fullName>
        <description>This Field Update, will populate the date when an Activity is Approved.</description>
        <field>Activity_Approval_Date__c</field>
        <formula>NOW()</formula>
        <name>Activity Approved Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LevelCompleted</fullName>
        <field>LevelCompleted__c</field>
        <literalValue>1</literalValue>
        <name>Level Completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LevelCompletedRemove</fullName>
        <description>wipes out level completed field</description>
        <field>LevelCompleted__c</field>
        <literalValue>0</literalValue>
        <name>Level Completed Remove</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>MDF_Change_Status_to_Expired</fullName>
        <description>To Change the status of Activity to Expired if it is not Approved within the Approval Period.</description>
        <field>Status__c</field>
        <literalValue>Expired</literalValue>
        <name>MDF Change Status to Expired</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
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
        <fullName>PartnerAccountRegion</fullName>
        <field>AccountRegion__c</field>
        <formula>IF(INCLUDES ( Partner_Account__r.Regions__c , &quot;EMEA&quot; ), &quot;EMEA; &quot;,null ) &amp; 
IF (INCLUDES ( Partner_Account__r.Regions__c , &quot;APJ&quot; ), &quot;APJ; &quot;,null ) &amp; 
IF (INCLUDES ( Partner_Account__r.Regions__c , &quot;AMS&quot; ), &quot;AMS; &quot;,null ) &amp; 
IF (INCLUDES ( Partner_Account__r.Regions__c , &quot;Americas&quot; ), &quot;Americas; &quot;,null ) &amp; 
IF (INCLUDES ( Partner_Account__r.Regions__c, &quot;Asia Pacific&quot; ), &quot;Asia Pacific; &quot;,null )</formula>
        <name>PartnerAccountRegion</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetApprovalLevelTo1</fullName>
        <field>CurrentApprovalLevel__c</field>
        <formula>1</formula>
        <name>Set Approval Level To 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SubmittedforApproval</fullName>
        <field>Status__c</field>
        <literalValue>Activity Awaiting Approval</literalValue>
        <name>Submitted for Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateStatusToApproved</fullName>
        <field>Status__c</field>
        <literalValue>Activity Approved</literalValue>
        <name>Update Status to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateStatustoRejected</fullName>
        <field>Status__c</field>
        <literalValue>Activity Rejected</literalValue>
        <name>Update Status to Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>MDF Activity Approval Date</fullName>
        <actions>
            <name>Activity_Approved_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow populates the Activity Approval Date field with the date that an MDF Activities Status changes to Activity Approved.</description>
        <formula>ISPICKVAL(Status__c, &quot;Activity Approved&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MDF Activity is not Approved Notification</fullName>
        <active>true</active>
        <description>Ability to send a reminder to the next level of approver or the lead PBM if the approval is not done x days after the initial reminder was sent to the approver.</description>
        <formula>ISPICKVAL(Status__c, &apos;Activity Awaiting Approval&apos;)&amp;&amp; !ISNULL( ActivitySubmittedDate__c )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>MDFAbilitytonotifythesecondlevelofApprover</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>RequestActivity__c.ActivitySubmittedDate__c</offsetFromField>
            <timeLength>4</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>MDF Expire Activity After Period of Approval</fullName>
        <actions>
            <name>MDF_Change_Status_to_Expired</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>To Expire an Activity if it is not Approved in the Planning Period.</description>
        <formula>(TODAY() &gt;  PlanningEndDate__c )  &amp;&amp;   !(ISPICKVAL( Status__c , &apos;Activity Approved&apos;)) &amp;&amp;  !(ISPICKVAL( Status__c ,&apos;Activity Awaiting Approval&apos;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MDF Notify PBM about Activity Creation</fullName>
        <active>true</active>
        <description>To Notify the PBM that an Activity has been created.</description>
        <formula>CreatedDate  =   NOW()</formula>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>MDFNotify_PBM_that_an_Activity_has_been_created</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>RequestActivity__c.CreatedDate</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>MDF Notify Users about Activity Approval</fullName>
        <actions>
            <name>To_Notify_Users_that_an_Activity_has_been_Approved</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>RequestActivity__c.Status__c</field>
            <operation>equals</operation>
            <value>Activity Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>RequestActivity__c.Receive_Approval_Notifications__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>To Notify users that an Activity has been Approved.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MDF Request Activity Rejected Notification</fullName>
        <actions>
            <name>MDFTo_Notify_Partner_when_an_Activity_has_been_Rejected</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>To_Notify_Partner_when_an_Activity_has_been_Rejected</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>RequestActivity__c.Status__c</field>
            <operation>equals</operation>
            <value>Activity Rejected</value>
        </criteriaItems>
        <description>To Notify the partner that an Activity has been Rejected</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MDF Update Claim Submitted Date</fullName>
        <actions>
            <name>ActivitySubmittedDate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Ability to send a reminder to the next level of approver or the lead PBM if the approval is not done x days after the initial reminder was sent to the approver.</description>
        <formula>ISPICKVAL( Status__c ,&apos;Activity Awaiting Approval&apos;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MDFActivityAccountRegion</fullName>
        <actions>
            <name>PartnerAccountRegion</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Activity Account Region</description>
        <formula>AND (NOT ( ISBLANK (Partner_Account__c ) ) ,ISCHANGED(Partner_Account__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>MDFChangeActivityStatus</fullName>
        <actions>
            <name>ActivityStatusToSavedNotSubmittedAct</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Change Activity Status Saved Not-Submitted Activity when changed RequestedHPInvestment and Activity_Type if activity status is Activity Approved</description>
        <formula>AND( OR( ISCHANGED( Activity_Type__c ),ISCHANGED(  RequestedHPInvestment__c  )) ,ISPICKVAL(Status__c, &apos;Activity Approved&apos;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>MDF_End Date Has Passed</fullName>
        <active>true</active>
        <description>The ability to provide notifications to partners in regards to deadlines</description>
        <formula>AND(ISPICKVAL(Status__c  , &apos;Activity Approved&apos;), Associated_Claim__c = null)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>MDFThe_ability_to_provide_notifications_to_partners_in_regards_to_deadlines</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>RequestActivity__c.Activity_End_Date__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
