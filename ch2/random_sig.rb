#!/home/ubuntu/.rvm/rubies/ruby-2.6.3/bin/ruby
# random_sig.rb

# Gets a random quote from a list of quotes
filename = ARGV[0] || (ENV['HOME'] + '/environment/sig_quotes.txt')
quotation_file = File.new(filename, 'r')
file_lines = quotation_file.readlines()
quotation_file.close()
random_index = rand(file_lines.size)
quotation = file_lines[random_index]

# Creates a new signature file and inserts the random quote.
sig_file_name = ENV['HOME'] + '/environment/signature.txt'
signature_file = File.new(sig_file_name, 'w')

# Write the sig block to the file.
signature_file.puts 'Matthew Wright | matthew@wright.net | http://matthewwright.net.au/'
signature_file.puts "\n#{quotation}"
signature_file.close()