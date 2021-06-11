class Language < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'Ruby on Rails' },
    { id: 3, name: 'HTML' },
    { id: 4, name: 'CSS' },
    { id: 5, name: 'React' },
    { id: 6, name: 'PHP' },
    { id: 7, name: 'Python' },
    { id: 8, name: 'Java' },
    { id: 9, name: 'JavaScript' }
  ]
  include ActiveHash::Associations
  has_many :items
end