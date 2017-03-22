<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>AutoExpireBudget</fullName>
        <field>Budget_Status__c</field>
        <literalValue>Inactive</literalValue>
        <name>MDF Auto Expire Budget</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>MDF Auto-Expire Budget after Budget Execution end date</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Budget__c.Budget_Status__c</field>
            <operation>equals</operation>
            <value>Active</value>
        </criteriaItems>
        <description>To Set the Budget Status to Inactive when the Budget Execution End Date is met.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>AutoExpireBudget</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Budget__c.Execution_End_Date__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
