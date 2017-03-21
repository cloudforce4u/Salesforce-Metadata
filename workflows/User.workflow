<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>User_has_AA_profile</fullName>
        <description>User has AA profile</description>
        <protected>false</protected>
        <recipients>
            <recipient>andrzej.zawadka@hp.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HP_Templates/Case_Completion_Test_Jordan</template>
    </alerts>
    <fieldUpdates>
        <fullName>User_Inactivated_time</fullName>
        <field>InactiveUser_Remove_from_Territory__c</field>
        <formula>NOW()</formula>
        <name>User Inactivated time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>User Inactivated time</fullName>
        <actions>
            <name>User_Inactivated_time</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>User.IsActive</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
