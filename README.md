#テーブル設計

## users テーブル
|  Column              |  Type    |  Option         |
| -------------------- |  ------- | --------------  |
| family_name          |  string  |  null: false    |
| first_name           |  string  |  null: false    |
| family_name_reading  |  string  |  null: false    |
| first_name_reading   |  string  |  null: false    |
| nickname             |  string  |  null: false    |
| password             |  string  |  null: false    |
| email                |  string  |  null: false    |
| year                 |  integer |  foreign: true  |
| month                |  integer |  foreign: true  |
| day                  |  integer |  foreign: true  |


### Association

- has_many :items
- has_one :order

## items テーブル
|  Column    |  Type     |  Option             |
| ---------- |  -------  |  -----------------  |
| name       |  string   |  null: false        |
| price      |  integer  |  null: false        |
| category   |           |  null: false        |
| image      |  text     |  null: false        |
| comment    |  text     |  null: false        |
| user_id    |  integer  |  foreign_key: true  |
| status     |  integer  |  foreign_key: true  |
| postage    |  integer  |  foreign_key: true  |
| area       |  integer  |  foreign_key: true  |
| days       |  integer  |  foreign_key: true  |

### Association

- belongs_to :user
- has_one :order


## orders テーブル
|  Column   |  Type     |  Option             |
| --------- |  -------- |  -----------------  |
| user_id   |  integer  |  foreign_key: true  |
| items_id  |  integer  |  foreign_key: true  |

### Association

- belongs_to :items
- belongs_to :user
- has_one :addressees


## addressees テーブル
|  Column        |  type     |  Option       |
| -------------  |  -------  |  -----------  |
| postal_code    |  integer  |  null: false  |
| prefecture     |  integer  |  null: false  |
| city           |  string   |  null: false  |
| house_number   |  string   |  null: false  |
| building_name  |  string   |               |
| phone_number   |  integer  |  null: false  |

### Association

- belongs_to :order