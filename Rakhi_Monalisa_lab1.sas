data ca_colon;
	
input group $ colon_ca $ frequency num;
	
datalines;

under2lb weekly 25

under2lb control 67

over2lb weekly 9

over2lb control 93 
;


/*
1. proc freq is used to produce contigency table and to analyze them

2. table statement is used for table to be produced and specifies the analysis of this. 

3. The variable with asterisk sign are used to form columns and rows.

4. After the / (slash) sign type of analysis is given here it is chisq. */


proc freq data=ca_colon order=data; /* chisq request chi-squared test based on association or independance */
	
tables group */
colon_ca /chisq;
	/* weight contains for each obervation */
	
weight frequency num; 
	
title "Contigency Table";

run;

/* Interpretation of Result */

/*  In total we have 194 sample size 