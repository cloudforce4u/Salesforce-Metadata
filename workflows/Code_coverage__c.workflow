<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>descupdate</fullName>
        <field>desc__c</field>
        <formula>PRIORVALUE(desc__c) + BR() +
LastModifiedBy.LastName + BR() +
TEXT(LastModifiedDate) + BR() +
desc__c</formula>
        <name>descupdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Desc Update Rule</fullName>
        <actions>
            <name>descupdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( desc__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
