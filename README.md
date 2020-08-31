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
| birthday             |  date    |  null: false    |



### Association

- has_many :items
- has_many :orders

## items テーブル
|  Column    |  Type     |  Option             |
| ---------- |  -------  |  -----------------  |
| name       |  string   |  null: false        |
| price      |  integer  |  null: false        |
| category   |  integer  |  null: false        |
| image      |  text     |  null: false        |
| comment    |  text     |  null: false        |
| user_id    |  integer  |  foreign_key: true  |
| status     |  integer  |                     |
| postage    |  integer  |                     |
| area       |  integer  |                     |
| days       |  integer  |                     |

### Association

- belongs_to :user
- has_one :order


## orders テーブル
|  Column   |  Type     |  Option             |
| --------- |  -------- |  -----------------  |
| user_id   |  integer  |  foreign_key: true  |
| items_id  |  integer  |  foreign_key: true  |

### Association

- belongs_to :item
- belongs_to :user
- has_one :addressee


## addressees テーブル
|  Column        |  type     |  Option            |
| -------------  |  -------  |  ----------------  |
| postal_code    |  string   |  null: false       |
| prefecture     |  integer  |  null: false       |
| city           |  string   |  null: false       |
| house_number   |  string   |  null: false       |
| building_name  |  string   |                    |
| phone_number   |  string   |  null: false       |
| orders_id      |  integer  |  foreign_key: true |

### Association

- belongs_to :order