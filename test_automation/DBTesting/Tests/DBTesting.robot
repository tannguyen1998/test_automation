*** Settings ***
Library  DatabaseLibrary
Library  OperatingSystem

Suite Setup  Connect To Database  pymysql  ${DBName}  ${DBUser}  ${DBPassword}  ${DBHost}  ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBName}  mydb
${DBUser}  root
${DBPassword}  1234aaAA
${DBHost}  127.0.0.1
${DBPort}  3306

*** Test Cases ***
#Create person table
    #${Output}=  Execute SQL String  Create table person(id integer,first_name varchar(20),last_name varchar(20));
    #Log To Console  ${Output}
    #Should Be Equal As Strings  ${Output}  None
Inserting Data In Person Table
    #nhap 1 value
    #${Output}=  Execute SQL String  Insert into person values(001,"Tan","Nguyen");

    #nhap nhieu value
    ${Output}=  Execute SQL Script  ./TestData/insertData.sql
    Log To Console  ${Output}
    Should Be Equal As Strings  ${Output}  None

Check A record precrd preset in person table   #test value co trong system
    Check If Exists In Database  select id from mydb.person where first_name="B";

Check L record not present in person table   #test value khong co trong system
    Check If Not Exists In Database  select id from mydb.person where first_name="L";

Check person table exists in mydb database   #test table co ton tai trong system
    Table must exist  person

Verify row count is zero   #test row ko ton tai
    row count is 0  select * from mydb.person where first_name = 'xyz';

Verify row count is equal to some value   #test row ton tai se = gia tri (1)
    row count is equal to x  select * from mydb.person where first_name = 'A';  1

Verify row count is greater than some value   #test row ton tai se > gia tri (0)
    row count is greater than x  select * from mydb.person where first_name = 'A';  0

Verify row count is less than some value   #test row ton tai se < gia tri (2 tro len)
    Row count is less than x  select * from mydb.person where first_name = 'david';  2

Update record in person table   #edit value [value] tai vi tri id=...
    ${output}=  Execute SQL String  Update mydb.person set first_name="W" where id=5;
    log to console  ${output}
    should be equal as strings  ${output}  None

Retrieve Records from person table   #show all value in table
    @{queryResults}=  query  select * from mydb.person
    log to console  many @{queryResults}

Delete Records from person table   #remove value in table
    ${output}=  Execute SQL String  Delete from mydb.person;
    should be equal as strings  ${output}  None

*** Keywords ***
