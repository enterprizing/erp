-ifndef(PRODUCT_HRL).
-define(PRODUCT_HRL, true).

-include("organization.hrl").

-type productType() :: virtual | physical.

-record('Product', { code         = [] :: [] | term(),
                     id           = kvs:seq([],[]) :: [] | binary(),
                     url          = [] :: [] | binary() | list(),
                     engineer     = [] :: [] | #'Person'{},
                     director     = [] :: [] | #'Person'{},
                     owner        = [] :: [] | #'Person'{},
                     organization = [] :: [] | #'Organization'{},
                     type         = [] :: productType() }).

-endif.
