# テーブル設計

## users テーブル

| Column                   | Type    | Options      |
| --------                 | ------  | ------------ |
| nickname                 | string  | null: false  | 
| email                    | string  | null: false  |
| password                 | string  | null: false  |
| text                     | string  | null: false  |

### Association

- has_many :items

##  itemsテーブル

| Column           | Type        | Options                        |
| ---------------  | ----------  | -----------------------------  |
| user             | references  | null: false, foreign_key: true |
| explanation      | text        |                                | 
| category_id      | integer     | null: false                    |
| brand            | text        | null: false                    |
| parchase_day     | date        | null: false                    |
| price            | integer     | null: false                    |
| season_id        | integer     | null: false                    |
| where            | text        |                                |


### Association

- belongs_to :user
