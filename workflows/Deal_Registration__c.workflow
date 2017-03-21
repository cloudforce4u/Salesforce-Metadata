<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Deal_Reg_Expiry_Notification_before_15_days</fullName>
        <description>Deal Reg Expiry Notification before 15 days</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Deal_Expiration_Soon_Notification</template>
    </alerts>
    <alerts>
        <fullName>Deal_Reg_Expiry_Notification_before_30_days</fullName>
        <description>Deal Reg Expiry Notification before 30 days</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Deal_Expiration_Soon_Notification</template>
    </alerts>
    <alerts>
        <fullName>Oppty_Amount_Changed</fullName>
        <description>Oppty Amount Changed</description>
        <protected>false</protected>
        <recipients>
            <recipient>ram-reddy.bonala@hp.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Oppty_Amount_Change_Template</template>
    </alerts>
    <fieldUpdates>
        <fullName>Deal_Status_Pending_Am_Created</fullName>
        <field>Is_the_Status_Pending__c</field>
        <literalValue>1</literalValue>
        <name>Deal Status Pending?</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Deal_Status_Update_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Deal Status Update Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>HiddenAuto_Approve</fullName>
        <field>Hidden_Auto_Approve__c</field>
        <literalValue>1</literalValue>
        <name>HiddenAuto Approve</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Is_the_Deal_Status_Pending</fullName>
        <field>Is_the_Status_Pending__c</field>
        <literalValue>1</literalValue>
        <name>Is the Deal Status Pending</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Is_the_Deal_Status_Pending_for_L2</fullName>
        <field>Is_the_Status_Pending_L2_Escalation__c</field>
        <literalValue>1</literalValue>
        <name>Is the Deal Status Pending for L2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Is_the_Deal_Status_Pending_for_L2_to_Fal</fullName>
        <field>Is_the_Status_Pending_L2_Escalation__c</field>
        <literalValue>0</literalValue>
        <name>Is the Deal Status Pending for L2 to Fal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Is_today_a_Business_Day2</fullName>
        <field>Is_Business_Day__c</field>
        <literalValue>1</literalValue>
        <name>Is today a Business Day</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Is_today_a_Business_Day5</fullName>
        <field>Is_Business_Day__c</field>
        <literalValue>1</literalValue>
        <name>Is today a Business Day</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Is_today_a_Business_Day_for_L2</fullName>
        <field>Is_Business_Day_for_L2__c</field>
        <literalValue>1</literalValue>
        <name>Is today a Business Day for L2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Is_today_a_Business_Day_to_False</fullName>
        <field>Is_Business_Day__c</field>
        <literalValue>0</literalValue>
        <name>Is today a Business Day to False</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>L1_Escalation_SLA3</fullName>
        <field>L1_escalation_SLA__c</field>
        <formula>NOW()+ (Program__r.L1_escalation_SLA_in_hours__c * 0.04167)</formula>
        <name>L1 Escalation SLA</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>L1_escalation_SLA2</fullName>
        <field>L1_escalation_SLA__c</field>
        <formula>LastModifiedDate + (Program__r.L1_escalation_SLA_in_hours__c * 0.04170)</formula>
        <name>L1 Escalation SLA</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>L2_Escalation_SLA</fullName>
        <field>L2_escalation_SLA__c</field>
        <formula>LastModifiedDate + (Program__r.L2_escalation_SLA_in_hours__c * 0.04167)</formula>
        <name>L2 Escalation SLA</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>To_uncheck_Hidden_Extension_Status</fullName>
        <field>Hidden_Extension_Request__c</field>
        <literalValue>0</literalValue>
        <name>To uncheck Hidden Extension Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Expiration_date</fullName>
        <field>Expiration_Date__c</field>
        <formula>IF(!ISNULL(Program__r.Deal_Registration_Period__c) || !ISBLANK(Program__r.Deal_Registration_Period__c) , (Submission_Date__c+Program__r.Deal_Registration_Period__c), Program__r.Deal_Expiration_Date__c)</formula>
        <name>Update Expiration date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Extension_Status_Date</fullName>
        <field>Expiration_Date__c</field>
        <formula>Expiration_Date__c + Program__r.Extension_Duration__c</formula>
        <name>Update Extension Status Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Extension_Status_to_Approved</fullName>
        <field>Extension_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Extension Status to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Extension_Status_to_Rejected</fullName>
        <field>Extension_Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Update Extension Status to Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Final_Approver_Date</fullName>
        <field>Final_Approval_Date__c</field>
        <formula>NOW()</formula>
        <name>Update Final Approver Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Hidden_Extension_Status</fullName>
        <field>Hidden_Extension_Request__c</field>
        <literalValue>1</literalValue>
        <name>Update Hidden Extension Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_L1_Approval_Date</fullName>
        <field>L1_Approval_Date__c</field>
        <formula>NOW()</formula>
        <name>Update L1 Approval Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Partially_Approved_Status</fullName>
        <field>Status__c</field>
        <literalValue>Partially Approved</literalValue>
        <name>Update Partially Approved Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_Review_Initiated</fullName>
        <field>Status__c</field>
        <literalValue>Review Initiated</literalValue>
        <name>Update Status Review Initiated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_Submitted</fullName>
        <description>Status changed to submitted when the user click on submit for approval on Deal Registration</description>
        <field>Status__c</field>
        <literalValue>Submitted</literalValue>
        <name>Update Status Submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Status to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Expired</fullName>
        <field>Status__c</field>
        <literalValue>Expired</literalValue>
        <name>Update Status to Expired</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Rejected</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Update Status to Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_ReviewInitiated</fullName>
        <description>Update the status to Review Initiated when the first level user approves</description>
        <field>Status__c</field>
        <literalValue>Pending Sales Review</literalValue>
        <name>Update Status to Pending Sales Review</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Submitted_Date</fullName>
        <field>Submission_Date__c</field>
        <formula>NOW()</formula>
        <name>Update Submitted Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Deal Reg Expiry notifications before 30 and 15 days</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Deal_Registration__c.Expiration_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Deal_Reg_Expiry_Notification_before_30_days</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Deal_Registration__c.Expiration_Date__c</offsetFromField>
            <timeLength>-30</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Deal_Reg_Expiry_Notification_before_15_days</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Deal_Registration__c.Expiration_Date__c</offsetFromField>
            <timeLength>-15</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Deal Reg Extension Status Approval after L1 approver</fullName>
        <actions>
            <name>To_uncheck_Hidden_Extension_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Extension_Status_to_Approved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Deal_Registration__c.Extension_Status__c</field>
            <operation>equals</operation>
            <value>Requested</value>
        </criteriaItems>
        <criteriaItems>
            <field>Deal_Registration__c.Final_Approver__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Deal_Registration__c.Hidden_Extension_Request__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Deal Reg L1 Escalation Date Update whene Created</fullName>
        <actions>
            <name>L1_Escalation_SLA3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Deal_Registration__c.Status__c</field>
            <operation>equals</operation>
            <value>Open,Submitted</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Deal Reg To Capture Final Approval Date</fullName>
        <actions>
            <name>Update_Final_Approver_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Deal_Registration__c.Status__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Deal Reg Update Status on L1 Approval</fullName>
        <actions>
            <name>Update_Status_to_Approved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Deal_Registration__c.Status__c</field>
            <operation>equals</operation>
            <value>Pending Sales Review</value>
        </criteriaItems>
        <criteriaItems>
            <field>Deal_Registration__c.Final_Approver__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Deal Reg to update L1 Escalation SLA</fullName>
        <actions>
            <name>L1_escalation_SLA2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(Status__c) &amp;&amp;  (ISPICKVAL(Status__c, &quot;Submitted&quot;) || ISPICKVAL(Status__c, &quot;Open&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Deal Reg to update L2 Escalation SLA</fullName>
        <actions>
            <name>L2_Escalation_SLA</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(Status__c) &amp;&amp;  ISPICKVAL(Status__c, &quot;Pending Sales Review&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Deal Reg to update Partially Approved Status</fullName>
        <actions>
            <name>Update_Partially_Approved_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>if(((Product_Registration_Total_Count__c  &gt; 1) &amp;&amp;(Product_Registration_Approved_count__c &gt; 0) &amp;&amp; ((Product_Registration_Total_Count__c) &lt;&gt;(Product_Registration_Approved_count__c)) &amp;&amp; (ISPICKVAL(Status__c, &apos;Approved&apos;))) ,true,false)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Deal Registration Expiration</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Deal_Registration__c.Status__c</field>
            <operation>notEqual</operation>
            <value>Expired</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Status_to_Expired</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Deal_Registration__c.Expiration_Date__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Deal Registration to Update Deal Business Day to False</fullName>
        <active>true</active>
        <formula>(ISPICKVAL(Status__c, &quot;Submitted&quot;) || ISPICKVAL(Status__c, &quot;Open&quot;)) &amp;&amp; (Is_Business_Day__c = True)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Is_today_a_Business_Day_to_False</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Deal_Registration__c.L1_escalation_SLA__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Deal Registration to Update Deal Status Pending field</fullName>
        <active>true</active>
        <formula>(ISPICKVAL(Status__c, &quot;Submitted&quot;) || ISPICKVAL(Status__c, &quot;Open&quot;))&amp;&amp;  (Is_Business_Day__c = False)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Is_today_a_Business_Day5</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Deal_Registration__c.L1_escalation_SLA__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Deal Registration to Update Deal Status Pending field for L2</fullName>
        <active>true</active>
        <formula>ISPICKVAL(Status__c, &quot;Pending Sales Review&quot;) &amp;&amp; ( Is_the_Status_Pending_L2_Escalation__c = False)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Is_the_Deal_Status_Pending_for_L2</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Deal_Registration__c.L2_escalation_SLA__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>DealReg Auto Approve</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Deal_Registration__c.Status__c</field>
            <operation>equals</operation>
            <value>Pending Sales Review</value>
        </criteriaItems>
        <criteriaItems>
            <field>Deal_Registration__c.Level_2_Approval_Deadline__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>HiddenAuto_Approve</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Deal_Registration__c.Level_2_Approval_Deadline__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>DealReg Expiration Date Update</fullName>
        <actions>
            <name>Update_Expiration_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Deal_Registration__c.Submission_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>DealReg Extension status Date Update</fullName>
        <actions>
            <name>Update_Extension_Status_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Deal_Registration__c.Extension_Status__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>DealReg To Capture L1 Approval Date</fullName>
        <actions>
            <name>Update_L1_Approval_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Deal_Registration__c.Status__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Deal_Registration__c.Final_Approver__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Oppty Amount Change</fullName>
        <actions>
            <name>Oppty_Amount_Changed</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Deal_Registration__c.Extension_Status__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterThan</operation>
            <value>&quot;USD 5,000&quot;</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Deal Status Pending field L2 False</fullName>
        <active>true</active>
        <formula>ISPICKVAL(Status__c, &quot;Pending Sales Review&quot;) &amp;&amp; ( Is_the_Status_Pending_L2_Escalation__c = True)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Is_the_Deal_Status_Pending_for_L2_to_Fal</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Deal_Registration__c.L2_escalation_SLA__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update the next Business Day</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Deal_Registration__c.Next_Business_Day__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Deal_Registration__c.Is_Business_Day__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Is_today_a_Business_Day2</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Deal_Registration__c.Next_Business_Day__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update the next Business Day L2 Escalation</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Deal_Registration__c.Next_Business_Day_for_L2_Escalation__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Deal_Registration__c.Is_Business_Day_for_L2__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Is_today_a_Business_Day_for_L2</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Deal_Registration__c.Next_Business_Day_for_L2_Escalation__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
