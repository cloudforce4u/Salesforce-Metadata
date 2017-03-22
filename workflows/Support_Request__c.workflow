<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Send_the_Submit_Request_Template_when_Record_is_s</fullName>
        <description>Send the Submit Request Template when Record is s</description>
        <protected>false</protected>
        <recipients>
            <field>Primary_Assignee__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Secondary_Assignee__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HP_Templates/Submit_Support_Request_Email_Template</template>
    </alerts>
    <fieldUpdates>
        <fullName>Assigned_Date</fullName>
        <field>Assigned_Date__c</field>
        <formula>if(ISCHANGED( OwnerId ), NOW(), Assigned_Date__c )</formula>
        <name>Assigned Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Completion_Date</fullName>
        <description>Auto populate the value for pre sales based on the request status value change to completed</description>
        <field>Completion_Date__c</field>
        <formula>NOW()</formula>
        <name>Completion Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sales_Stage_Upon_SR_Creation</fullName>
        <field>Sales_Stage_Upon_SR_Creation__c</field>
        <formula>IF(ISNEW(), Text(Opportunity__r.StageName), &apos; &apos; )</formula>
        <name>Sales Stage Upon SR Creation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sales_Stage_after_Submission</fullName>
        <field>Sales_Stage_Upon_SR_Creation__c</field>
        <formula>IF(ISNEW(), Text(Opportunity__r.StageName), &apos; &apos; )</formula>
        <name>Sales Stage after Submission</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Sales Stage after Submission</fullName>
        <actions>
            <name>Sales_Stage_Upon_SR_Creation</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Populating Opportunity Sales stage name ,When a support Request is created</description>
        <formula>ISNEW()</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Submit Support Request Notification</fullName>
        <actions>
            <name>Send_the_Submit_Request_Template_when_Record_is_s</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Support_Request__c.Submitted_Status_Vertica__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Support_Request__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Vertica Support Request</value>
        </criteriaItems>
        <description>This is the Email that goes to Technical Support team and Assignee When Support Request is Submitted for Vertica Record Type.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Support Request Assigned Date</fullName>
        <actions>
            <name>Assigned_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Date when the support request is assigned</description>
        <formula>ISCHANGED( OwnerId )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Support Request-Completion Date when Request Status is closed</fullName>
        <actions>
            <name>Completion_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Support_Request__c.Request_Status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <description>Auto populate the value for pre sales based on the request status value change to completed</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
