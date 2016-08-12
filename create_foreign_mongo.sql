create extension multicorn;

create server mongodb_remote foreign data wrapper multicorn
options (wrapper 'yam_fdw.Yamfdw');

create foreign table location (
  _id text,
  name text
)
server mongodb_remote
options (db 'location', collection 'location', host '192.168.99.100', port '27017');