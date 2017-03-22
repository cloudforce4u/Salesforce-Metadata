<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_alert_for_welcoming_user</fullName>
        <description>Email alert for welcoming user</description>
        <protected>false</protected>
        <recipients>
            <recipient>ram-reddy.bonala@hp.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Email_Template_for_testing</template>
    </alerts>
	<alerts>
        <fullName>Email_alert_for_welcoming_user1</fullName>
        <description>Email alert for welcoming user1</description>
        <protected>false</protected>
        <recipients>
            <recipient>ram-reddy.bonala@hp.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Email_Template_for_testing</template>
    </alerts>
    <fieldUpdates>
        <fullName>Oppty_Change</fullName>
        <field>testfield__c</field>
        <name>Oppty Change</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Test Flow</fullName>
        <active>false</active>
        <criteriaItems>
            <field>User.AccountId</field>
            <operation>equals</operation>
            <value>Test</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Oppty_Change</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>-30</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Testing Rule</fullName>
        <actions>
            <name>Email_alert_for_welcoming_user</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>abc__c.Name</field>
            <operation>equals</operation>
            <value>Raam</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
