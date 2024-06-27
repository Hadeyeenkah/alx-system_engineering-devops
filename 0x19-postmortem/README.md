Incident Summary

Incident Date: March 15, 2024
Incident Time: 14:30 UTC
Duration: 2 hours
Affected Services: User Authentication Service
Impact: 50% of users were unable to log in
Root Cause: Misconfigured database update

Incident Timeline
14:30 - Incident Detected: Automated monitoring system detected a spike in login failures.
14:35 - Incident Escalated: Incident was escalated to the on-call engineering team.
14:40 - Initial Response: Team started investigating the issue, identified that the login service was failing.
15:00 - Mitigation: Rolled back the recent database update which was suspected to cause the issue.
16:30 - Resolution: Confirmed that the rollback resolved the issue and login success rates returned to normal.
16:45 - Post-Incident: Communicated resolution to all stakeholders and began root cause analysis.

Incident Details
What Happened: A recent update to the user authentication database was incorrectly configured, causing the authentication service to fail for a significant portion of users.
Impact Analysis: Approximately 50% of users were unable to log in during the incident, leading to potential revenue loss and user dissatisfaction.
Root Cause Analysis: The database update script had an error that caused a mismatch in expected and actual data formats, leading to authentication failures.
Resolution and Recovery
Steps Taken to Resolve: The team rolled back the database update and verified the fix.
Recovery Process: Services were monitored to ensure stability post-rollback.
Communication: Incident status updates were communicated to stakeholders every 30 minutes, and a final resolution message was sent out.

Lessons Learned
What Went Well: Quick detection and escalation; effective rollback plan.
What Didn't Go Well: Lack of pre-deployment checks for database updates.
Gaps in Monitoring and Alerting: No alerts were in place for specific data format mismatches.
Preventative Measures
Short-term Actions: Implement additional pre-deployment checks for database updates.
Long-term Actions: Develop automated tests for database changes and enhance monitoring to include data integrity checks.

Action Items and Owners:
Implement pre-deployment checks (Owner: Samuel Ogunwomoju, Deadline: April 1st, 2024)
Develop automated tests (Owner: Samuel Ogunwomoju, Deadline: April 1st, 2024)
Enhance monitoring (Owner: Samuel Ogunwomoju, Deadline: April  1st, 2024)
Postmortem Review
Review Date: march 17, 2024
Attendees: Alx
Summary of the Review: The team discussed the incident in detail, reviewed the timeline, and agreed on the preventative measures and action items. The importance of thorough testing and monitoring was emphasized
