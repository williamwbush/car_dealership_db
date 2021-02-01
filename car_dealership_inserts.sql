CREATE PROCEDURE Insert_Car(_color VARCHAR, _make VARCHAR, _model VARCHAR, __year NUMERIC)
LANGUAGE SQL
AS $MAIN$
    INSERT INTO car(color, make, model, _year)
    VALUES(_color, _make, _model, __year);   
$MAIN$;

CALL Insert_Car('light blue', 'nissan', 'leaf', 2017);
CALL Insert_Car('red', 'audi', 'e-tron', 2020);
CALL Insert_Car('white', 'chevrolet', 'bolt', 2018);
CALL Insert_Car('black', 'tesla', 'model 3', 2021);
CALL Insert_Car('white', 'porsche', 'taycan', 2016);
CALL Insert_Car('blue', 'jaguar', 'i-pace', 2019);
CALL Insert_Car('silver', 'tesla', 'model x', 2020);
CALL Insert_Car('blue', 'mini', 'electric', 2018);
CALL Insert_Car('black', 'tesla', 'model s', 2017);
CALL Insert_Car('white', 'fiat', '500e', 2016);
CALL Insert_Car('blue', 'kia', 'niro', 2019);
CALL Insert_Car('silver', 'bmw', 'i3', 2020);
CALL Insert_Car('blue', 'hyundai', 'kona', 2018);
CALL Insert_Car('black', 'tesla', 'model y', 2017);
CALL Insert_Car('silver', 'hyundai', 'ioniq', 2020);
CALL Insert_Car('white', 'hyundai', 'kona', 2018);
CALL Insert_Car('black', 'tesla', 'model y', 2017);

CREATE PROCEDURE Insert_Salesperson(_first_name VARCHAR, _last_name VARCHAR, _sales_hire_date DATE)
LANGUAGE SQL
AS $MAIN$
    INSERT INTO salesperson(first_name, last_name, sales_hire_date)
    VALUES(_first_name, _last_name, _sales_hire_date);   
$MAIN$;

CALL Insert_Salesperson('mary', 'barra', '2017-02-21');
CALL Insert_Salesperson('elon', 'musk', '2018-05-13' );
CALL Insert_Salesperson('akio', 'toyoda', '2020-10-10');
CALL Insert_Salesperson('makoto', 'uchida', '2020-01-02');
CALL Insert_Salesperson('thierry', 'bolloré', '2019-11-30');
CALL Insert_Salesperson('eui-sun', 'chung', '2019-12-01');
CALL Insert_Salesperson('makoto', 'uchida', '2018-03-04');
CALL Insert_Salesperson('oliver', 'zipse', '2015-06-16');
CALL Insert_Salesperson('michael', 'manley', '2016-07-24');

DELETE FROM salesperson
WHERE salesperson_id = 7;

CREATE PROCEDURE Insert_Customer(_first_name VARCHAR, _last_name VARCHAR, _birth_date DATE, _email VARCHAR) 
LANGUAGE SQL
AS $MAIN$
    INSERT INTO customer(first_name, last_name, birth_date, email)
    VALUES(_first_name, _last_name, _birth_date, _email);   
$MAIN$;

CALL Insert_Customer('brigid', 'belding', '1960-01-01', 'brigid@yahoo.ca');
CALL Insert_Customer('addie', 'aranowitz', '1950-02-15', 'addie@sbcglobal.net');
CALL Insert_Customer('alfonzo', 'arrellano', '1972-03-19', 'alfonzo@outlook.com');
CALL Insert_Customer('jean', 'jenkins', '1983-04-04', 'jean@comcast.net');
CALL Insert_Customer('kirby', 'kaster', '1990-05-23', 'kirby23@live.com');
CALL Insert_Customer('mariette', 'mattis', '1941-06-29', 'mmattis@verizon.net');
CALL Insert_Customer('bess', 'baier', '1989-10-05', 'bbaier@gmail.com');
CALL Insert_Customer('teresa', 'talcott', '1975-02-01', 't.talcott@gmail.com');
CALL Insert_Customer('clemente', 'cowherd', '1969-12-17', 'cowherd@cowsgo.moo');
CALL Insert_Customer('helmut', 'haus', '1951-11-18', 'dasist@meinauto.de');

CREATE PROCEDURE Insert_Mechanic(_first_name VARCHAR, _last_name VARCHAR, _mech_hire_date DATE) 
LANGUAGE SQL
AS $MAIN$
    INSERT INTO mechanic(first_name, last_name, mech_hire_date)
    VALUES(_first_name, _last_name, _mech_hire_date);   
$MAIN$;

