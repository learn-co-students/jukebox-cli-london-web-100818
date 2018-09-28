songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help: displays this help message"
  puts "- list: displays a list of songs you can play"
  puts "- play: lets you choose a song to display"
  puts "- exit: exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  valid_input = false

  songs.each_with_index { |song, index|
    song_number = index + 1
    if song.include?(song_choice) || song_number == song_choice.to_i
      puts "Playing #{song}"
      valid_input = true
    end
  }
  if valid_input == false
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index { |song, index|
    puts "#{index + 1}. #{song}"
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_command = nil
  while user_command != "exit"
    puts "Please enter a command:"
    user_command = gets.chomp
    case user_command
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
    else
      help
    end
  end
end
