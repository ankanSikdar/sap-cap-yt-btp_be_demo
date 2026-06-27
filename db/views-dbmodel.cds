namespace view.btp_de_demo;

using {
    cuid
} from '@sap/cds/common';

@cds.persistence.exists
entity EMPLOYEEVIEW : cuid {
    NAME : String(255);
    EMAILID : String(255);
    DEPARTMENT : String(30);
}