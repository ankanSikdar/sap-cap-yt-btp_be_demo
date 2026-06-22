namespace com.btp_be_demo;

// Aspects - anything which has been defined as a reusable entity block
using { cuid, managed } from '@sap/cds/common';

// Table Employee
entity EMPLOYEE : cuid, managed {
    Name: String(50);
    EmailID: String(255);
    Department: String(30);
}

// Table Department
entity DEPARTMENT : cuid, managed {
    Name: String(50);
}