module Enumerable
    def my_each
        index = 0
        if block_given?
          self.length.times do 
            yield(self[index])
            index+=1
          end
          return self
        else
          return to_enum(:self)
        end
      end
end
