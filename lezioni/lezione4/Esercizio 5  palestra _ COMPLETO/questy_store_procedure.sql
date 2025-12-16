-- creare una store procedure per contare il numero di iscrizioni di un cliente
-- chiama la store procedure e stampa il risultato



-- creare una store procedure per contare il numero di iscrizioni di un cliente

DELIMITER $$

create PROCEDURE conta_iscrizioni( IN id int, OUT conta int)
BEGIN
	SELECT count(*) into conta from iscrizioni where cliente_id = id;
END $$

delimiter ;


set @num = 0;
call conta_iscrizioni(1,@num);
SELECT @num;
