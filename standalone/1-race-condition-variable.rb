x = 0; threads = []

1_000.times do
  threads << Thread.new { 10_000.times { x += 5 } }
end

threads.map(&:join)
puts x   # NOT 50_000
