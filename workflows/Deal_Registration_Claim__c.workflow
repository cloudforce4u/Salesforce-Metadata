<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>ClaimStatusEmailAlert</fullName>
        <description>ClaimStatusEmailAlert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>sfdc.support@hp.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Status_of_Claim</template>
    </alerts>
    <fieldUpdates>
        <fullName>Approval_Status</fullName>
        <field>Claim_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Approval Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approved_Date</fullName>
        <field>Approved_Date__c</field>
        <formula>TODAY()</formula>
        <name>Approved Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Claim_Approved_Date</fullName>
        <field>Approved_Date__c</field>
        <formula>TODAY()</formula>
        <name>Claim_Approved Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Claim_Status</fullName>
        <field>Claim_Status__c</field>
        <literalValue>Submitted</literalValue>
        <name>Claim Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Claim_Submitted_Date</fullName>
        <field>Submit_Date__c</field>
        <formula>TODAY()</formula>
        <name>Claim Submitted Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Partially_Approve_Claim</fullName>
        <field>Claim_Status__c</field>
        <literalValue>Partially Approved</literalValue>
        <name>Partially Approve Claim</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Rejection_Status</fullName>
        <field>Claim_Status__c</field>
        <literalValue>Denied</literalValue>
        <name>Rejection Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Review_Initiated</fullName>
        <field>Claim_Status__c</field>
        <literalValue>Review Initiated</literalValue>
        <name>Review Initiated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_open</fullName>
        <field>Claim_Status__c</field>
        <literalValue>Open</literalValue>
        <name>Status open</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Claim Status Communication</fullName>
        <actions>
            <name>ClaimStatusEmailAlert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Deal_Registration_Claim__c.Claim_Status__c</field>
            <operation>equals</operation>
            <value>Denied,Incomplete,On Hold</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Partially Approve Claim</fullName>
        <actions>
            <name>Partially_Approve_Claim</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Deal_Registration_Claim__c.Claim_Status__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Deal_Registration_Claim__c.Approved_invoice_order_count__c</field>
            <operation>greaterOrEqual</operation>
            <value>1</value>
        </criteriaItems>
        <criteriaItems>
            <field>Deal_Registration_Claim__c.Rejected_invoiceOrder_Count__c</field>
            <operation>greaterOrEqual</operation>
            <value>1</value>
        </criteriaItems>
        <description>Based on invoice order Approve/Reject making the claim partially approved</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
