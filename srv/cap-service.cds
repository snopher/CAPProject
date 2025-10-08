using my.parceltracking as my from '../db/data-model';


service ParcelTracking {


    entity SparePartHeader as projection on my.SparePartHeader;
    entity SparePartItems as projection on my.SparePartItems;


}
