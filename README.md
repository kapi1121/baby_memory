# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## usersテーブル

| Column             | Type   | Options                  |
|--------------------|--------|--------------------------|
| name               | string | null: false              |
| email              | string | null: false, unique:true |
| encrypted_password | string | null: false              |

### Association

- has_many :babies

## babiesテーブル

| Column     | Type       | Options                        |
|------------|------------|--------------------------------|
| user       | references | null: false, foreign_key: true |
| name       | string     | null: false                    |
| birth_date | date       | null: false                    |
| height     | float      |                                |
| weight     | float      |                                |

### Association

- belongs_to :user
- has_many :feedings

## feedingsテーブル

| Column     | Type       | Options                        |
|------------|------------|--------------------------------|
| user       | references | null: false, foreign_key: true |
| name       | string     | null: false                    |
| birth_date | date       | null: false                    |
| height     | float      |                                |
| weight     | float      |                                |

