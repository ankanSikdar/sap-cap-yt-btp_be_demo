namespace com.btp_be_demo;

using com.btp_be_demo as empdb from '../db/employee-dbmodel';

@requires: 'authenticated-user'
service EmployeeService {

    @odata.draft.enabled
    entity Employees   as select from empdb.EMPLOYEE;

    entity Departments as select from empdb.DEPARTMENT;
}

annotate EmployeeService.Employees with @(
                                          // Design Level Annotations
                                        UI: {
    LineItem             : [
        {
            $Type: 'UI.DataField',
            Value: Name,
        },
        {
            $Type: 'UI.DataField',
            Value: EmailID,
        },
        {
            $Type: 'UI.DataField',
            Value: Department,
        },
        {
            $Type: 'UI.DataField',
            Value: createdBy,
        },
        {
            $Type: 'UI.DataField',
            Value: createdAt,
        },
    ],

    FieldGroup #BasicData: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: Name,
            },
            {
                $Type: 'UI.DataField',
                Value: EmailID,
            },
            {
                $Type: 'UI.DataField',
                Value: Department,
            },
        ],
    },

    FieldGroup #AdminData : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: createdBy,
            },
            {
                $Type: 'UI.DataField',
                Value: createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
        ],
    },

    Facets  : [
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#BasicData',
            Label: 'General Information',
            ID: 'idBasicData'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#AdminData',
            Label: 'Admin Information',
            ID: 'idAdminData'
        },
    ],
}) {
    // Property Level Annotations
    Name @title: 'Full Name';
    EmailID @title: 'Email ID';
    Department @title: 'Department';

}
