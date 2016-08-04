module MojModul
   
   def self.ClassMethod(cyfra)
      
    if cyfra == 5
        return "Rowna sie 5"
        
    elsif cyfra == 3 || cyfra == 1
        return cyfra * 2
        
    elsif cyfra == 2 && (10 * 2 == 19)
        return "Prawda"
    else
        return "Chuj"
    end
   end
   
   def self.druga_metoda(cyfra)
      return cyfra * 25 
   end
   
end