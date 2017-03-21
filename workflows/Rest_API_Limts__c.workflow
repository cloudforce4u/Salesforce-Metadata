<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>REST_API_Email_Alert</fullName>
        <description>REST API Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>harikrishna.unnam@hp.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sreedharamurthy.v@hpe.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>yogendra.aragula@hpe.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Rest_API_limits_Email_Template/REST_API_Email_Template</template>
    </alerts>
    <rules>
        <fullName>Rest API WorkFlow</fullName>
        <actions>
            <name>REST_API_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Rest_API_Limts__c.DailyApiRequests_Used__c</field>
            <operation>greaterThan</operation>
            <value>500</value>
        </criteriaItems>
        <criteriaItems>
            <field>Rest_API_Limts__c.Data_Storage_MB_Percentage__c</field>
            <operation>greaterThan</operation>
            <value>75</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
