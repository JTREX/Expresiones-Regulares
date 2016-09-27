def check_account(string)
  if string.match(/(\d{4})-(\d{3})-(\d{3})$/)  
    true
  else
    "Error"
   end
end

#Driver Code
p check_account("1234-123-123") == true
p check_account("1234-123-123333") == "Error"
p check_account("1234-123") == "Error"  
p check_account("1234-123-abc") == "Error"

p "----------------------------------"

def if_exists_account?(string)
  if /(\d{4})-(\d{3})-(\d{3})$/ =~ string 
    string 
  else
    "Error"
  end
end

#Driver Code 
p if_exists_account?("1234-123-123") == "1234-123-123"
p if_exists_account?("1234-123") == "Error"
p if_exists_account?("1234-123-abc") == "Error"
 
p "---------------------------------*"

def replace_numbers(string)
   string.gsub(/(\d{4})-(\d{3})/, "XXXX-XXX")
 end

#Driver Code
p replace_numbers("1234-123-144") == "XXXX-XXX-144"
p replace_numbers("1234-123-123") == "XXXX-XXX-123"

p "---------------------------------*"

def array_with_account(string)
  string.scan(/\d{4}-\d{3}-\d{3}/)    
end

#Driver Code
p array_with_account("cuenta1: 1234-123-563 cuenta2: 1234-123-123") == ["1234-123-563", "1234-123-123"]
p array_with_account("cuenta1: cuenta2: 1234-423-688") == ["1234-423-688"]

p "---------------------------------"


def check_numbers(string)
  if string.length == 10 
    string.gsub(/(\d{4})(\d{3})(\d{3})$/, '\1-\2-\3')
  elsif string.length == 12
    string.gsub(/(\d{4}).(\d{3}).(\d{3})$/, '\1-\2-\3')
  else
    string + "   " + "Invalid Number" 
  end  
end

#Driver Code
p check_numbers("1234567890") == "1234-567-890"
p check_numbers("1234.567.890") == "1234-567-890"
p check_numbers("123456789") == "123456789   Invalid Number"


#def check_account("1234-234-345") == true
#def if_exists_account?("cuenta1: 1234-123-234") == "1234-123-234"
#def array_with_account(cuenta1: cuenta2: "1234-223-234") == ["1234-223-234"]
#def replace_numbers(cuenta1: cuenta2: "1234-223-234") == "XXXX-XXX-234"

#def check_numbers("1234567890") == "1234-567-890"
#def check_numbers("1234.567.890") == "1234-567-890"
#def check_numbers("123456789") == "Invalid"
