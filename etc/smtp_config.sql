update ir_mail_server set active = false;
delete from ir_mail_server where smtp_host = 'mailcatcher';
insert into ir_mail_server(name, smtp_host, smtp_port, smtp_encryption, active) values ('mailcatcher','mailcatcher','1025','none','true');
