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
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_index {|x| puts "#{x+1}. #{songs[x]}"}
end

def get_song_titles(songs)
  names = songs.collect do |song|
    title = song.split(" - ")
    title[1]
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if((1..9).include?(response.to_i))
    puts "Playing #{songs[response.to_i - 1]}"
  elsif(songs.any? {|name| name == response})
    puts "Playing #{songs.select {|name| name == response}}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  while(true)
    puts "Please enter a command:"
    response = gets.chomp
    if(response == "play")
      play(songs)
    elsif(response == "list")
      list(songs)
    elsif(response == "help")
      help
    elsif(response == "exit")
      exit_jukebox
      break
    end
  end
end
