def can_construct(ransom_note, magazine)
  #Runtime :75ms (90%) 
  #Memory :263mb (5%)
  ransom_note.each_char do |char|
    if magazine.include?(char)
      ransom_note.sub!(char,"")
      magazine.sub!(char, "")
    end
  
  end 
    
   "" == ransom_note ? true : false
end

