# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Teacher.Repo.insert!(%Teacher.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Teacher.Repo
alias Teacher.Movie

Repo.insert!(%Movie{
  title: "Citizen Kane",
  summary: "A group of reporters are trying to decipher the last word ever spoken by Charles Foster Kane, the millionaire newspaper tycoon: 'Rosebud.' The film begins with a news reel detailing Kane's life for the masses, and then from there, we are shown flashbacks from Kane's life.",
  year: "1941"
})

Repo.insert!(%Movie{
  title: "Casablanca",
  summary: "In World War II Casablanca, Rick Blaine, exiled American and former freedom fighter, runs the most popular nightspot in town. The cynical lone wolf Blaine comes into the possession of two valuable letters of transit.",
  year: "1942"
})

Repo.insert!(%Movie{
  title: "The Godfather",
  summary: "In 1945, at his daughter Connie's wedding, Vito Corleone hears requests in his role as the Godfather, the Don of a New York crime family. Vito's youngest son, Michael, who was a Marine during World War II, introduces his girlfriend, Kay Adams, to his family at the reception.",
  year: "1972"
})

Repo.insert!(%Movie{
  title: "Gone With The Wind",
  summary: "It is the spring of 1861. Scarlett O'Hara, a pretty Southern belle, lives on Tara, a large plantation in Georgia. She concerns herself only with her numerous suitors and her desire to marry Ashley Wilkes. One day she hears that Ashley is engaged to Melanie Hamilton, his frail, plain cousin from Atlanta.",
  year: "1939"
})

Repo.insert!(%Movie{
  title: "Lawrence of Arabia",
  summary: "Due to his knowledge of the native Bedouin tribes, British Lieutenant T.E. Lawrence is sent to Arabia to find Prince Faisal and serve as a liaison between the Arabs and the British in their fight against the Turks.",
  year: "1962"
})

Repo.insert!(%Movie{
  title: "The Wizard Of Oz",
  summary: "When a tornado rips through Kansas, Dorothy and her dog, Toto, are whisked away in their house to the magical land of Oz. They follow the Yellow Brick Road toward the Emerald City to meet the Wizard, and en route they meet a Scarecrow that needs a brain, a Tin Man missing a heart, and a Cowardly Lion who wants courage. The wizard asks the group to bring him the broom of the Wicked Witch of the West to earn his help.",
  year: "1939"
})

Repo.insert!(%Movie{
  title: "The Graduate",
  summary: "Benjamin Braddock has just finished college and, back at his parents' house, he's trying to avoid the one question everyone keeps asking: What does he want to do with his life? An unexpected diversion crops up when he is seduced by Mrs. Robinson, a bored housewife and friend of his parents. But what begins as a fun tryst turns complicated when Benjamin falls for the one woman Mrs. Robinson demanded he stay away from, her daughter, Elaine.",
  year: "1967"
})

Repo.insert!(%Movie{
  title: "On The Waterfront",
  summary: "Terry Malloy dreams about being a prize fighter, while tending his pigeons and running errands at the docks for Johnny Friendly, the corrupt boss of the dockers union. Terry witnesses a murder by two of Johnny's thugs, and later meets the dead man's sister and feels responsible for his death.",
  year: "1954"
})

Repo.insert!(%Movie{
  title: "Schindler's List",
  summary: "Oskar Schindler is a vainglorious and greedy German businessman who becomes an unlikely humanitarian amid the barbaric German Nazi reign when he feels compelled to turn his factory into a refuge for Jews.",
  year: "1993"
})

Repo.insert!(%Movie{
  title: "Singin' In The Rain",
  summary: "Don Lockwood is a popular silent film star with humble roots as a singer, dancer and stunt man. Don barely tolerates his vapid, shallow leading lady, Lina Lamont, who has convinced herself that the fake romance their studio concocted and publicized is real.",
  year: "1952"
})

Repo.insert!(%Movie{
  title: "It's A Wonderful Life",
  summary: "On the Christmas Eve of Bedford Falls, the guardian angel Clarence is assigned to convince the desperate George Bailey not to commit suicide. George is a good man that sacrificed his dreams and his youth on behalf of the citizens of his small town.",
  year: "1946"
})

Repo.insert!(%Movie{
  title: "Sunset BLVD",
  summary: "While trying to escape from his creditors, he has a flat tire and parks his car in a decadent mansion in Sunset Boulevard. He meets the owner and former silent-movie star Norma Desmond, who lives alone wit her butler and driver Max von Mayerling.",
  year: "1950"
})
