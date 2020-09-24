# テーブル設計

## users テーブル

| Column                   | Type    | Options      |
| --------                 | ------  | ------------ |
| nickname                 | string  | null: false  | 
| email                    | string  | null: false  |
| password                 | string  | null: false  |

### Association

- has_many :items

##  itemsテーブル

| Column           | Type        | Options                        |
| ---------------  | ----------  | -----------------------------  |
| user             | references  | null: false, foreign_key: true |
| explanation      | text        |                                | 
| category_id      | integer     | null: false                    |
| brand            | string      |                                |
| parchase_day     | date        |                                |
| price            | string      |                                |
| season_id        | integer     | null: false                    |
| place            | string      |                                |


### Association

- belongs_to :user
- belongs_to :category

## cotegories テーブル

| Column                   | Type    | Options      |
| --------                 | ------  | ------------ |
| name                     | string  | null: false  | 

### Association

- has_many :items

