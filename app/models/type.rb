class Type < ActiveHash::Base
  self.data = [ 
    {id: 1, name: 'プログラミング'}, {id: 2, name: 'インフラ'}, {id: 3, name: '転職'}, {id: 4, name: '画像'}
  ]
end