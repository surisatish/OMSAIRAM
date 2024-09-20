using {
    cuid,
    managed
} from '@sap/cds/common';

namespace SalesOrder;

entity Header : cuid, managed {
    Orderno   : Association to one Item;
    Ordertype : String @title : 'SalesOrderType';
    erdat     : String;
  
}

entity Item : cuid {
    Orderno      : String;
    itemno       : String;
    materialno   : String;
    itemcategory : String;
    Header : Association to many Header on Header.Orderno = $self;
}
