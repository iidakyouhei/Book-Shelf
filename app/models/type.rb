class Type < ActiveHash::Base
  self.data = [ 
    {id: 1, name: '自己啓発'}, {id: 2, name: '参考書'}, {id: 3, name: '経済'}, {id: 4, name: '小説'}
  ]
end