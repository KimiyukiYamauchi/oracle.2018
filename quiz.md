# オラクル課題

## 02/12

- 以下の5つの表を作成する

#### 表名: MEMBER

|    列名    | キー | NULL/Unique | デフォルト値 | データ型 | データ長 |
|------------|------|-------------|--------------|----------|---------:|
| MEMBER_ID  | PK   | NN,U        |              | NUMBER   |       10 |
| LAST_NAME  |      | NN          |              | VARCHAR2 |       25 |
| FIRST_NAME |      |             |              | VARCHAR2 |       25 |
| ADDRESS    |      |             |              | VARCHAR2 |      100 |
| CITY       |      |             |              | VARCHAR2 |       30 |
| PHONE      |      |             |              | VARCHAR2 |       15 |
| JOIN_DATE  |      | NN          | System Date  | DATE     |          |

#### 表名:TITLE

| 列名          | キー   | NULL/Unique   | Check                                                           | データ型   | データ長   |
| ------------- | ------ | ------------- | -------                                                         | ---------- | ---------:|
| TITLE_ID      | PK     | NN,U          |                                                                 | NUMBER     | 10         |
| TITLE         |        | NN            |                                                                 | VARCHAR2   | 60         |
| DESCRIPTION   |        | NN            |                                                                 | VARCHAR2   | 400        |
| RATING        |        |               | G, PG, R, <br>NC17, NR                                          | VARCHAR2   | 4          |
| CATEGORY      |        |               | DRAMA,<br>COMEDY,<br>ACTION,<br>CHILD,<br>SCIFI,<br>DOCUMENTARY | VARCHAR2   | 20         |
| RELEASE_DATE  |        |               |                                                                 | DATE       |            |

#### 表名: TITLE_COPY

|   列名   |  キー | NULL/Unique |                      Check                      | FK Ref Table | FK REF Col | データ型 | データ長 |
|----------|-------|-------------|-------------------------------------------------|--------------|------------|----------|---------:|
| COPY_ID  | PK    | NN,U        |                                                 |              |            | NUMBER   |       10 |
| TITLE_ID | PK,FK | NN,U        |                                                 | TITLE        | TITLE_ID   | NUMBER   |       10 |
| STATUS   |       | NN          | AVAILABLE,<br>DESTROYED,<br>RENTED,<br>RESERVED |              |            | VARCHAR2 | 15         |

#### 表名: RENTAL

|     列名     |  キー  |        デフォルト         | FK Ref Table | FK Ref Col | データ型 | データ長 |
|--------------|--------|---------------------------|--------------|------------|----------|----------|
| BOOK_DATE    | PK     | System Date               |              |            | DATE     |          |
| MEMBER_ID    | PK,FK1 |                           | MEMBER       | MEMBER_ID  | NUMBER   |       10 |
| COPY_ID      | PK,FK2 |                           | TITLE_COPY   | COPY_ID    | NUMBER   |       10 |
| ACT_RET_DATE |        |                           |              |            | DATE     |          |
| EXP_RET_DATE |        | System Date + <br> 2 days |              |            | DATE     |          |
| TITLE_ID     | PK,FK2 |                           | TITLE_COPY   | TITLE_ID   | NUMBER   | 10         |

#### 表名: RESERVATION

|    列名   |  キー  | NULL/ Unique | FK Ref Table | FK Ref Col | データ型 | データ長 |
|-----------|--------|--------------|--------------|------------|----------|----------|
| RES_DATE  | PK     | NN,U         |              |            | DATE     |          |
| MEMBER_ID | PK,FK1 | NN,U         | MEMBER       | MEMBER_ID  | NUMBER   |       10 |
| TITLE_ID  | PK,FK2 | NN,U         | TITLE        | TITLE_ID   | NUMBER   |       10 |


## 02/06 - 07

- 部門ごとの平均給与が最高額の部門の部門ID、その平均額及び  
その部門での最低給与を表示(0206.1.sql)
- 販売担当者(SA_REP)が勤務していない部門の部門ID、部門名、  
マネージャID、所在地IDを表示  
部門IDの昇順でソート(0206.2.sql)
- 従業員が3人未満の部門の部門ID、部門名、人数を表示  
部門IDの昇順でソート(0206.3.sql)
- 曜日ごとの雇用された人の人数を表示  
日、月、火...土曜日の順でソート(0206.4.sql)
- 部門ID、部門の平均給与、それぞれの行に所属員の姓を給与の降順で  
表示(LISTAGG関数を使用、列別名はMEMBER_LIST)(0206.5.sql)
- 従業員が最多の部門の部門ID、部門名、人数を表示(0206.6.sql)
- 従業員が1人もいないの部門ID、部門名、人数を表示  
部門IDの昇順でソート(0206.7.sql)


