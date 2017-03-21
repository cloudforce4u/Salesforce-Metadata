<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>eTools_Update_type_of_line_items</fullName>
        <field>Type__c</field>
        <literalValue>Submitted To Purchase</literalValue>
        <name>eTools Update type of line items</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>eTools Update type on line item on case creation</fullName>
        <actions>
            <name>eTools_Update_type_of_line_items</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update type on line item on case creation</description>
        <formula>AND(NOT(ISBLANK(CaseNumber__c)),ISPICKVAL(Type__c , &apos;Purchase&apos;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
