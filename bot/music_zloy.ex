#!/usr/bin/expect

spawn su zloy -c "xmms-shell -e status | head -n 1"
#expect assword {send maiBai2Me\r}
expect ����� {send maiBai2Me\r}
expect eof
