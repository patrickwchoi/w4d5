def first_anagram?(str1, str2) #O(n!)
    perms = str1.split('').permutation.to_a
    perms.map! {|arr| arr.join('')}
    p perms
    perms.include?(str2)
end

def second_anagram?(str1, str2) #O(n^2)
    str2_arr = str2.split('')
    str1.each_char do |char|
        i = str2_arr.find_index(char)
        return false if i.nil?
        str2_arr.delete_at(i)
    end
    str2_arr.empty?
end

p second_anagram?('tree', 'reet')