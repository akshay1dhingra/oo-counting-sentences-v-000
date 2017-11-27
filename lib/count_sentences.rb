require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences

    self.split(/[.?!]/).delete_if {|x| x.empty?}.count #there is an empty string in the array and in order to delete/reject it you must iterate through the array, check if that string in the array has no characters, then delete.if or you can use .reject as well. 
    
  end
end
