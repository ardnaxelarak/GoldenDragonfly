#charset "us-ascii"

#include <adv3.h>
#include <en_us.h>

versionInfo: GameID
    IFID = '89841020-2511-4382-8763-BEB185F182F1'
    name = 'The Quest for the Golden Dragonfly'
    byline = 'by Kara Alexandra'
    htmlByline = 'by <a href="mailto:kara@ardnaxelarak.com">
                  Kara Alexandra</a>'
    version = '1'
    authorEmail = 'Kara Alexandra <kara@ardnaxelarak.com>'
    desc = 'Legend tells of a mythic golden dragonfly figurine with mystical properties hidden away in a distant land. Will you be able to find it?'
    htmlDesc = 'Legend tells of a mythic golden dragonfly figurine with mystical properties hidden away in a distant land. Will you be able to find it?'

    showCredit()
    {
        "Put credits for the game here. ";
        "\b";
    }
    showAbout()
    {
        "Put information for players here.  Many authors like to mention
        any unusual commands here, along with background information on
        the game (for example, the author might mention that the game
        was created as an entry for a particular competition). ";
    }
;

meadow: OutdoorRoom 'the meadow'
    "A large grassy meadow expands all around you. Pink and purple flowers
    dot the scenery. It continues as far as you can see to the east, while
    a large forest looms to the south and west and a lake lies to the north. "

    north = lake
    south = forestEast
    west = forestNorth
    east: DeadEndConnector { 'the meadow' "You start walking toward the east,
        but the meadow continues on for what appears to be forever, and you
        feel that your goal lies in the opposite direction, so you return. "}
;

+ Fixture 'pink purple flower*flowers' 'flowers'
    "The flowers are nothing special, ranging through various shades of pink
	and purple, scattered sparsely across the meadow. "

    isPlural = true
;

lake: OutdoorRoom 'lake'
    "A large lake lies to the north of you. "

    south = meadow
	north: FakeConnector { "You have no way of crossing the lake. " }
;

+ Fixture 'large lake' 'lake'
	"The lake is filled with clear blue water. Some small fishes dart to and
	fro in a lively fashion. "
;

forestNorth: OutdoorRoom 'forest'
    "You are at the northern edge of a large forest. "

    east = meadow
;

forestEast: OutdoorRoom 'forest'
	"You are at the eastern edge of a large forest. "

	north = meadow
;

me: Actor
    location = meadow
;

gameMain: GameMainDef
    initialPlayerChar = me

    showIntro()
    {
        "Welcome to the The Quest for the Golden Dragonfly!\b";
    }

    showGoodbye()
    {
        "<.p>Thanks for playing!\b";
    }
;
