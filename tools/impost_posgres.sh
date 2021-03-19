pg_restore -U postgres -p 1 --verbose --clean --no-acl --no-owner -h localhost -d QLNS latest.dump
rm latest.dump
