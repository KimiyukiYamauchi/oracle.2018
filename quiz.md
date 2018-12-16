# オラクル課題

## 12/19
- 2000年以降に雇用された従業員の従業員番号、姓、給与、雇用日付を  
雇用日付が新しい順に表示。小数点以下は四捨五入(1219.1.sql)
- 歩合を受け取る従業員の姓、職務、給与および歩合を給与の降順で  
表示(1219.2.sql)
- 従業員の姓と歩合の額を表示する。従業員が歩合を受け取らない場合は  
「No Commission」と表示。列名はCOMM(1219.3.sql)
- 次のような形式でデータを表示  
<従業員の姓> earns <給与> montly but wants <給与の3倍>.  
列名はDream Salaries、給与の少ない順に5名表示(1219.4.sql)
- 従業員の姓、雇用日、および6ヶ月の雇用期間後の最初の月曜日  
となる給与審査日を表示。列名はREVIEW  
「Monday, the Thirty-First of July, 2000」  
のような形式表示されるように日付の書式を設定  
従業員番号の昇順で上位の5名表示(1219.5.sql)

|                    Dream Salaries                     |
|:-------------------------------------------------------|
| Gienz earns $8,300.00 monthly but wants $24,900.00.    |
| Higgins earns $12,000.00 monthly but wants $36,000.00. |
| ・・・                                                 |

| LAST_NAME | HIRE_DATE |                   REVIEW                   |
|-----------|-----------|--------------------------------------------|
| King      | 17-JUN-87 | Monday, the Twenty-First of December, 1987 |
| Kochhar   | 21-SEP-89 | Monday, the Twenty-Sixth of March, 1990    |
| ・・・    |           |                                            |


## 12/18
- ディレクトリ1218を作成し、以下のスクリプトを格納
- 歩合が20%である従業員の姓、給与、歩合を表示(1218.1.sql)
- システムの日付を表示する問い合わせ、列にDateというラベルをつける(1218.2.sql)
- 従業員番号、姓、給与、15.5%増額された給与(整数で表示、列名はNew Salary)を  
給料の少ない順に5名表示(1218.3.sql)
- 従業員ごとに姓と月数を表示。その従業員が雇用された日付から今日までの月数を  
計算(列名はMONTHS_WORKED)、月数は最も近い整数に丸め、月数の多い5名表示(1218.4.sql)
- 従業員の姓と給与を給与の多い順に5名表示、給与は15文字長に設定し  
左側に$記号を埋め込む。列名はSALARY(1218.5.sql)

| LAST_NAME |      SALARY      |
|-----------|------------------|
| King      | $$$$$$$$$$$24000 |
| Kochhar   | $$$$$$$$$$$17000 |
| ・・・    |                  |

## 12/13
- ディレクトリ1213を作成し、以下のスクリプトを格納
- 給与が$12,000を超える従業員の姓名、給与の多い順に5名(1213.1.sql)  
- 従業員番号176の姓名、部門番号(1213.2.sql)  
- 給与が$5,000から$12,000の範囲に従業員の人数(1213.3.sql)  
- 姓がMatosおよびTaylorである従業員の姓、職務ID、入社日(1213.4.sql)  
- 部門20または50に所属する従業員の人数(1213.5.sql)  

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
- employees表のlast_name、hire_date、salaryを取得(1212.3.sql)  
条件は、
    - 2006年入社かつ
    - 給料が$9000より少ないかつ
    - 歩合給はもらっていない
- employees表のlast_name、hire_date、salaryを取得(1212.4.sql)  
条件は、
    - 2006年入社かつ給料が$9000より多い
    - または
    - 2006年入社かつ歩合給はもらっていない
- employees表のlast_name、hire_date、salaryを取得(1212.5.sql)  
条件は、
    - 給料が$9000から$10000の間

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
重複を排除する(1206.4.sql)
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