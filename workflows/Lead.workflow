<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Lead_assignment_notification_to_lead_owner_after_3_days</fullName>
        <description>Lead assignment notification to lead owner after 3 days.</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>sfdc.leadnotification@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HP_Templates/Lead_Lead_assignment_notification</template>
    </alerts>
    <alerts>
        <fullName>Lead_assignment_notification_to_lead_owner_after_3_days_R7_0</fullName>
        <description>Lead assignment notification to lead owner after 3 days R7.0.</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>sfdc.leadnotification@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HP_Templates/Lead_Lead_assignment_notification</template>
    </alerts>
    <alerts>
        <fullName>Lead_assignment_notification_to_lead_owner_after_5_days</fullName>
        <description>Lead assignment notification to lead owner after 5 days</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>sfdc.leadnotification@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HP_Templates/Lead_Lead_assignment_notification_to_lead_owner_after_5days</template>
    </alerts>
    <alerts>
        <fullName>Lead_assignment_notification_to_lead_owner_after_5_days_R7_0</fullName>
        <description>Lead assignment notification to lead owner after 5 days R7.0.</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>sfdc.leadnotification@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HP_Templates/Lead_Lead_assignment_notification_to_lead_owner_after_5days</template>
    </alerts>
    <alerts>
        <fullName>Lead_assignment_notification_to_manager_after_5_days</fullName>
        <description>Lead assignment notification to manager after 5 days</description>
        <protected>false</protected>
        <recipients>
            <field>Lead_Owner_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>sfdc.leadnotification@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HP_Templates/Lead_Lead_assignment_notification_to_manager</template>
    </alerts>
    <alerts>
        <fullName>Lead_assignment_notification_to_manager_after_5_days_R7_0</fullName>
        <description>Lead assignment notification to manager after 5 days R7.0.</description>
        <protected>false</protected>
        <recipients>
            <field>Lead_Owner_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>sfdc.leadnotification@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HP_Templates/Lead_Lead_assignment_notification_to_manager</template>
    </alerts>
    <alerts>
        <fullName>send_an_email_to_the_owner_of_the_lead</fullName>
        <description>Send an email to the owner of the lead.</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>sfdc.leadnotification@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HP_Templates/Lead_Urgent_response_required</template>
    </alerts>
    <fieldUpdates>
        <fullName>Change_Lead_State_to_Assigned</fullName>
        <field>Lead_State__c</field>
        <literalValue>New</literalValue>
        <name>Change Lead State to Assigned</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_Owner_to_Closed_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Closed_Leads</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Change Owner to Closed Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_Rejected_Reason_to_Null</fullName>
        <field>Rejected_Reason__c</field>
        <name>Change Rejected Reason to Null</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_the_Lead_Status_to_Open</fullName>
        <field>Status</field>
        <literalValue>Open</literalValue>
        <name>Change the Lead Status to Open</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_the_Reason_for_Status_to_Null</fullName>
        <field>Closed_Reason__c</field>
        <name>Change the Reason for Status to Null</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Check_ReactivationEventCreation</fullName>
        <description>&quot;ReactivationEventCreation&quot; field will be checked when &quot;Lead Reactivation Date&quot; is reached to represent the need for creation of Event.</description>
        <field>ReactivationEventCreation__c</field>
        <literalValue>1</literalValue>
        <name>Check ReactivationEventCreation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Capture_Last_Modified_by_Partner</fullName>
        <description>It captures &apos;Last Modified by Partner&apos; date on Lead.</description>
        <field>Last_Modified_by_Partner__c</field>
        <formula>LastModifiedDate</formula>
        <name>Lead - Capture Last Modified by Partner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_is_Closed_Date</fullName>
        <field>Lead_is_Closed_Date__c</field>
        <formula>Today()</formula>
        <name>Lead is Closed Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Make_Lead_Owner_as_Closed_Leads_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Closed_Leads</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Make Lead Owner as Closed Leads Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Make_Lead_Owner_as_Rejected_Leads_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Rejected_Leads</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Make Lead Owner as Rejected Leads Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Owner_Change_to_Reaction_Time_Exceeded</fullName>
        <description>Lead owner is change from SR to Reaction Time Exceeded Queue.</description>
        <field>OwnerId</field>
        <lookupValue>Reaction_Time_Exceeded</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Owner Change to Reaction Time Exceeded</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Partner_Queue_Assigned_Date</fullName>
        <field>Partner_Queue_Assigned_Date__c</field>
        <formula>now()</formula>
        <name>Partner Queue Assigned Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_3_Days_Email_Notify_DateTime</fullName>
        <description>Update &quot;3 Days Email Notify DateTime&quot; field which is used for sending Email Notification to Record Owner after 3 when NOT accepted.</description>
        <field>X3_Days_Email_Notify_DateTime__c</field>
        <formula>CASE(
    MOD( ( TODAY() - DATE(1900, 1, 7) ), 7),
    0, NOW()+1,
    1, NOW(),
    2, NOW(),
    3, NOW()+2,
    4, NOW()+2,
    5, NOW()+2,
    6, NOW()+2,
    NOW()
)</formula>
        <name>Update 3 Days Email Notify DateTime</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_5_Days_Email_Notify_DateTime</fullName>
        <description>Update &quot;5 Days Email Notify DateTime&quot; field which is used for sending Email Notification to Record Owner and Manager after 5 days when NOT accepted.</description>
        <field>X5_Days_Email_Notify_DateTime__c</field>
        <formula>CASE(
    MOD( ( TODAY() - DATE(1900, 1, 7) ), 7),
    0, NOW()+3,
    1, NOW()+2,
    2, NOW()+2,
    3, NOW()+2,
    4, NOW()+2,
    5, NOW()+2,
    6, NOW()+4,
    NOW()
)</formula>
        <name>Update 5 Days Email Notify DateTime</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_of_Acceptance</fullName>
        <description>Updates the Date of Lead Acceptance</description>
        <field>Date_of_Lead_Acceptance__c</field>
        <formula>Today()</formula>
        <name>Update Date of Acceptance</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Incubated_Date_to_NULL</fullName>
        <description>Set &quot;Incubated Date&quot; field value to &quot;NULL&quot; when Lead Reactivation Date reaches.</description>
        <field>Incubated_Date__c</field>
        <name>Update Incubated Date to NULL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Reactivation_Date_to_NULL</fullName>
        <description>Set &quot;Lead Reactivation Date&quot; field value to &quot;NULL&quot; when Lead Reactivation Date reaches.</description>
        <field>Lead_Reactivation_Date__c</field>
        <name>Update Reactivation Date to NULL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Open</fullName>
        <description>Set &quot;Lead Status&quot; field value to &quot;Open&quot; when Lead Reactivation Date reaches.</description>
        <field>Status</field>
        <literalValue>Open</literalValue>
        <name>Update Status to Open</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_field_Capture_date</fullName>
        <description>It will update the field when the status changes</description>
        <field>Capture_date_when_status_changes__c</field>
        <formula>TODAY()</formula>
        <name>Update field Capture date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_field_Capture_state_date</fullName>
        <description>It will update the field when the state changes</description>
        <field>Capture_date_when_state_changes__c</field>
        <formula>Today()</formula>
        <name>Update field Capture state date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Nitro_Clevel_Contact</fullName>
        <apiVersion>29.0</apiVersion>
        <description>Executive level contacted</description>
        <endpointUrl>http://app.bunchball.net/n4sf/wom.php?action=Nitro_Clevel_Contact</endpointUrl>
        <fields>Id</fields>
        <fields>LastModifiedById</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>nitroadmin@hp.com</integrationUser>
        <name>Nitro_Clevel_Contact</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>Nitro_Discovery</fullName>
        <apiVersion>29.0</apiVersion>
        <description>Complete Discovery Questions</description>
        <endpointUrl>http://app.bunchball.net/n4sf/wom.php?action=Nitro_Discovery</endpointUrl>
        <fields>Id</fields>
        <fields>LastModifiedById</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>nitroadmin@hp.com</integrationUser>
        <name>Nitro_Discovery</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>Nitro_Lead_Converted</fullName>
        <apiVersion>29.0</apiVersion>
        <description>Lead Converted</description>
        <endpointUrl>http://app.bunchball.net/n4sf/wom.php?action=Nitro_Lead_Converted</endpointUrl>
        <fields>Id</fields>
        <fields>LastModifiedById</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>nitroadmin@hp.com</integrationUser>
        <name>Nitro_Lead_Converted</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>Nitro_Lead_Status</fullName>
        <apiVersion>29.0</apiVersion>
        <description>Lead Status is moved from open to in progress</description>
        <endpointUrl>http://app.bunchball.net/n4sf/wom.php?action=Nitro_Lead_Status</endpointUrl>
        <fields>Id</fields>
        <fields>LastModifiedById</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>nitroadmin@hp.com</integrationUser>
        <name>Nitro_Lead_Status</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>Nitro_Task_Due_Date</fullName>
        <apiVersion>29.0</apiVersion>
        <description>Lead Source came from Tradeshow</description>
        <endpointUrl>http://app.bunchball.net/n4sf/wom.php?action=Nitro_Task_Due_Date</endpointUrl>
        <fields>Id</fields>
        <fields>LastModifiedById</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>nitroadmin@hp.com</integrationUser>
        <name>Nitro_Task_Due_Date</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Lead - Change Lead Status to open on Reactivation Date</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Incubated</value>
        </criteriaItems>
        <description>SFDC R7.0 By Karthik Vankadari: Added new Workflow as per the requirement 11296. Update &quot;Lead Status&quot; to &quot;Open&quot; , &quot;Incubation Date, Reactivation Date&quot; to &quot;NULL&quot; on Reactivation Date.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Check_ReactivationEventCreation</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Update_Incubated_Date_to_NULL</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Update_Reactivation_Date_to_NULL</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Update_Status_to_Open</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Lead.Lead_Reactivation_Date__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Lead - Change the Lead State to Assigned and Lead Status to Open when the Owner Changes</fullName>
        <actions>
            <name>Change_Rejected_Reason_to_Null</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Change_the_Lead_Status_to_Open</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Change_the_Reason_for_Status_to_Null</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Change the Lead State to Assigned and Lead Status to Open when the Owner Changes</description>
        <formula>IF( 	($Setup.Global_Config__c.Mute_Workflow_Rule__c==true) ,False,ISCHANGED( OwnerId ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Date of Last Assignment</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Lead_State__c</field>
            <operation>equals</operation>
            <value>Assigned</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Email Notification Start DateTime</fullName>
        <actions>
            <name>Update_3_Days_Email_Notify_DateTime</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_5_Days_Email_Notify_DateTime</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Start Date &amp; Time for 3 and 5 Days Email Notifications</description>
        <formula>OR(    AND(        ISCHANGED(OwnerId),        NOT(ISBLANK(First_Assignment_Date__c))       ),    AND(        ISBLANK(PRIORVALUE(First_Assignment_Date__c)),        NOT(ISBLANK(First_Assignment_Date__c))       )   )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Lead Acceptance Date</fullName>
        <actions>
            <name>Update_Date_of_Acceptance</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Lead_State__c</field>
            <operation>equals</operation>
            <value>Accepted</value>
        </criteriaItems>
        <description>When the lead is accepted, triggers field update to Lead Acceptance Date</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Lead Close Date</fullName>
        <actions>
            <name>Lead_is_Closed_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Closed</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Lead assignment notificaton</fullName>
        <active>false</active>
        <description>Send an email notification to the user who has been assigned the lead if after 3 days he/she doesnot accept the lead.</description>
        <formula>AND(NOT(CONTAINS($Profile.Name ,&apos;Partner&apos;)), ISPICKVAL( Lead_State__c,&apos;New&apos;) , ISPICKVAL( Status , &apos;Open&apos;) , RecordTypeId = $Label.Qualified_Lead_Record_Type, NOT(CONTAINS( OwnerId ,&apos;00G&apos;) ) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Lead_assignment_notification_to_lead_owner_after_3_days</name>
                <type>Alert</type>
            </actions>
            <timeLength>3</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Lead_assignment_notification_to_lead_owner_after_5_days</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Lead_assignment_notification_to_manager_after_5_days</name>
                <type>Alert</type>
            </actions>
            <timeLength>5</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Lead - Lead assignment notificaton R7%2E0</fullName>
        <active>true</active>
        <description>Send an email notification to the user who has been assigned the lead if after 3 days he/she doesnot accept the lead.</description>
        <formula>AND(NOT(CONTAINS($Profile.Name ,&apos;Partner&apos;)), ISPICKVAL( Lead_State__c,&apos;New&apos;) , ISPICKVAL( Status , &apos;Open&apos;) , RecordTypeId = $Label.Qualified_Lead_Record_Type, NOT(CONTAINS( OwnerId ,&apos;00G&apos;) ) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Lead_assignment_notification_to_lead_owner_after_3_days_R7_0</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Lead.X3_Days_Email_Notify_DateTime__c</offsetFromField>
            <timeLength>3</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Lead_assignment_notification_to_lead_owner_after_5_days_R7_0</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Lead_assignment_notification_to_manager_after_5_days_R7_0</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Lead.X5_Days_Email_Notify_DateTime__c</offsetFromField>
            <timeLength>5</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Lead - QueueAssignmentDateCapture</fullName>
        <actions>
            <name>Partner_Queue_Assigned_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>To capture the Date when a lead is assigned to a Partner queue</description>
        <formula>BEGINS(OwnerId,&apos;00G&apos;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Retain Owner</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.LeadSource</field>
            <operation>equals</operation>
            <value>List Import</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>Unqualified Lead</value>
        </criteriaItems>
        <description>Retain Owner if Lead Source = List Import for Unqualified Lead Record Type</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Send Closed Leads to Queue</fullName>
        <actions>
            <name>Make_Lead_Owner_as_Closed_Leads_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.LeadSource</field>
            <operation>notEqual</operation>
            <value>List Import</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>Qualified Lead,Unqualified Lead</value>
        </criteriaItems>
        <description>Send Closed Leads to Queue only if the Lead Source is not List Import (CC Expitred and Closed Leads)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Send Rejected Leads to Queue</fullName>
        <actions>
            <name>Make_Lead_Owner_as_Rejected_Leads_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Lead_State__c</field>
            <operation>equals</operation>
            <value>Wrong Assignment</value>
        </criteriaItems>
        <description>Send Wrongly Assigned Leads to Queue</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Send Unqualified Leads to Closed Queue</fullName>
        <actions>
            <name>Change_Owner_to_Closed_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.LeadSource</field>
            <operation>equals</operation>
            <value>List Import</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>Qualified Lead</value>
        </criteriaItems>
        <description>Make Owner to Closed Queue if Lead Source = List Import for qualified Lead Record Type and Lead is in Closed Status</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead - To store the values of lead state</fullName>
        <actions>
            <name>Update_field_Capture_state_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will trigger whenever the lead state field gets changes and it will store the new date
R2_SFDC 8/28/2012 : Formula changed as per the CR-0186</description>
        <formula>IF( ($Setup.Global_Config__c.Mute_Workflow_Rule__c==true) ,False,   ISCHANGED(Lead_State__c))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead - To store the values of lead status</fullName>
        <actions>
            <name>Update_field_Capture_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will trigger whenever the lead status field gets changes and it will store the new date
R2_SFDC 8/28/2012 : Formula changed as per the CR-0186</description>
        <formula>IF( 	($Setup.Global_Config__c.Mute_Workflow_Rule__c==true) ,False,  ISCHANGED(Status))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Update by partner</fullName>
        <actions>
            <name>Lead_Capture_Last_Modified_by_Partner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This rule captures the &apos;Last Modified by Partner&apos; date on Lead if the partner user is making any changes to the Lead.</description>
        <formula>CONTAINS( UPPER($User.User_Type_Text__c ), &apos;PARTNER&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Urgent response required</fullName>
        <actions>
            <name>send_an_email_to_the_owner_of_the_lead</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Urgent_Response_Required__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send an email to the owner of the lead which is having &quot;Urgent Response Required&quot;.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Nitro_Clevel_Contact</fullName>
        <actions>
            <name>Nitro_Clevel_Contact</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Title</field>
            <operation>startsWith</operation>
            <value>C</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.IsNitro__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Executive level contacted</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Nitro_Discovery</fullName>
        <actions>
            <name>Nitro_Discovery</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Budget__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Timeframe_to_Buy_1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>User.IsNitro__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Complete Discovery Questions</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Nitro_Lead_Converted</fullName>
        <actions>
            <name>Nitro_Lead_Converted</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.IsConverted</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.IsNitro__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Lead Converted</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Nitro_Lead_Status</fullName>
        <actions>
            <name>Nitro_Lead_Status</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>greaterThan</operation>
            <value>Open</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.IsNitro__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Lead Status is moved from open to in progress</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Nitro_Task_Due_Date</fullName>
        <actions>
            <name>Nitro_Task_Due_Date</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Lead_Source_Most_Recent__c</field>
            <operation>equals</operation>
            <value>Tradeshow/Live Event</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.IsNitro__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Lead Source came from Tradeshow</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
