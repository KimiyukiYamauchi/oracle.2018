# いろいろなSQL文

## 制約の一覧表示

## employees表

``` sql
select consraint_name from user_constraints
where table_name = 'EMPLOYEES';
```

## 日付書式

### '17-FEB-06'

``` sql
alter session set nls_date_language = 'AMERICAN';
alter session set nls_date_format = 'DD-MON-RR';
```
### '06-02-17'

``` sql
alter session set nls_date_language = 'JAPANESE';
alter session set nls_date_format = 'RR-MM-DD';
```