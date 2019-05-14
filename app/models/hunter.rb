class Hunter < ApplicationRecord
    belongs_to :type

    def status
        {
            power: self.power,
            speed: self.speed,
            interigence: self.interigence,
            technique: self.technique
        }
    end
end