CALL Insert_Mechanic('ludwig', 'van beethoven', '2020-01-14');
CALL Insert_Mechanic('sergei', 'prokofieff', '2021-1-12');
CALL Insert_Mechanic('dmitri', 'shostakovich', '2019-05-03');
CALL Insert_Mechanic('pyotr', 'tchaikovsky', '2019-04-11');
CALL Insert_Mechanic('johann', 'bach', '2018-09-28');

CREATE PROCEDURE Insert_Part(_part_name VARCHAR, _part_cost NUMERIC, _part_quantity INTEGER) 
LANGUAGE SQL
AS $MAIN$
    INSERT INTO parts(part_name, part_cost, part_quantity)
    VALUES(_part_name, _part_cost, _part_quantity);   
$MAIN$;

CALL Insert_Part('fuel injector', 550, 5);
CALL Insert_Part('air conditioning compressor', 500, 7);
CALL Insert_Part('timing belt', 450, 8);
CALL Insert_Part('catalytic converter', 1500, 3);
CALL Insert_Part('head gasket', 2000, 2);
CALL Insert_Part('alternator', 400, 6);
CALL Insert_Part('radiator', 600, 5);
CALL Insert_Part('starter motor', 750, 4);
CALL Insert_Part('water pump', 650, 4);

CREATE PROCEDURE Insert_Service(_services_name VARCHAR) 
LANGUAGE SQL
AS $MAIN$
    INSERT INTO services(services_name)
    VALUES(_services_name);   
$MAIN$;

CALL Insert_Service('auto ac repair');
CALL Insert_Service('oxygen sensor replacement');
CALL Insert_Service('catalytic converter replacement');
CALL Insert_Service('timing belt replacement');
CALL Insert_Service('fuel cap replacement');
CALL Insert_Service('head gasket replacement');
CALL Insert_Service('alternator replacement');
CALL Insert_Service('water pump service');

CREATE PROCEDURE Insert_Sale_Invoice(_date_sold DATE, _amount NUMERIC,
	_msrp NUMERIC, _customer_id INTEGER, _vin_id INTEGER) 
LANGUAGE SQL
AS $MAIN$
    INSERT INTO sale_invoice(date_sold, amount, msrp, customer_id, vin_id)
    VALUES(_date_sold, _amount, _msrp, _customer_id, _vin_id);   
$MAIN$;

CALL Insert_Sale_Invoice('2021-1-20', 31000, 32525, 2, 1);
CALL Insert_Sale_Invoice('2020-05-19', 78500, 75795, 10, 2);
CALL Insert_Sale_Invoice('2020-01-02', 34000, 37495, 1, 3);
CALL Insert_Sale_Invoice('2020-06-19', 42000, 41190, 10, 4);
CALL Insert_Sale_Invoice('2020-10-05', 105000, 105150, 9, 5);

CREATE PROCEDURE Insert_Service_Invoice(_date_serviced DATE, _customer_id INTEGER,
	_part_id INTEGER, _vin_id INTEGER) 
LANGUAGE SQL
AS $MAIN$
    INSERT INTO service_invoice(date_serviced, customer_id, part_id, vin_id)
    VALUES(_date_serviced, _customer_id, _part_id, _vin_id);   
$MAIN$;

CALL Insert_Service_Invoice('2021-01-16', 3, 1, 6);
CALL Insert_Service_Invoice('2020-12-22', 4, 2, 7);
CALL Insert_Service_Invoice('2020-05-05', 5, 2, 8);
CALL Insert_Service_Invoice('2020-07-05', 6, 4, 9);
CALL Insert_Service_Invoice('2020-09-29', 6, 5, 10);

CREATE PROCEDURE Insert_Salesperson_Invoice(_salesperson_id INTEGER, _invoice_num INTEGER)
LANGUAGE SQL
AS $MAIN$
    INSERT INTO salesperson_invoice(salesperson_id, invoice_num)
    VALUES(_salesperson_id, _invoice_num);   
$MAIN$;

CALL Insert_Salesperson_Invoice(1, 5);
CALL Insert_Salesperson_Invoice(1, 4);
CALL Insert_Salesperson_Invoice(3, 3);
CALL Insert_Salesperson_Invoice(4, 2);
CALL Insert_Salesperson_Invoice(5, 1);

CREATE PROCEDURE Insert_Labor(_invoice_id INTEGER, _mechanic_id INTEGER, _services_id INTEGER, _labor_cost NUMERIC)
LANGUAGE SQL
AS $MAIN$
    INSERT INTO labor(invoice_id, mechanic_id, services_id, labor_cost)
    VALUES(_invoice_id, _mechanic_id, _services_id, _labor_cost);   
$MAIN$;

CALL Insert_Labor(1, 2, 5, 150);
CALL Insert_Labor(2, 1, 1, 175);
CALL Insert_Labor(3, 3, 1, 175);
CALL Insert_Labor(4, 3, 6, 350);
CALL Insert_Labor(5, 4, 7, 200);