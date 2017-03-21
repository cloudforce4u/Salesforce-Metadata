<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>MDFForNotifyingPartnerthattheystillhaveFundsthattheyhavenotplanned</fullName>
        <ccEmails>sfdc.notifications@hp.com</ccEmails>
        <description>For Notifying Partner that they still have Funds that they have not planned</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>sfdc.notifications@hp.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>MDF/MDFunplannedfundspriortoFundexpiration</template>
    </alerts>
    <fieldUpdates>
        <fullName>Account_Region</fullName>
        <field>AccountRegion__c</field>
        <formula>IF ( INCLUDES ( Account__r.Regions__c , &quot;EMEA&quot; ), &quot;EMEA; &quot;,null ) &amp; 
IF ( INCLUDES ( Account__r.Regions__c , &quot;APJ&quot; ), &quot;APJ; &quot;,null ) &amp; 
IF ( INCLUDES ( Account__r.Regions__c , &quot;AMS&quot; ), &quot;AMS; &quot;,null ) &amp; 
IF ( INCLUDES ( Account__r.Regions__c , &quot;Americas&quot; ), &quot;Americas; &quot;,null ) &amp; 
IF ( INCLUDES ( Account__r.Regions__c, &quot;Asia Pacific&quot; ), &quot;Asia Pacific; &quot;,null )</formula>
        <name>MDF Account Region</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Auto_Expire_Fund</fullName>
        <field>Status__c</field>
        <literalValue>Inactive</literalValue>
        <name>MDF Auto-Expire Fund</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>MDF Auto-Expire funding after fund end date</fullName>
        <active>true</active>
        <criteriaItems>
            <field>FundRequest__c.Status__c</field>
            <operation>equals</operation>
            <value>Active</value>
        </criteriaItems>
        <description>Changes the Status of the Fund to Expired after the Execution End Date is met.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Auto_Expire_Fund</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>FundRequest__c.Expiration_Date__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>MDF Fund unplanned prior to Fund Ending Period%28Fund End Date%29 notification</fullName>
        <active>true</active>
        <description>The ability to notify the partner that they still have funds that they have not planned against X days before the end of the funding period</description>
        <formula>Total_Funds_Remaining__c &gt; 0</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>MDFForNotifyingPartnerthattheystillhaveFundsthattheyhavenotplanned</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>FundRequest__c.Expiration_Date__c</offsetFromField>
            <timeLength>-30</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>MDFFundAccountRegion</fullName>
        <actions>
            <name>Account_Region</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update Fund Account Region</description>
        <formula>AND (NOT ( ISBLANK ( Account__c ) ) ,ISCHANGED( Account__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
