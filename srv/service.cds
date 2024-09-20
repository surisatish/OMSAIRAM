
using { SalesOrder as me  } from '../db/schema';

service SalesOrdersrv {
    @odata.draft.enabled
    entity Header as projection on me.Header;
    @read entity Item as projection on me.Item;

}