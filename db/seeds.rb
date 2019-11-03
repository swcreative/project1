# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'warren@ga.co', :name => 'Warren', :password => 'chicken'
u2 = User.create :email => 'bill@ga.co', :name => 'Bill', :password => 'chicken'
puts "#{ User.count} users created"


List.destroy_all
l1 = List.create :title => 'Portfolio'
l2 = List.create :title => 'Watchlist 2019'
l3 = List.create :title => 'Watchlist Aug 19'
l3 = List.create :title => 'Tips from neighbour'
l4 = List.create :title => 'Speculative list'
puts "#{ List.count} lists created"

Notes.destroy_all
n1 = Note.create :title => 'What the drought means for your share portfolio', :note_date => '02/11/2019', :post => 'With agriculture stocks at all-time lows, we outline the risks and opportunities.'
n2 = Note.create :title => 'Macquarie stays focused on the next opportunity', :date => '12/10/2019', :post => 'Shemara Wikramanayake has no intention of lowering Macquarie\'s hurdle rates as her group finds new homes for its capital and expertise.'
n3 = Note.create :title => 'House price surge sparks rush to build', :date => '02/11/2019', :post => 'Melbourne home prices grew 2.3 per cent in just 31 days – the fastest rate in 10 years – while Sydney was up 1.7 per cent for the month, spurring developers to start bidding for housing sites again. Might be time to buy CSR.'
n4 = Note.create :title => 'Why the banks should be broken up', :date => '03/11/2019', :post => 'Career banker Joseph Healy blames a loss of professionalism as “bankers became retailers of money with sales targets, in the same way as car salesmen".'
n5 = Note.create :title => 'ANZ faces the music', :date => '02/11/2019', :post => 'ANZ calls the year challenging but that won\'t stop pressure on Australian banks from the politicians or from low interest rates'
n6 = Note.create :title => 'Australia goes digital', :date => '02/11/2019', :post => 'The finance world of Australia is going digital. XERO is leading the way. Wave financial package is not offering bank feeds from 1st Jan 2020. This will increase the market share of XERO.'

Shares.destroy_all
s1 = Share.create :code => 'ANZ', :current_price => '26.19', :name => 'ANZ Bank'
s2 = Share.create :code => 'CBA', :current_price => '78.24', :name => 'Commonwealth Bank of Australia'
s3 = Share.create :code => 'ORI', :current_price => '23.73'
s4 = Share.create :code => 'BHP', :current_price => '35.70', :name => 'BHP Limited'
s5 = Share.create :code => 'APT', :current_price => '27.45', :name => 'Afterpay'
s6 = Share.create :code => 'XRO', :current_price => '69.91', :name => '
Xero'
s7 = Share.create :code => 'CSR', :current_price => '4.43', :name => 'CSR'
s8 = Share.create :code => 'BLD', :current_price => '27.45'
s9 = Share.create :code => 'MQG', :current_price => '134.38'

# Associations #############################
puts "Lists and Shares"
l1.shares << s1 << s2 << s3 << s4 << s9
l2.shares << s5 << s6
l3.shares << s2 << s6 << s7
l4.shares << s8 << s3

puts "Notes and Shares"
n1.shares << s3
n2.shares << s9
n3.shares << s7 << s4
n4.shares << s1 << s2
n5.shares << s1 << s2
n6.shares << s5 << s6

puts "Lists and Users"
u1.lists << li << l2
u2.lists << l3 << l4

puts "Notes and Users"
u1.notes << n1 << n4 << n5 << n6
u2.notes << n2 << n3
