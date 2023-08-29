# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# helmut = Bird.create!(
#   birdlord: laurie,
#   name: 'Helmut',
#   details: 'Judges you but won\'t tell you',
#   species: 'Eurasian Jay',
#   price_per_day: 150,
#   diet: 'Omnivore',
#   height_and_weight: "Around 35 cm, 90 g",
#   favorite_snack: 'Acorns and insects'
# )
# file = File.open(Rails.root.join("db/seeds/birds/eurasian_jay_helmut.jpg"))
# helmut.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

puts 'Burning all to ash...'
Favorite.destroy_all
Instrument.destroy_all
User.destroy_all

puts 'Creating the only user...'

avatar_image = {
  'avatar_1' => 'https://img.freepik.com/icones-gratuites/guitare_318-419057.jpg?w=2000'
}

ringo = User.create!(
  email: 'ringo.starr@gmail.com',
  password: '123456',
  username: 'Ringo Starr',
  avatar_key: avatar_image['avatar_1']
)

puts 'Adding Instruments...'

# t.string :audio
# t.string :logo

# Dobro
dobro = Instrument.create!(
  name: 'Dobro',
  family: 'Stringed',
  tessitura: '4 octaves',
  materials: 'Wood, metal resonator',
  origins: 'The Dobro is a brand of resonator guitar, invented in the USA by the Dopyera brothers.',
  more_info: 'Distinctive for its metal resonator, which gives it a louder volume.',
  geographical_region: 'USA',
  town: 'Los Angeles'
)
file = File.open(Rails.root.join("db/seeds/instruments/dobro.jpg"))
dobro.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Sousaphone
sousaphone = Instrument.create!(
  name: 'Sousaphone',
  family: 'Brass',
  tessitura: '2 octaves',
  materials: 'Brass or fiberglass',
  origins: 'Designed for marching, it was created by John Philip Sousa.',
  more_info: 'Circular shape allows it to be worn over the player’s shoulder.',
  geographical_region: 'USA',
  town: 'Washington D.C.'
)
file = File.open(Rails.root.join("db/seeds/instruments/sousaphone.jpg"))
sousaphone.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Pedal Steel Guitar
pedal_steel_guitar = Instrument.create!(
  name: 'Pedal Steel Guitar',
  family: 'Stringed',
  tessitura: '3.5 octaves',
  materials: 'Metal, wood',
  origins: 'Originated in the USA from the lap steel guitar.',
  more_info: 'Characterized by its pedals and knee levers that change the pitch.',
  geographical_region: 'USA',
  town: 'Nashville'
)
file = File.open(Rails.root.join("db/seeds/instruments/pedal_steel_guitar.jpg"))
pedal_steel_guitar.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Cuica
cuica = Instrument.create!(
  name: 'Cuica',
  family: 'Percussion',
  tessitura: 'Varies',
  materials: 'Wood, animal skin',
  origins: 'An Afro-Brazilian friction drum with a large pitch range.',
  more_info: 'Used extensively in samba music.',
  geographical_region: 'Brazil',
  town: 'Rio de Janeiro'
)
file = File.open(Rails.root.join("db/seeds/instruments/cuica.jpg"))
cuica.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Diple
diple = Instrument.create!(
  name: 'Diple',
  family: 'Woodwinds',
  tessitura: '1.5 octaves',
  materials: 'Wood',
  origins: 'A traditional double-chambered woodwind instrument from the Balkans.',
  more_info: 'Often used in the folk music of Dalmatia and Herzegovina.',
  geographical_region: 'Croatia',
  town: 'Split'
)
file = File.open(Rails.root.join("db/seeds/instruments/diple.jpg"))
diple.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Chitarrone
chitarrone = Instrument.create!(
  name: 'Chitarrone',
  family: 'Stringed',
  tessitura: '4 octaves',
  materials: 'Wood',
  origins: 'An extended lute used in Italy during the Renaissance and Baroque periods.',
  more_info: 'Known for its very long neck and deep, rich sound.',
  geographical_region: 'Italy',
  town: 'Rome'
)
file = File.open(Rails.root.join("db/seeds/instruments/chitarrone.jpg"))
chitarrone.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Krar
krar = Instrument.create!(
  name: 'Krar',
  family: 'Stringed',
  tessitura: '2.5 octaves',
  materials: 'Wood, animal skin',
  origins: 'A traditional Ethiopian and Eritrean stringed instrument.',
  more_info: 'Often accompanied with a vocalist in traditional music.',
  geographical_region: 'Ethiopia',
  town: 'Addis Ababa'
)
file = File.open(Rails.root.join("db/seeds/instruments/krar.jpg"))
krar.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Sékéré
sekere = Instrument.create!(
  name: 'Sékéré',
  family: 'Percussion',
  tessitura: 'Varies',
  materials: 'Gourd, beads or cowries',
  origins: 'A percussion instrument from Nigeria, made of a gourd with a net of beads or cowries.',
  more_info: 'Played by shaking and/or hitting the beads against the gourd.',
  geographical_region: 'Nigeria',
  town: 'Lagos'
)
file = File.open(Rails.root.join("db/seeds/instruments/sekere.jpg"))
sekere.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Kamanche
kamanche = Instrument.create!(
  name: 'Kamanche',
  family: 'Stringed',
  tessitura: '3 octaves',
  materials: 'Wood with a skin membrane',
  origins: 'Traditional spiked fiddle of Persia (Iran)',
  more_info: 'Played with a bow, producing a melancholic sound.',
  geographical_region: 'Iran',
  town: 'Tehran'
)
file = File.open(Rails.root.join("db/seeds/instruments/kamanche.jpg"))
kamanche.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Shofar
shofar = Instrument.create!(
  name: 'Shofar',
  family: 'Aerophone',
  tessitura: 'Depends on the length',
  materials: 'Ram’s horn',
  origins: 'Ancient Jewish musical horn.',
  more_info: 'Used for religious purposes, especially the Jewish High Holidays.',
  geographical_region: 'Israel',
  town: 'Jerusalem'
)
file = File.open(Rails.root.join("db/seeds/instruments/shofar.jpg"))
shofar.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Erhu
erhu = Instrument.create!(
  name: 'Erhu',
  family: 'Stringed',
  tessitura: '3 octaves',
  materials: 'Wood and snake skin',
  origins: 'Traditional two-stringed fiddle from China.',
  more_info: 'Known for its mournful and expressive sound.',
  geographical_region: 'China',
  town: 'Beijing'
)
file = File.open(Rails.root.join("db/seeds/instruments/erhu.jpg"))
erhu.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Di (assuming you mean Dizi)
dizi = Instrument.create!(
  name: 'Dizi',
  family: 'Woodwinds',
  tessitura: '2.5 octaves',
  materials: 'Bamboo',
  origins: 'Traditional Chinese transverse flute.',
  more_info: 'Features a membrane covering one of the holes to produce a buzzing sound.',
  geographical_region: 'China',
  town: 'Shanghai'
)
file = File.open(Rails.root.join("db/seeds/instruments/dizi.jpg"))
dizi.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Tabla
tabla = Instrument.create!(
  name: 'Tabla',
  family: 'Percussion',
  tessitura: 'Varies',
  materials: 'Wood and animal skin',
  origins: 'Traditional Indian percussion instrument.',
  more_info: 'Consists of a pair of drums, played with fingers and palms.',
  geographical_region: 'India',
  town: 'Mumbai'
)
file = File.open(Rails.root.join("db/seeds/instruments/tabla.jpg"))
tabla.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Vina (assuming you mean Veena)
veena = Instrument.create!(
  name: 'Veena',
  family: 'Stringed',
  tessitura: '4 octaves',
  materials: 'Wood',
  origins: 'Ancient musical instrument of India.',
  more_info: 'Has a long neck with a rounded resonator at the end.',
  geographical_region: 'India',
  town: 'Chennai'
)
file = File.open(Rails.root.join("db/seeds/instruments/veena.png"))
veena.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Khene
khene = Instrument.create!(
  name: 'Khene',
  family: 'Woodwinds',
  tessitura: '2 octaves',
  materials: 'Made of bamboo',
  origins: 'The Khene is a large mouth organ from Southeast Asia. It belongs to a family of instruments that includes the Chinese cheng and the Japanese sho. It is common in northern Thailand, Laos and Birmania.',
  more_info: 'The length of the pipes determines the pitch of the note. It can vary from 90cm to 2m20',
  geographical_region: 'Thailand',
  town: 'Udon Thani'
)
file = File.open(Rails.root.join("db/seeds/instruments/khene.jpg"))
khene.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Didgeridoo
didgeridoo = Instrument.create!(
  name: 'Didgeridoo',
  family: 'Aerophone',
  tessitura: 'Fundamental frequency with overtones',
  materials: 'Eucalyptus wood, traditionally hollowed out by termites',
  origins: 'Traditional wind instrument developed by Indigenous Australians.',
  more_info: 'Played by using circular breathing, which allows for a continuous sound. Known for its droning sound.',
  geographical_region: 'Australia',
  town: 'Darwin'
)
file = File.open(Rails.root.join("db/seeds/instruments/didgeridoo.jpg"))
didgeridoo.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Appalachian Zither
appalachian_zither = Instrument.create!(
  name: 'Appalachian Zither',
  family: 'Stringed',
  tessitura: 'Variable depending on size and tuning',
  materials: 'Usually made of wood',
  origins: 'The Appalachian Zither comes from the Appalachian region of the United States.',
  more_info: 'Also known as the mountain dulcimer or lap dulcimer.',
  geographical_region: 'United States',
  town: 'Appalachia'
)
file = File.open(Rails.root.join("db/seeds/instruments/appalachian_zither.jpg"))
appalachian_zither.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Steel Drum
steel_drum = Instrument.create!(
  name: 'Steel Drum',
  family: 'Percussion',
  tessitura: 'Ranges from 2 to over 4 octaves depending on type',
  materials: 'Made of steel',
  origins: 'Originated in Trinidad and Tobago.',
  more_info: 'Also known as the steelpan or pan. It evolved from earlier drum-based instruments.',
  geographical_region: 'Trinidad and tobago',
  town: 'Port of Spain'
)
file = File.open(Rails.root.join("db/seeds/instruments/steel_drum.jpg"))
steel_drum.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Syrinx (Pan Flute)
syrinx = Instrument.create!(
  name: 'Syrinx',
  family: 'Woodwind',
  tessitura: 'Approximately 2 octaves',
  materials: 'Made of bamboo or reeds',
  origins: 'Historically used in many cultures, particularly in ancient Greece.',
  more_info: 'Also known as the Pan flute.',
  geographical_region: 'Greece',
  town: 'Athens'
)
file = File.open(Rails.root.join("db/seeds/instruments/syrinx.jpg"))
syrinx.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Cromorne
cromorne = Instrument.create!(
  name: 'Cromorne',
  family: 'Woodwind',
  tessitura: 'About 2 octaves',
  materials: 'Made of wood',
  origins: 'Medieval Europe, precursor to the modern oboe.',
  more_info: 'A double reed instrument.',
  geographical_region: 'France',
  town: 'Paris'
)
file = File.open(Rails.root.join("db/seeds/instruments/cromorne.jpg"))
cromorne.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Celesta
celesta = Instrument.create!(
  name: 'Celesta',
  family: 'Percussion',
  tessitura: '4-5 octaves',
  materials: 'Metal plates with a wooden resonator',
  origins: 'Invented in France in the late 19th century.',
  more_info: 'The celesta has a sound that is similar to a glockenspiel but with a much softer and more subtle timbre.',
  geographical_region: 'France',
  town: 'Paris'
)
file = File.open(Rails.root.join("db/seeds/instruments/celesta.jpg"))
celesta.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Mbira
mbira = Instrument.create!(
  name: 'Mbira',
  family: 'Percussion',
  tessitura: 'Around 2-3 octaves',
  materials: 'Metal tines mounted on a wooden platform',
  origins: 'Traditional instrument of the Shona people of Zimbabwe.',
  more_info: 'Also known as a thumb piano.',
  geographical_region: 'Zimbabwe',
  town: 'Harare'
)
file = File.open(Rails.root.join("db/seeds/instruments/mbira.jpg"))
mbira.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Nay
nay = Instrument.create!(
  name: 'Nay',
  family: 'Woodwind',
  tessitura: 'About 2.5 octaves',
  materials: 'Made of reed',
  origins: 'Ancient Middle Eastern instrument, commonly associated with Sufi music.',
  more_info: 'End-blown flute, played without a mouthpiece.',
  geographical_region: 'Egypt',
  town: 'Cairo'
)
file = File.open(Rails.root.join("db/seeds/instruments/nay.jpg"))
nay.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Suona
suona = Instrument.create!(
  name: 'Suona',
  family: 'Woodwind',
  tessitura: 'Around 2 octaves',
  materials: 'Made of wood with a metal bell',
  origins: 'Traditional Chinese instrument.',
  more_info: 'A double-reed instrument with a distinctively loud and high-pitched sound.',
  geographical_region: 'China',
  town: 'Qingdao'
)
file = File.open(Rails.root.join("db/seeds/instruments/suona.jpg"))
suona.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Sitar
sitar = Instrument.create!(
  name: 'Sitar',
  family: 'Stringed',
  tessitura: 'Around 3 octaves',
  materials: 'Made of wood with a gourd resonator',
  origins: 'Originated from ancient India.',
  more_info: 'Used extensively in Hindustani classical music.',
  geographical_region: 'India',
  town: 'Mumbai'
)
file = File.open(Rails.root.join("db/seeds/instruments/sitar.jpg"))
sitar.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Slit drum
slit_drum = Instrument.create!(
  name: 'Slit drum',
  family: 'Percussion',
  tessitura: 'Variable depending on size',
  materials: 'Carved from a single log',
  origins: 'Common in various cultures around the world, particularly in Africa and the Pacific.',
  more_info: 'Also known as a slit drum or log drum.',
  geographical_region: 'Congo',
  town: 'Kinshasa'
)
file = File.open(Rails.root.join("db/seeds/instruments/slit_drum.jpg"))
slit_drum.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

puts '...The circle is completed!'