## 02/05

- プロンプトを表示させユーザに所在地IDを入力させ、その場所で勤務する  
従業員の部門名、所在地ID、姓、職種および給与を表示(0205.1.sql)
- 姓の最後の文字が「n」の従業員の数を表示(0205.2.sql)
- 部門ID、部門名、所在地ID、所属する従業員の人数を表示  
所属する従業員がいない部門も表示(人数は0となる)  
部門IDの昇順でソート(0205.3.sql)
- 月の前半(16日より前)に雇用された従業員の姓、雇用日付を表示  
雇用日付の昇順でソート(0205.4.sql)
- 給与が$1,500を超えるマネージャがいる全従業員を表示  
従業員の姓、マネージャの姓、マネージャの給与を表示。  
従業員の姓の昇順でソート(0205.5.sql)


## 01/31

- 歩合を受け取る従業員の姓、職務、給与、歩合を表示  
給与の降順でソート(0131.1.sql)
- 歩合を受け取らない従業員の姓、給与、昇給10%(端数は切り捨て)を表示  
給与の降順で上位5%(0131.2.sql)
- 従業員の姓、勤務年数および月数を表示(列別名はYEARS、MONTHS)  
勤務年数の降順で上位10名(0131.3.sql)
- 姓の最初の文字が「J」、「K」、「L」または「M」の従業員の姓を表示  
(0131.4.sql)
- 全従業員の姓、給与および歩合給を受け取りかどうかYes、Noで表示  
(列別名はCOMM)。DECODE関数を使用(0131.5.sql)

## 01/30

- EMPLOYEES2表(01/29作成)の状態を読取り専用に変更し、データを追加  
しようとすると読み取り専用で追加できない旨のメッセージが表示されること
- DEPT表(01/29作成)の削除を試み、エラーとなり削除できないことを  
確認
- EMPLOYEES表の従業員番号、従業員名および部門番号を表示する  
EMPLOYEES_VUというビューを作成
- EMPLOYEES表の部門50のすべての従業員の従業員番号、  
  従業員の姓、部門番号が表示される、DEPT50というビューを作成。  
  ビューの列にはEMPNO、EMPLOYEEおよびDEPTNOというラベルを付ける  
  セキュリティ上の理由から、ビューを通じて別の部門に従業員を変更する  
  操作を許可しない
- 以下の順序TEST_SEQを作成
    - 200から開始
    - 10づつ増分
    - 最大値は1000
    - 循環を行う
    - キャッシュはなし


## 01/29

#### DEPT表

| 列名 | キーの種類  | NULL/一意 | FK表 | FK列 | データ型 | 長さ |
|------|-------------|-----------|------|------|----------|-----:|
| ID   | Primary Key |           |      |      | NUMBER   |    7 |
| NAME |             |           |      |      | VARCHAR2 |   25 |

#### EMP表

| 列名       | キーの種類    | NULL/一意   | FK表   | FK列   | データ型   | 長さ   |
| ------     | ------------- | ----------- | ------ | ------ | ---------- | -----: |
| ID         | Primary Key   |             |        |        | NUMBER     | 7      |
| LAST_NAME  |               |             |        |        | VARCHAR2   | 25     |
| FIRST_NAME |               |             |        |        | VARCHAR2   | 25     |
| DEPT_ID    |               |             | DEPT   | ID     | NUMBER     | 7       |

- 上記のチャートに基づいてDEPT表を作成
- DEPT表にDEPARTMENTS表からデータをコピー。必要な列のみ
- 上記のチャートに基づいてEMP表を作成
- EMP表にEMPLOYEES表からデータをコピー。必要な列のみ
- EMPLOYEES表の構造に基づいてEMPLOYEES2表を作成。EMPLOYEE_ID、  
FIRST_NAME、LAST_NAME、SALARY及びDEPARTMENT_ID列のみ  
列名はそれぞれID、FIRST_NAME、LAST_NAME、SAL、DEPT_ID

## 01/24
- 従業員3の姓をDrexlerに変更(0124.1.sql)
- 給与が$900未満の従業員すべての給与を$1,000に変更(0124.2.sql)
- MY_EMPLOYEES表からBetty Dancsを削除(0124.3.sql)
- ここまでの変更をコミット(0124.4.sql)
- 一旦、すべてのデータを削除し、ロールバックを行う(0124.5.sql)

## 01/23
MY_EMPLOYEES表

|    Name    |   Null   |     Type     |
|------------|----------|--------------|
| ID         | NOT NULL | NUMBER(4)    |
| LAST_NAME  |          | VARCHAR2(25) |
| FIRST_NAME |          | VARCHAR2(25) |
| USERID     |          | VARCHAR2(8)  |
| SALARY     |          | NUMBER(9,2)  |

