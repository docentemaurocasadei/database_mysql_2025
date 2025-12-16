prodotti
- id
- categoria_id
- nome
- prezzo

categorie
- id
- nome

-- select c.id, c.nome as categoria, count(*) as numero_prodotti
-- from prodotti p join categorie c on p.categoria_id = c.id
-- group by c.id
-- having count(*) > 10;

-- select row_number() OVER(ORDER by c.nome), c.id, c.nome as categoria from categorie c;

-- 1  5 abbigliamento
-- 2  8 cancelleria
-- 3  3 elettronica
-- 4  10 giocattoli
-- 5  2 informatica

ordini
- id
- data_ordine   
- cliente_id
- totale

select sum(totale) as totale_ordini from ordini where data_ordine between '2025-12-10' 
and data_ordine < '2025-12-15';

