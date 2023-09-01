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
  town: 'Los Angeles',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Guitare_dobro.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/J46sRuj99Cw'
)
file = File.open(Rails.root.join("db/seeds/instruments/dobro.jpg"))
dobro.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/DOBRO P.jpg"))
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
  town: 'Washington D.C.',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Sousaphone.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/gFrCyU_1zw0'
)
file = File.open(Rails.root.join("db/seeds/instruments/sousaphone.jpg"))
sousaphone.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/SOUSA P.jpg"))
sousaphone.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Pedal Steel Guitar
pedal_steel_guitar = Instrument.create!(
  name: 'Pedal Steel Guitar 🇲🇽',
  family: 'Stringed',
  tessitura: '6 octaves',
  materials: 'Metal, wood, iron',
  origins: 'The pedal steel guitar has no body, but two ten-string necks mounted on a console. Notes and chords are produced by sliding a metal bar over the plucked strings. Developed in the 1940s, it has become a classic instrument of Hawaiian and country music.',
  more_info: 'The pedal steel guitar, originally from Mexico, was introduced to Hawaii around 1830. Joseph Kekuku, an early Hawaiian performer, was the first to slide an object along the strings.',
  geographical_region: 'Mexico',
  town: 'Mexico',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Guitare_pedalsteel.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/2rwfqsjimRM'
)
file = File.open(Rails.root.join("db/seeds/instruments/pedal_steel_guitar.jpg"))
pedal_steel_guitar.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/PEDAL STEEL P.jpg"))
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
  town: 'Rio de Janeiro',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Cuica.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/mmlK94QvwiA'
)
file = File.open(Rails.root.join("db/seeds/instruments/cuica.jpg"))
cuica.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/cuica.jpg"))
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
  town: 'Split',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Diple.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/SquIKsZ64h4'
)
file = File.open(Rails.root.join("db/seeds/instruments/diple.jpg"))
diple.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/DIPLE P.jpg"))
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
  town: 'Rome',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Chitarrone.mp3',
  youtube_embed_url:'https://www.youtube.com/embed/fZYzuIGDYGs'
)
file = File.open(Rails.root.join("db/seeds/instruments/chitarrone.jpg"))
chitarrone.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CHITARRONE P.jpg"))
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
  town: 'Addis Ababa',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Krar.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/2487oIFIeLM'
)
file = File.open(Rails.root.join("db/seeds/instruments/krar.jpg"))
krar.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/KRAR P.jpg"))
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
  town: 'Lagos',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Sekere.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/mmJm91UPGfs'
)
file = File.open(Rails.root.join("db/seeds/instruments/sekere.jpg"))
sekere.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/SEKERE P.jpg"))
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
  town: 'Tehran',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Kamanche.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/vxmJCk9J5fE'
)
file = File.open(Rails.root.join("db/seeds/instruments/kamanche.jpg"))
kamanche.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/KAMANCHE P.jpg"))
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
  town: 'Jerusalem',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Shofar.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/Rnkb7M3dKTg'
)
file = File.open(Rails.root.join("db/seeds/instruments/shofar.jpg"))
shofar.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/SHOFAR P.jpg"))
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
  town: 'Beijing',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Erhu.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/lSCHU3kwrm8'
)
file = File.open(Rails.root.join("db/seeds/instruments/erhu.jpg"))
erhu.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/ERHU P.jpg"))
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
  town: 'Shanghai',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Di.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/lI1L2l6vi-4'
)
file = File.open(Rails.root.join("db/seeds/instruments/dizi.jpg"))
dizi.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/DIZI P.jpg"))
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
  town: 'Mumbai',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Tabla.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/LAwgD_YxRgM'
)
file = File.open(Rails.root.join("db/seeds/instruments/tabla.jpg"))
tabla.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/TABLA P.jpg"))
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
  town: 'Chennai',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Vina.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/Tz-Xmh9mXow'
)
file = File.open(Rails.root.join("db/seeds/instruments/veena.png"))
veena.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/VEENAA.jpg"))
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
  town: 'Udon Thani',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Khene.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/DIfi9wDDpUQ'
)
file = File.open(Rails.root.join("db/seeds/instruments/khene.jpg"))
khene.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/KHENE P.jpg"))
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
  town: 'Darwin',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Didjeridu.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/yG9ZX1FS20A'
)
file = File.open(Rails.root.join("db/seeds/instruments/didgeridoo.jpg"))
didgeridoo.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/DIDGERI P.jpg"))
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
  town: 'Appalachia',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Cithare_appalaches.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/rZWZ7KpB5Zg'
)
file = File.open(Rails.root.join("db/seeds/instruments/appalachian_zither.jpg"))
appalachian_zither.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/APPALACHIAN ZITHER.jpg"))
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
  town: 'Port of Spain',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Steeldrum.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/GaNjXwElAUE'
)
file = File.open(Rails.root.join("db/seeds/instruments/steel_drum.jpg"))
steel_drum.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/STEEL DRUM.jpg"))
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
  town: 'Athens',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Flute_pan.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/R3C3aNSOHXk'
)
file = File.open(Rails.root.join("db/seeds/instruments/syrinx.jpg"))
syrinx.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/SYRINX P.jpg"))
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
  town: 'Paris',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Cromorne.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/8w7KJznei7I'
)
file = File.open(Rails.root.join("db/seeds/instruments/cromorne.jpg"))
cromorne.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CROMORNE P.jpg"))
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
  town: 'Paris',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Celesta.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/YSP_HorKQMc'
)
file = File.open(Rails.root.join("db/seeds/instruments/celesta.jpg"))
celesta.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CELESTA P.jpg"))
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
  town: 'Harare',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Mbira.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/kd7KC3PaEaA'
)
file = File.open(Rails.root.join("db/seeds/instruments/mbira.jpg"))
mbira.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/MBIRA P.jpg"))
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
  town: 'Cairo',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Nay.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/5wc6zFXJPqM'
)
file = File.open(Rails.root.join("db/seeds/instruments/nay.jpg"))
nay.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/NAY P.jpg"))
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
  town: 'Qingdao',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Suona.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/EWHW672PwY'
)
file = File.open(Rails.root.join("db/seeds/instruments/suona.jpg"))
suona.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/SUONA P.jpg"))
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
  town: 'Mumbai',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Sitar.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/wLAXfkK-DPg'
)
file = File.open(Rails.root.join("db/seeds/instruments/sitar.jpg"))
sitar.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/SITAR P.jpg"))
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
  town: 'Kinshasa',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Tambour_bois_fente.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/0760zaJdrD0'
)
file = File.open(Rails.root.join("db/seeds/instruments/slit_drum.jpg"))
slit_drum.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/SLIT DRUM.jpg"))
slit_drum.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Balalaika
balalaika = Instrument.create!(
  name: 'Balalaika',
  family: 'Stringed',
  tessitura: 'Varies by size; there are prima, secunda, alto, bass, and contrabass balalaikas',
  materials: 'Wood, with a triangular body shape',
  origins: 'The balalaika is a traditional Russian stringed instrument, dating back to the 17th century.',
  more_info: 'Characterized by its distinctive triangular body and three strings, often played with the fingers without the use of a pick.',
  geographical_region: 'Russia',
  town: 'Krasnoïarsk',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Balalaika.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/UAfuMol1e-0'
)

file = File.open(Rails.root.join("db/seeds/instruments/balalaika.jpg"))
balalaika.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BALALAIKA P.jpg"))
balalaika.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

puts '...The circle is completed!'
