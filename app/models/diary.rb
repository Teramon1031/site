class Diary < ApplicationRecord
    validates :title,{presence: true, length: {maximum:10}}
    validates :content,{presence: true}
    validates :code, {presence: true, uniqueness: true}

    def short
        text = self.content
        return text[0,100]
    end
end
