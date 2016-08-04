class User < ActiveRecord::Base
    
    include MojModul
    
    def self.metodaKlasy(cyfra)
        return cyfra * 10
    end
    
    def metoda_instancji(cyfra)
        return cyfra * 5
    end

end
