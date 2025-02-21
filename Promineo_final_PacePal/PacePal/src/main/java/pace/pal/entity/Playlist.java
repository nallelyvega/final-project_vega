package pace.pal.entity;

import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Entity
@Data
public class Playlist {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long playlistId;
	private String playlistName;

	@ManyToMany(cascade = CascadeType.PERSIST)
	@JoinTable(name = "PacePal_tag", joinColumns = @JoinColumn(name = "pacePal_id"), inverseJoinColumns = @JoinColumn(name = "tag_id"))
	@EqualsAndHashCode.Exclude
	@ToString.Exclude
	private Set<Tag> tags = new HashSet<>();

	@OneToMany(mappedBy = "playList", cascade = CascadeType.ALL, orphanRemoval = true)
	@EqualsAndHashCode.Exclude
	@ToString.Exclude
	private Set<Song> songs = new HashSet<>();

}
