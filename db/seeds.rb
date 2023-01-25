User.create!(
  email: 'user1@example.com',
  name: 'ユーザー',
  image: File.open('./app/assets/images/avatar.png')
)

Category.create!(
  [
    {
      category_name: 'バックエンド'
    },
    {
      category_name: 'フロントエンド'
    },
    {
      category_name: 'インフラ'
    }
  ]
)

Skill.create!(
  [
    {
      skill_name: 'Ruby',
      level: 40,
      user_id: 1,
      category_id: 1
    },
    {
      skill_name: 'Rails',
      level: 40,
      user_id: 1,
      category_id: 1
    },
    {
      skill_name: 'MySQL',
      level: 40,
      user_id: 1,
      category_id: 1
    },
    {
      skill_name: '削除用',
      level: 100,
      user_id: 1,
      category_id: 1
    },
    {
      skill_name: 'HTML',
      level: 40,
      user_id: 1,
      category_id: 2
    },
    {
      skill_name: 'CSS',
      level: 40,
      user_id: 1,
      category_id: 2
    },
    {
      skill_name: 'JavaScript',
      level: 40,
      user_id: 1,
      category_id: 2
    },
    {
      skill_name: 'Heroku',
      level: 40,
      user_id: 1,
      category_id: 3
    },
    {
      skill_name: 'AWS',
      level: 40,
      user_id: 1,
      category_id: 3
    },
    {
      skill_name: 'Firebase',
      level: 40,
      user_id: 1,
      category_id: 3
    }
  ]
)
