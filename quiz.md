# オラクル課題

## 12/06
### 「hr」ユーザ
1. 給与が$12,000を超える従業員の姓名、給与の多い順に5名(1206.1.sql)  
1. 従業員番号176の姓名、部門番号(1206.2.sql)  
1. 給与が$5,000から$12,000の範囲に従業員の人数(1206.3.sql)  
1. 姓がMatosおよびTaylorである従業員の姓、職務ID、開始日(1206.4.sql)  
1. 部門20または50に所属する従業員の人数(1206.5.sql)  
- hrスキーマに接続するためのスクリプト(hr.sh)
- 各自のスキーマに接続するためのスクリプト(us.sh)

## 12/05

- ディレクトリ1205を作成し、以下のスクリプトを確認
- employees表の全ての列を取り出すスクリプト(1205.1.sql)
- employees表のemployee_id, last_name, job_idを取り出す  
スクリプト(1205.2.sql)
- departments表のdepartment_id, department_name,を取り出す  
スクリプト(1205.3.sql)
- employees表salaryとsalaryに50を足したを12倍した値を  
取り出すスクリプト(1205.4.sql)
- - departments表のdepartment_id, location_name,を取り出す  
スクリプト(1205.5.sql)


## 12/04

user表のデータを取得するSQL文の(1)と(2)の部分

``` sql
select * (1) (2);
```