サンプルデータ

| ID | LAST_NAME | FIRST_NAME |  USERID  | SALARY |
|:--:|-----------|------------|----------|-------:|
|  1 | Patel     | Ralph      | rpatel   |    895 |
|  2 | Dancs     | Betty      | bdancs   |    860 |
|  3 | Biri      | Ben        | bbiri    |   1100 |
|  4 | Newman    | Chad       | cnewman  |    750 |
|  5 | Rpeburn   | Audrey     | aropebur |   1550 |

- MY_EMPLOYEES表の作成(0123.1.sql)
- サンプルの最初の行をMY_EMPLOYEES表に追加する  
INSERT句には列リストを指定しない(0123.2.sql)
- サンプルに2行目のをMY_EMPLOYEES表に追加  
今度はINSERT句に列リストを指定する(0123.3.sql)
- 残りの行をMY_EMPLOYEE表にロードするINSERT文を、  
動的に再利用可能なスクリプト・ファイルに記述します。  
スクリプトでは、すべての列(ID、LAST_NAME、FIRST_NAME、  
USERIDおよびSALARY)の入力をユーザーに求める必要があります。  
このスクリプトを0123.4.sqlファイルに保存
- 残りのデータを上記のスクリプトファイルを用いて追加

## 01/22

- 従業員の以前の職務IDと現行の職務IDを従業員IDの昇順  
で従業員IDと職務IDのリストを表示。  
この時、従業員IDと職務IDの組み合わせの重複は排除(0122.1.sql)
- 職務IDのST_CLERKが含まれない部門の部門IDのリストを  
集合演算子を使用して表示(0122.2.sql)
- 部門が存在しない国の国IDと国名を集合演算子を使用して  
表示(0122.3.sql)
- 部門10、50および20に対する職務のリストをこの順に出力。  
集合演算子を使用して職務IDと部門IDを表示(0122.4.sql)
- 現行の職務が会社に雇用された当初の職務と同じ  
(つまり職務を異動したが、現在は元の職務に戻っている)  
従業員の従業員IDと職務IDのリストを表示(0122.5.sql)

## 01/17

- ユーザーに従業員の姓の入力を求めるプロンプトを表示し、  
入力された名前の従業員と同じ部門に所属するすべての従業員  
(入力した従業員は除く)の姓と雇用日を表示(0117.1.sql)
- 給与が平均給与より多い従業員の従業員番号、姓および給与  
を給与の昇順で上位の5名表示(0117.2.sql)
- 姓に“u”の文字が含まれる従業員が所属する部門に勤務する  
すべての従業員の従業員番号と姓を表示(0117.3.sql)
- 部門の所在地IDが1700であるすべての従業員の姓、部門番号  
および職務IDを表示(0117.4.sql)
- Kingを上司とするすべての従業員の姓と給与を表示(0117.5.sql)

## 01/16

- LOCATIONS表とCOUNTRIES表をNATURAL JOINで結合し、  
所在地ID、番地、市、州または県、および国を表示(0116.1.sql)
- 従業員の姓、部門番号および部門名を表示する  
従業員番号の昇順で上位の20名表示(0116.2.sql)
- トロントで勤務しているすべての従業員の姓、職務、部門番号  
および部門名を表示(0116.3.sql)
- 従業員の姓、従業員番号および担当マネージャの姓とマネージャ番号を表示  
列には、Employee、Emp#、ManagerおよびMgr#の別名(0116.4.sql)
- 上記と同様な表示で、担当マネージャのいないKingを含める(0116.5.sql)

## 01/15

- 今年の目標、抱負

## 12/20

- 従業員の従業員番号、職務およびDECODE関数を使用して  
以下の対応表を元に職務に基づく等級を表示(1220.1.sql)
- CASE構文を使用して上記と同様の表示(1220.2.sql)
- すべての従業員の給与の最高額、最低額、合計および平均を表示。  
列名はそれぞれMaximum、Minimum、Sum、Average。  
結果を最も近い整数に丸めて表示(1220.3.sql)
- 職種ごとの給与の最低額、最高額、合計および平均を表示。  
列名はそれぞれMaximum、Minimum、Sum、Average。  
結果を最も近い整数に丸めて職種名の昇順で表示(1220.4.sql)
- 同じ職務の従業員の数を職種名の昇順で表示(1220.5.sql)


|         職務         | 等級 |
|----------------------|:----:|
| AD_PRES              | A    |
| ST_MAN               | B    |
| IT_PROG              | C    |
| SA_REP               | D    |
| ST_CLERK             | E    |
| 上記のいずれでもない | 0     |


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
New Salaryは小数点以下四捨五入で表示  
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