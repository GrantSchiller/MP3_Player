require './Player'

Shoes.app :width => 475, :height => 180, :title => "MP3 Player" do
	background deepskyblue..white
	caption 'MP3 Player by Grant Schiller'
	@player = Player.new
	stack do
		para 'Select a song, please.'
		flow  do
			button("Select file") do
				song = Song.new(ask_open_file)
				@player.add_song(song)
				unless @video
					@video = video @player.remove_song.get_content, :autoplay => true
				end
				debug "You have loaded a file into the player!"
			end
			button( 'Play' ){ @video.play }
			button( 'Pause' ){ @video.pause }
			button( 'Stop' ){ @video.stop }
			button( 'Next' ) do
				@video.stop
				file = @player.remove_song.get_content
				@video = video file, :autoplay => true
			end
		end
	end


end
