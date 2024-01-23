# @param {Integer} n
# @return {Integer}
@cache = [0,1]
def climb_stairs(n)
    if n < 3
        return n 
    else
      @cache[n] ||= climb_stairs(n - 2) + climb_stairs(n - 1)   
    end
    @cache[n]
end