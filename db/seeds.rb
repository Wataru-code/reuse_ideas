# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env == 'development'
    (1..100).each do |i|
        Idea.create(title: "アイデア#{i}", user_name: "ユーザー#{i}", category: "カテゴリ")
    end
    
    Tag.create([
        { name: "服" },
        { name: "日用品" },
        { name: "容器"},
        { name: "家具" },
        { name: "家電" }
    ])
end
