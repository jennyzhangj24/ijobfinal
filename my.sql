Select JobRequirment, offernum,rejectnum ,pendingnum from
(SELECT JobRequirment,count(*) as offernum FROM `MemberJobs_Table` WHERE User_Id=5 and CurrentStatus='Offer'
group by JobRequirment)  AS offertable,
(SELECT JobRequirment,count(*) as rejectnum FROM `MemberJobs_Table` WHERE User_Id=5 and CurrentStatus='Reject'
group by JobRequirment)  AS rejecttable,
(SELECT JobRequirment,count(*) as pendingnum FROM `MemberJobs_Table` WHERE User_Id=5 and CurrentStatus='Pending'
group by JobRequirment)  AS pendingtable
where offertable.JobRequirment=rejecttable.JobRequirment and pendingtable.JobRequirment=rejecttable.JobRequirment and offertable.JobRequirment=pendingtable.JobRequirment




Select JobRequirment, offernum,rejectnum ,pendingnum from
MemberJobs_Table left outer join 
(SELECT JobRequirment,count(*) as offernum FROM `MemberJobs_Table` WHERE User_Id=5 and CurrentStatus='Offer'
group by JobRequirment)  AS offertable on MemberJobs_Table.JobRequirment=offertable.JobRequirment left outer join 
(SELECT JobRequirment,count(*) as rejectnum FROM `MemberJobs_Table` WHERE User_Id=5 and CurrentStatus='Reject'
group by JobRequirment)  AS rejecttable on offertable.JobRequirment=rejecttable.JobRequirment left outer join 
(SELECT JobRequirment,count(*) as pendingnum FROM `MemberJobs_Table` WHERE User_Id=5 and CurrentStatus='Pending'
group by JobRequirment)  AS pendingtable on pendingtable.JobRequirment=rejecttable.JobRequirment



where offertable.JobRequirment=rejecttable.JobRequirment and pendingtable.JobRequirment=rejecttable.JobRequirment and offertable.JobRequirment=pendingtable.JobRequirment



Select JobRequirment, offernum,rejectnum ,pendingnum from
(SELECT JobRequirment,count(*) as offernum FROM `MemberJobs_Table` WHERE User_Id=5 and CurrentStatus='Offer'
group by JobRequirment)  AS offertable,
(SELECT JobRequirment,count(*) as rejectnum FROM `MemberJobs_Table` WHERE User_Id=5 and CurrentStatus='Reject'
group by JobRequirment)  AS rejecttable,
(SELECT JobRequirment,count(*) as pendingnum FROM `MemberJobs_Table` WHERE User_Id=5 and CurrentStatus='Pending'
group by JobRequirment)  AS pendingtable
where offertable.JobRequirment=rejecttable.JobRequirment and pendingtable.JobRequirment=rejecttable.JobRequirment and offertable.JobRequirment=pendingtable.JobRequirment





Select distinct MemberJobs_Table.JobRequirment, offernum,rejectnum ,pendingnum from
MemberJobs_Table  left outer join 
(SELECT JobRequirment,count(*) as offernum FROM `MemberJobs_Table` WHERE User_Id=5 and CurrentStatus='Offer'
group by JobRequirment)  AS offertable on MemberJobs_Table.JobRequirment=offertable.JobRequirment left outer join 
(SELECT JobRequirment,count(*) as rejectnum FROM `MemberJobs_Table` WHERE User_Id=5 and CurrentStatus='Reject'
group by JobRequirment)  AS rejecttable on offertable.JobRequirment=rejecttable.JobRequirment left outer join 
(SELECT JobRequirment,count(*) as pendingnum FROM `MemberJobs_Table` WHERE User_Id=5 and CurrentStatus='Pending'
group by JobRequirment)  AS pendingtable on pendingtable.JobRequirment=rejecttable.JobRequirment
WHERE User_Id=5



