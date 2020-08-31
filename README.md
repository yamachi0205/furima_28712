#テーブル設計

## users テーブル
|  Column       |  Type    |  Option       |
| ------------- |  ------- | ------------  |
| name          |  string  |  null: false  |
| name_reading  |  string  |  null: false  |
| nickname      |  string  |  null: false  |
| password      |  string  |  null: false  |
| email         |  string  |  null: false  |

### Association

-has_many :items


## items テーブル
|  Column    |  Type     |  Option             |
| ---------- |  -------  |  -----------------  |
| name       |  string   |  null: false        |
| price      |  integer  |  null: false        |
| category   |           |  null: false        |
| image      |  text     |  null: false        |
| comment    |  text     |  null: false        |
| user_id    |  integer  |  foreing_key: null  |

### Association

- belongs_to :users
- has_one :order


## orders テーブル
|  Column   |  Type     |  Option             |
| --------- |  -------- |  -----------------  |
| price     |  integer  |  foreing_key: null  |
| items_id  |  integer  |  foreing_key: null  |

### Association

belongs_to :items
has_one :addressees


## addressees テーブル
|  Column        |  type     |  Option       |
| -------------  |  -------  |  -----------  |
| postal_code    |  integer  |  null: false  |
| prefecture     |  integer  |  null: false  |
| city           |  string   |  null: false  |
| house_number   |  string   |               |
| building_name  |  string   |               |
| phone_number   |  integer  |  null: false  |

### Association

belongs_to :orders