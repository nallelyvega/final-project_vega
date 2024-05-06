package pace.pal.controller.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import pace.pal.entity.Song;

@Data
@NoArgsConstructor
public class PacepalSong {
	private Long songId;
	private Long playlistId;
	private String songName;
	private String songArtist;
	private String songDuration;
	private String songGenre;

	public PacepalSong(Song song) {
		songId = song.getSongId();
		playlistId = song.getPlaylistId();
		songName = song.getSongName();
		songArtist = song.getSongArtist();
		songDuration = song.getSongDuration();
		songGenre = song.getSongGenre();
	}
}
