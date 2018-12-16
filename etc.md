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

## select文の行制限

### 入社日が古いトップ10人を検索する

``` sql
select last_name, hire_date from employees order by hire_date
fetch first 10 rows only;
```
### 入社日が古いトップ1割の社員を検索する

``` sql
select last_name, hire_date from employees order by hire_date
fetch first 10 percent rows only;
```
### 給料の多い順に6番目〜10番目の社員を検索する(10番目と同値は検索しない)

``` sql
select last_name, salary from employees order by salary desc
offset 5 rows fetch next 5 rows only;
```

### 給料の多い順に6番目〜10番目の社員を検索する(10番目と同値も検索する)

``` sql
select last_name, salary from employees order by salary desc
offset 5 rows fetch next 5 rows with ties;
```

## 現在ログインしているユーザの確認

``` sql
select username from user_users;
```

## 所有しているテーブルの一覧

``` sql
select table_name from usr_tables;
```