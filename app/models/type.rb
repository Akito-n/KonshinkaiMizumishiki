class Type < ApplicationRecord

    has_many :hunters, dependent: :destroy


    enum name: {
        tokushitsu: 0,
        kyouka: 1,
        hennka: 2,
        sousa: 3,
        housyutu: 4,
        gugennka: 5,
        other: 6
    }
end
