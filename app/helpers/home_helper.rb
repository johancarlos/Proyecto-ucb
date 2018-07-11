module HomeHelper
    def setshowquestiontrue
        @homes.first.update_attribute(:showq, true)
    end
    def setshowquestionfalse
        @homes.first.update_attribute(:showq, true)
    end
  
      
end
