<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Build_Status_Inprogress_Alert</fullName>
        <description>Build Status Inprogress Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>ram-reddy.bonala@hp.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Status_Template</template>
    </alerts>
    <alerts>
        <fullName>Inprogress_Email_Alert</fullName>
        <description>Inprogress Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>ram-reddy.bonala@hp.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Build_In_progress_template</template>
    </alerts>
    <rules>
        <fullName>Build Status Notification</fullName>
        <actions>
            <name>Build_Status_Inprogress_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>BuildTest__c.Build_Status__c</field>
            <operation>equals</operation>
            <value>Inprogress</value>
        </criteriaItems>
        <criteriaItems>
            <field>BuildTest__c.Daily_Build__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>My Test Workflow</fullName>
        <active>false</active>
        <criteriaItems>
            <field>BuildTest__c.Build_Status__c</field>
            <operation>equals</operation>
            <value>Inprogress</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>My Workflow</fullName>
        <actions>
            <name>Inprogress_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>BuildTest__c.Build_Status__c</field>
            <operation>equals</operation>
            <value>Inprogress</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
