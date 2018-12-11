# オラクル課題

## 12/12
- ディレクトリ1212を作成し、以下のスクリプトを格納
- employees表のlast_nameとfirst_nameを取得(1212.1.sql)  
条件は、
    - last_nameが「D」で始まり、「a」と「e」を含む
- employees表のlast_nameとfirst_nameを取得(1212.2.sql)  
条件は、
    - 入社が2005年5月から2006年6月の期間かつ
    - 給料が$8000より少ないかつ
    - last_nameに「en」を含む
- employees表のlast_nameとemailを取得(1212.3.sql)  
条件は、
    - 2006年入社かつ
    - 給料が$9000より少ないかつ
    - 歩合給はもらっていない

## 12/11
- ディレクトリ1211を作成し、以下のスクリプトを格納
- employees表のlast_nameとfirst_nameを取得  
条件はlast_nameが'King'(1211.1.sql)
- employees表のlast_nameとsalaryを取得  
条件はsalaryが20000以上(1211.2.sql)
- employees表のlast_nameとhire_dateを取得  
条件はhire_dateが'08-01-01'以降(1211.3.sql)

## 12/06

- ディレクトリ1206を作成し、以下のスクリプトを格納
- employees表のlast_nameとfirst_nameを取得  
この時、列別名を姓、名とする(1206.1.sql)
- 給料が1万ドル以上の従業員のlast_nameとsalaryを  
取得(1206.2.sql)
- 1999年1月1日以降の入社日の従業員のlast_nameとhire_dateを  
取得(1206.3.sql)
- departments表からlocation_idを取得 但し、  
- employees表からlast_nameとsalaryを取得  
「last_name earn salary」の形式で表示(1206.5.sql)

## 12/05

- ディレクトリ1205を作成し、以下のスクリプトを格納
- employees表の全ての列を取り出すスクリプト(1205.1.sql)
- employees表のemployee_id, last_name, job_idを取り出す  
スクリプト(1205.2.sql)
- departments表のdepartment_id, department_name,を取り出す  
スクリプト(1205.3.sql)
- employees表salaryとsalaryに50を足したを12倍した値を  
取り出すスクリプト(1205.4.sql)
- departments表のdepartment_id, location_id,を取り出す  
スクリプト(1205.5.sql)


## 12/04

user表のデータを取得するSQL文の(1)と(2)の部分

``` sql
select * (1) (2);
```