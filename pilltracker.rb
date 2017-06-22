require "date"
require "terminal-table"

@pills = []

  def add_information
    puts "How many pills do you need to take today?: "
    print "> "
    pills = gets.chomp


    puts "What day is it?: "
    print "> "
    day = gets.chomp

    puts "Have you taken your pills?"
    print "> "
    taken = gets.chomp

    puts "How many pills have you taken so far?"
    print "> "
    taken_amount = gets.chomp

    puts "What time did you have your pills?"
    print "> "
    time = gets.chomp

    puts "How many other pills do you need to take?"
    print "> "
    more = gets.chomp

    puts "Do you have other pills to take today?"
    print "> "
    more1 = gets.chomp

    puts "When do you need to take them?"
    puts "\n\tMorning? Afternoon? or Evening?"
    print "> "
    time1 = gets.chomp

    pills_take = [day, pills, taken_amount, taken, time, more, more1, time1]
    @pills.push(pills_take)

    display_menu
  end

  def display_table()
    puts Terminal::Table.new :title => "Daily Pill Tracker", :headings => ['Day', 'Pills to take today', 'Amount Taken', 'Pills taken?', "Time Taken", "Pills Still To Take?", "More pills to take?", "Time to take other pills"], :rows => @pills
  end


  def display_menu
    puts "\nWelcome to Your Daily Pill Tracker:"
    puts "\nPlease select from the following menu options:"

    puts "\n1. Enter Pills I Need."
    puts "2. Display Tracker."
    puts "3. Exit"
    option = gets.chomp


    case option
       when "1"
        add_information
       when "2"
        display_table
        display_menu
       when "3"

      end
  end

  display_menu

puts "\nThis is your pill reminder, ignore this message if you've taken all of your pills today:"
current_time = Time.now
puts "\nThe time is now : #{current_time}"

    case Time.now.hour
      when 5..11
        puts "\t\nIf you have a pill to take: Your morning pill should be taken now or before 12pm."
      when 11..17
        puts "\t\nIf you have a pill to take: Your afternoon pill should be taken now or before 6pm."
      else
        puts "\t\nIf you have a pill to take: Your evening pill should be taken soon or before bed."
      end
