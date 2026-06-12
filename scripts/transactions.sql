start TRANSACTION;

update solicitacoes set status=True where id=1;

commit;

ROLLBACK;

start TRANSACTION;

update solicitacoes set status=FALSE where id=2;

commit;

ROLLBACK;