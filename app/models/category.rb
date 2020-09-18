class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ジーンズ' },
    { id: 3, name: 'パンツ' },
    { id: 4, name: 'トップス(羽織り物)' },
    { id: 5, name: 'Tシャツ' },
    { id: 6, name: 'シャツ' },
    { id: 7, name: 'インナー' },
    { id: 8, name: 'ニット' },
    { id: 9, name: 'ジャケット' },
    { id: 10, name: 'コート' },
    { id: 11, name: '帽子/ヘア小物' },
    { id: 12, name: 'アクセサリー' },
    { id: 13, name: '小物' },
    { id: 14, name: 'その他' }
  ]
end
