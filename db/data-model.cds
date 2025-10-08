using {
    cuid,
    managed,
} from '@sap/cds/common';


namespace my.parceltracking;


entity SparePartHeader : cuid, managed {
    key ID                    : UUID @Core.Computed;
        SourceOrgName         : String;
        RecordNumber          : String;
        RecordID              : String;
        IntegrationTrackingID : String;
        TrackingNumber        : String;
        TechnicianLocation    : String;
        SubmittedDate         : DateTime;
        PlantNumber           : String;
        ExpectedArrivalDate   : Date;
        Account               : String;
        CreatedDate           : type of managed : createdAt;
        CreatedById           : type of managed : createdBy;
        HeaderStatus          : String;
        spare_items           : Composition of many SparePartItems
                                    on spare_items.HeaderID = $self;
}


entity SparePartItems : managed {
    key ItemID                           : UUID @Core.Computed;
        HeaderID                         : Association to SparePartHeader;
        RecordID                         : String;
        LineNumber                       : String;
        VirtualCaseBillingLocationNumber : String;
        TargetStorageLocation            : String;
        TargetPlant                      : String;
        SourceStorageLocation            : String;
        SourcePlant                      : String;
        SourceMaterialNumber             : String;
        SourceBatch                      : String;
        SerialNumber                     : String;
        SAPMovementType                  : String;
        Reference                        : String;
        Qty                              : Decimal(13, 3);
        ChildLineID                      : String;
        BaseUnit                         : String;
        SAPDeliveryNumber                : String;
        SAPDeliveryItemNumber            : String;
        ReturnReason                     : String;
        Status                           : String;
        comment                          : String;
}
