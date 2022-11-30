/3
SELECT client.fullname, client.id, loan.active
FROM client, loan
JOIN client_to_loan ON loan.id = client_to_loan.loan_id
WHERE active = true
GROUP BY client.id, loan.active;

/4
SELECT subsidiary.id, SUM(quantity)
FROM subsidiary
         JOIN loan ON subsidiary.id = loan.subsidiary_id
GROUP BY subsidiary.id ORDER BY SUM DESC
LIMIT 1;