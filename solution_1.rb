# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)

    cur = []
    ans = 0
    return s.size if s.size < 2
    
    s.each_char.with_index do |c, i|
        idx = cur.index(c)
        if idx
            ans = cur.size if ans < cur.size
            cur = cur[idx + 1 ..-1]
        end
        cur << c
    end
    ans = cur.size if ans < cur.size
    ans
end
