# データベース設計

### users テーブル

| Column                     | Type   | Options                   |
| -------------------------- | ------ | ------------------------- |
| email                      | string | null: false, unique: true |
| password_digest            | string | null: false               |
| last_name                  | string | null: false               |
| first_name                 | string | null: false               |
| company                    | string |                           |
| address                    | string |                           |
| phone_num                  | string | null: false               |
| info                       | text   |                           |

### Association

- has_many :clients
- has_many :projects

### clients テーブル

| Column                     | Type        | Options                         |
| -------------------------- | ----------- | ------------------------------- |
| cli_email                  | string      |                                 |
| cli_company                | string      |                                 |
| cli_last_name              | string      | null: false                     |
| cli_first_name             | string      | null: false                     |
| cli_address                | string      |                                 |
| cli_phone_num              | string      | null: false                     |
| cli_info                   | text        |                                 |
| user                       | references  | null: false, foreign_key: true  |

### Association

- has_many :projects
- belongs_to :user

### projects テーブル

| Column                     | Type        | Options                         |
| -------------------------- | ----------- | ------------------------------- |
| pro_name                   | string      | null: false                     |
| pro_info                   | text        |                                 |
| user                       | references  | null: false, foreign_key: true  |
| client                     | references  | null: false, foreign_key: true  |

### Association

- has_many :items
- belongs_to :user
- belongs_to :client

### items テーブル

| Column                       | Type        | Options                         |
| ---------------------------- | ----------- | ------------------------------- |
| item_name                    | string      | null: false                     |
| item_price                   | integer     | null: false                     |
| item_amount                  | integer     | null: false                     |
| item_info                    | text        |                                 |
| project                      | references  | null: false, foreign_key: true  |

### Association

- belongs_to :project
