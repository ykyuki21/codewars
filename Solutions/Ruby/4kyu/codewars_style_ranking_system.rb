class User
  attr_reader :rank, :progress

  RANKS = [-8,-7,-6,-5,-4,-3,-2,-1,1,2,3,4,5,6,7,8]

  def initialize
    @rank = -8
    @progress = 0
  end
  
  def inc_progress(completed_rank)
    raise "progress_rank must be -8 to 8" unless RANKS.include?(completed_rank)
    return if self.rank >= 8
    
    if (self.rank * completed_rank < 0)
      completed_rank = completed_rank - 1
    end
      
    diff = self.rank - completed_rank
    if (diff >= 1)
      @progress = @progress + 1
    elsif (diff == 0)
      @progress = @progress + 3
    elsif (diff <= -1)
      @progress = @progress + ( 10 * -diff * -diff)
    end
    
    rank_up if @progress >= 100
  end
    
  private
    def rank_up
      r = @progress.div 100
      old_rank = self.rank
      @rank = old_rank + r
      @progress = @progress - (r * 100)
      
      if (old_rank * self.rank <= 0)
        @rank = @rank + 1
      end
      
      if self.rank == 8
        @progress = 0
      end
    end
end
