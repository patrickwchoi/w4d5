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


def third_anagram?(str1,str2) #O(n*log n)
    return str1.chars.sort == str2.chars.sort
end

def fourth_anagram?(str1,str2) #O(n)
    h1 = Hash.new(0)
    h2 = Hash.new(0)

    str1.each_char do |char|
        h1[char] += 1
    end

    str2.each_char do |char|
        h2[char] += 1
    end

    return h1 == h2
end

p  fourth_anagram?('treee', 'reet')
