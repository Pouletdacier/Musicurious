# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts 'Burning all to ash...'
Question.destroy_all
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
  geographical_region: 'USA',
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
  town: 'Rouen',
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

angklung = Instrument.create!(
  name: 'Angklung',
  family: 'Percussion',
  tessitura: 'Variable, depends on size and tuning',
  materials: 'Bamboo tubes suspended within a bamboo frame',
  origins: 'Traditionally from the Sundanese people of West Java and Banten provinces in Indonesia.',
  more_info: 'The Angklung produces sound when shaken. Each Angklung only produces one note.',
  geographical_region: 'Indonesia',
  town: 'Bandung',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Angklung.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/BEsxbMH88s4'
)
file = File.open(Rails.root.join("db/seeds/instruments/angklung.jpg"))
angklung.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/ANGKLUNG P.jpg"))
angklung.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Atumpan ---
atumpan = Instrument.create!(
  name: 'Atumpan',
  family: 'Percussion',
  tessitura: 'Low to mid-range',
  materials: 'Wood with stretched animal skin',
  origins: 'Traditional drum from the Akan people of Ghana.',
  more_info: 'The Atumpan is often referred to as the "talking drum" because of its ability to mimic the intonation of spoken language.',
  geographical_region: 'Ghana',
  town: 'Kumasi',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Atumpan.mp3',
  youtube_embed_url: 'https://www.youtube.com/embedJT3tIJzAkcc'
)
file = File.open(Rails.root.join("db/seeds/instruments/atumpan.jpg"))
atumpan.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/ATUMPAN P.jpg"))
atumpan.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")



# --- Algaïta ---
algaita = Instrument.create!(
  name: 'Algaïta',
  family: 'Woodwind',
  tessitura: 'Mid-range',
  materials: 'Wood with a double reed',
  origins: 'Commonly used in the Hausa regions of Northern Nigeria and Niger.',
  more_info: 'A loud outdoor instrument, often accompanied by drumming.',
  geographical_region: 'Nigeria',
  town: 'Kano',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Algaita.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/JB44JHu55Zs'
)
file = File.open(Rails.root.join("db/seeds/instruments/algaita.jpg"))
algaita.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/ALGAITA P.jpg"))
algaita.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")



# --- Accordéon à touches ---
key_accordion = Instrument.create!(
  name: 'Key Accordion',
  family: 'Woodwind',
  tessitura: 'Mid-range',
  materials: 'Wood, metal, and plastic',
  origins: 'Originated in Europe in the early 19th century.',
  more_info: 'A keyboard accordion with piano-style keys. Widely used in many forms of Western music.',
  geographical_region: 'France',
  town: 'Versaille',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Accordeon_touche.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/3cGLbtiAbKI'
)
file = File.open(Rails.root.join("db/seeds/instruments/accordeon_touches.jpg"))
key_accordion.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/ACCORDEON TOUCHES.jpg"))
key_accordion.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Accordéon à boutons ---
accordeon_boutons = Instrument.create!(
  name: 'Button accodeon',
  family: 'Woodwind',
  tessitura: 'Mid-range',
  materials: 'Wood, metal, and plastic',
  origins: 'Evolved in Europe and is popular in traditional music of various countries.',
  more_info: 'Uses button-style keys and produces different pitches depending on whether the bellows are compressed or expanded.',
  geographical_region: 'France',
  town: 'Marseille',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Accordeon_bouton.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/6J-otnwNv6M'
)
file = File.open(Rails.root.join("db/seeds/instruments/accordeon_boutons.jpg"))
accordeon_boutons.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/ACCORDEON BOUTONS.jpg"))
accordeon_boutons.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")



# --- Bala ---
bala = Instrument.create!(
  name: 'Bala',
  family: 'Percussion',
  tessitura: 'Variable across a wide range',
  materials: 'Wooden keys with gourd resonators',
  origins: 'Traditionally from the Mandinka people of West Africa.',
  more_info: 'Also known as the balafon. Similar to a xylophone but with a distinct African character.',
  geographical_region: 'Mali',
  town: 'Bamako',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Bala.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/kXXhp_bZvck'
)
file = File.open(Rails.root.join("db/seeds/instruments/bala.jpg"))
bala.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BALA P.jpg"))
bala.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")



# --- Banjo ---
banjo = Instrument.create!(
  name: 'Banjo',
  family: 'String',
  tessitura: 'High to mid-range',
  materials: 'Wood with a circular drum-like body',
  origins: 'Developed in the United States from African and European instruments.',
  more_info: 'Characterized by its twangy sound, it is often associated with country, folk, and bluegrass music.',
  geographical_region: 'United States',
  town: 'Nashville',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Banjo.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/e4Ao-iNPPUc'
)
file = File.open(Rails.root.join("db/seeds/instruments/banjo.jpg"))
banjo.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BANJO P.jpg"))
banjo.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# --- Basson ---
basson = Instrument.create!(
  name: 'Bassoon',
  family: 'Woodwind',
  tessitura: 'Bass to tenor',
  materials: 'Usually made of maple wood',
  origins: 'Developed in the 16th century in Europe, evolving from earlier double-reeded instruments.',
  more_info: 'Characterized by its rich, dark tone, the bassoon plays a crucial role in orchestras and wind ensembles.',
  geographical_region: 'Germany',
  town: 'Berlin',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Basson.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/5XoanCFRRtE'
)
file = File.open(Rails.root.join("db/seeds/instruments/basson.jpg"))
basson.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BASSON P.jpg"))
basson.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Batterie (Drums) ---
batterie = Instrument.create!(
  name: 'Drums',
  family: 'Percussion',
  tessitura: 'Variable from deep bass (kick drum) to high pitch (cymbals)',
  materials: 'Wood, metal, and synthetic materials',
  origins: 'Drums have ancient origins, seen in many cultures globally. Modern drum kits evolved in the U.S. during the 20th century.',
  more_info: 'A typical drum kit includes a combination of drums and cymbals played by sticks, brushes, or hands.',
  geographical_region: 'United States',
  town: 'New Orleans',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Batterie.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/2TAfvMn8_EQ'
)
file = File.open(Rails.root.join("db/seeds/instruments/batterie.jpg"))
batterie.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BATTERIE P.jpg"))
batterie.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Berimbau ---
berimbau = Instrument.create!(
  name: 'Berimbau',
  family: 'Stringed',
  tessitura: 'none',
  materials: 'Wooden bow with a steel string, and a gourd resonator',
  origins: 'An integral part of Brazilian Capoeira, the berimbau has African roots.',
  more_info: 'Its distinctive sound guides the rhythm and style of the Capoeira game.',
  geographical_region: 'Brazil',
  town: 'Salvador',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Berimbau.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/GI6_eQy-OuI'
)
file = File.open(Rails.root.join("db/seeds/instruments/berimbau.jpg"))
berimbau.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BERIMBAU P.jpg"))
berimbau.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# --- Bloc à deux tons (Two-tone block) ---
two_tone_block = Instrument.create!(
  name: 'Two-tone block',
  family: 'Percussion',
  tessitura: 'High-pitched',
  materials: 'Wood or synthetic materials',
  origins: 'Inspired by traditional wooden temple blocks used in East Asia.',
  more_info: 'Produces two different pitches and is commonly used in Afro-Cuban and Latin music.',
  geographical_region: 'Cuba',
  town: 'Havana',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Bloc2tons.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/zxcNP7pHXNM'
)
file = File.open(Rails.root.join("db/seeds/instruments/two_tone_block.jpg"))
two_tone_block.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/TWO_TONE_BLOCK P.jpg"))
two_tone_block.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Bonang ---
bonang = Instrument.create!(
  name: 'Bonang',
  family: 'Percussion',
  tessitura: 'Mid-range',
  materials: 'Bronze or brass pots mounted on a wooden frame',
  origins: 'Integral to the Javanese and Balinese gamelan ensemble of Indonesia.',
  more_info: 'It consists of several gongs, each producing a different note.',
  geographical_region: 'Indonesia',
  town: 'Yogyakarta',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Bonang.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/aKmV4DIG2RE'
)
file = File.open(Rails.root.join("db/seeds/instruments/bonang.jpg"))
bonang.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BONANG P.jpg"))
bonang.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")



# --- Bongos ---
bongos = Instrument.create!(
  name: 'Bongos',
  family: 'Percussion',
  tessitura: 'High-pitched',
  materials: 'Wood with animal skin heads',
  origins: 'Originated in Cuba, drawing inspiration from African hand drums.',
  more_info: 'Consists of two drums attached to each other, and is played using hands.',
  geographical_region: 'Cuba',
  town: 'Santiago de Cuba',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Bongos.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/I9gzjPLh-IA'
)
file = File.open(Rails.root.join("db/seeds/instruments/bongos.jpg"))
bongos.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BONGOS P.jpg"))
bongos.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Bouzouki ---
bouzouki = Instrument.create!(
  name: 'Bouzouki',
  family: 'String',
  tessitura: 'Mid to high range',
  materials: 'Wood with steel strings',
  origins: 'Introduced to Greece in the 1900s, influenced by ancient Greek and Turkish instruments.',
  more_info: 'Commonly used in Greek folk music, the bouzouki has a sharp and clear sound.',
  geographical_region: 'Greece',
  town: 'Athens',
  audio: 'Bouzouki.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/zx-a_17OVc4'
)
file = File.open(Rails.root.join("db/seeds/instruments/bouzouki.jpg"))
bouzouki.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BOUZOUKI P.jpg"))
bouzouki.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# --- Bugle ---
bugle = Instrument.create!(
  name: 'Bugle',
  family: 'Brass',
  tessitura: 'Mid-range',
  materials: 'Brass or copper, with no valves or keys',
  origins: 'Originally used for signaling in the military, it has ancient roots, with early forms seen in Rome.',
  more_info: 'Produces sound through embouchure and has limited notes due to the lack of valves.',
  geographical_region: 'United Kingdom',
  town: 'London',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Bugle.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/PZoYrcJGjuc'
)
file = File.open(Rails.root.join("db/seeds/instruments/bugle.jpg"))
bugle.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BUGLE P.jpg"))
bugle.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Cajon ---
cajon = Instrument.create!(
  name: 'Cajon',
  family: 'Percussion',
  tessitura: 'Low to mid-range',
  materials: 'Primarily wood',
  origins: 'Originated in Peru, the Cajon was influenced by African slaves who made these instruments from shipping crates.',
  more_info: 'It is a box-shaped percussion instrument played by slapping the front face with hands.',
  geographical_region: 'Peru',
  town: 'Lima',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/cajon.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/OwbfyhNk1bM'
)
file = File.open(Rails.root.join("db/seeds/instruments/cajon.jpg"))
cajon.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CAJON P.jpg"))
cajon.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")



# --- Carillon ---
carillon = Instrument.create!(
  name: 'Carillon',
  family: 'Percussion',
  tessitura: 'Variable depending on number of bells',
  materials: 'Bronze bells',
  origins: 'Originated in Europe, carillons can be found in church towers and municipal buildings.',
  more_info: 'Played with a keyboard, the carillon has at least 23 bells producing harmonized melodies.',
  geographical_region: 'Belgium',
  town: 'Bruges',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Carillon.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/FKekHg5VaoI'
)
file = File.open(Rails.root.join("db/seeds/instruments/carillon.jpg"))
carillon.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CARILLON P.jpg"))
carillon.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Castanets (Castagnettes) ---
castanets = Instrument.create!(
  name: 'Castanets',
  family: 'Percussion',
  tessitura: 'High-pitched',
  materials: 'Wood, sometimes plastic',
  origins: 'With ancient roots, castanets are especially known for their role in Spanish flamenco music.',
  more_info: 'They are hand-held percussion instruments producing clicking sounds when clapped together.',
  geographical_region: 'Spain',
  town: 'Seville',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Castagnettes.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/TuHHUDnFSO0'
)
file = File.open(Rails.root.join("db/seeds/instruments/castanets.jpg"))
castanets.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CASTANETS P.jpg"))
castanets.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# --- Chalumeau ---
chalumeau = Instrument.create!(
  name: 'Chalumeau',
  family: 'Woodwind',
  tessitura: 'Mid to high range',
  materials: 'Wood, with metal keys',
  origins: 'The chalumeau is a single-reed woodwind instrument and is considered the predecessor to the modern clarinet.',
  more_info: 'Popular during the Baroque period, its sound is mellower than that of the clarinet.',
  geographical_region: 'Europe',
  town: 'Paris',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Chalumeau.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/GQfWlgdja9Q'
)
file = File.open(Rails.root.join("db/seeds/instruments/chalumeau.jpg"))
chalumeau.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CHALUMEAU P.jpg"))
chalumeau.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# --- Charango ---
charango = Instrument.create!(
  name: 'Charango',
  family: 'Stringed',
  tessitura: 'Mid to high range',
  materials: 'Wood and traditionally armadillo shells',
  origins: 'Originating in the Andes, the charango has 10 strings and is often used in traditional Andean music.',
  more_info: 'With its small size, it resembles a ukulele and has a unique, bright sound.',
  geographical_region: 'Bolivia',
  town: 'La Paz',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Charango.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/yPY1fd0Cjys&pp=ygUOY2hhcm5hZ28gY292ZXI%3D'
)
file = File.open(Rails.root.join("db/seeds/instruments/charango.jpg"))
charango.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CHARANGO P.jpg"))
charango.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Dung chen
dung_chen = Instrument.create!(
  name: 'Dung chen',
  family: 'Aerophone',
  tessitura: 'Varies depending on size',
  materials: 'Brass or copper, sometimes with silver or gold decoration.',
  origins: 'Indigenous to the Tibetan region.',
  more_info: 'Long trumpet or horn used in Tibetan Buddhist ceremonies. It produces deep tones that are used to call together the community and spirits.',
  geographical_region: 'Asia',
  town: 'Lhasa',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Dungchen.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/cO9oUe0S-Lg'
)
file = File.open(Rails.root.join("db/seeds/instruments/dung_chen.jpg"))
dung_chen.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/DUNG_CHEN P.jpg"))
dung_chen.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")



# Contrebasse (Double Bass)
contrebasse = Instrument.create!(
  name: 'Contrebasse',
  family: 'String',
  tessitura: 'E1 to G4',
  materials: 'Usually carved from spruce or maple wood.',
  origins: 'Has its roots in Europe during the 15th century, evolving from the viol family of instruments.',
  more_info: 'Also known as a double bass, it is the largest and lowest-pitched bowed string instrument in the modern symphony orchestra.',
  geographical_region: 'Europe',
  town: 'Cremona',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Contrebasse.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/pyUZh_Cbw6Q'
)
file = File.open(Rails.root.join("db/seeds/instruments/contrebasse.jpg"))
contrebasse.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CONTREBASSE P.jpg"))
contrebasse.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Flûte Piccolo
flute_piccolo = Instrument.create!(
  name: 'Flûte Piccolo',
  family: 'Woodwind',
  tessitura: 'D5 to C8',
  materials: 'Wood, silver, or other metals.',
  origins: 'Derived from older flutes and adapted in Europe.',
  more_info: 'The highest pitched instrument in the orchestra, producing a bright, piercing sound. It is half the size of a standard concert flute.',
  geographical_region: 'Europe',
  town: 'Milan',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Flute_piccolo.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/y-twGDZeYs4&pp=ygUMcGljY29sbyBzb2xv'
)
file = File.open(Rails.root.join("db/seeds/instruments/piccolo.jpg"))
flute_piccolo.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/PICCOLO P.jpg"))
flute_piccolo.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Guimbarde
guimbarde = Instrument.create!(
  name: 'Guimbarde',
  family: 'Idiophone',
  tessitura: 'Varies based on size and design',
  materials: 'Steel, bamboo, or bone.',
  origins: 'Ancient instrument found in various forms across Asia, Europe, and Oceania.',
  more_info: 'Also known as Jewish harp, mouth harp, or jaw harp, it is played by plucking a reed while altering the shape of the mouth to produce different pitches.',
  geographical_region: 'Asia',
  town: 'Ulaanbaatar',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Guimbarde.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/tXLoP9iSU5Y'
)
file = File.open(Rails.root.join("db/seeds/instruments/guimbarde.jpg"))
guimbarde.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/GUIMBARDE P.jpg"))
guimbarde.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Guitare basse Steinberger
guitare_basse_steinberger = Instrument.create!(
  name: 'Guitare basse Steinberger',
  family: 'String',
  tessitura: 'E1 to G3',
  materials: 'Carbon fiber or wood, depending on the model.',
  origins: 'Introduced in the 1980s by Ned Steinberger.',
  more_info: 'Distinctive for its minimalist headless design. Known for its clear, balanced sound.',
  geographical_region: 'North America',
  town: 'New York City',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Guitare_basse_steinberger.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/6Cn45Thte6A'
)
file = File.open(Rails.root.join("db/seeds/instruments/steinberger.jpg"))
guitare_basse_steinberger.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/STEINBERGER P.jpg"))
guitare_basse_steinberger.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Guitare acoustique (Acoustic Guitar)
guitare_acoustique = Instrument.create!(
  name: 'Guitare acoustique',
  family: 'String',
  tessitura: 'E2 to E6',
  materials: 'Various woods like spruce, cedar, and rosewood.',
  origins: 'Roots trace back to ancient civilizations but modern design evolved in Spain.',
  more_info: 'A string instrument played by plucking or strumming. Does not require amplification.',
  geographical_region: 'Europe',
  town: 'Seville',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Guitare_acoust.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/OyuL5biOQ94'
)
file = File.open(Rails.root.join("db/seeds/instruments/guit.jpg"))
guitare_acoustique.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/GUIT P.jpg"))
guitare_acoustique.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Harpe celtique (Celtic Harp)
harpe_celtique = Instrument.create!(
  name: 'Harpe celtique',
  family: 'String',
  tessitura: 'Varies based on size, generally C2 to C6',
  materials: 'Wood, strings are usually nylon or gut.',
  origins: 'Ancient instrument with roots in Ireland and Scotland.',
  more_info: 'Smaller than concert harps, with a rich history in Celtic music and lore.',
  geographical_region: 'Europe',
  town: 'Dublin',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Harpe_celte.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/qDh3XzCLTqk'
)
file = File.open(Rails.root.join("db/seeds/instruments/celtic_harp.jpg"))
harpe_celtique.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CELTIC HARP P.jpg"))
harpe_celtique.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Luth (Lute)
luth = Instrument.create!(
  name: 'Luth',
  family: 'String',
  tessitura: 'Varies, often D2 to A5',
  materials: 'Wood, with gut or nylon strings.',
  origins: 'Medieval Europe, influenced by earlier Arab oud.',
  more_info: 'Played by plucking, it was a popular instrument during the Renaissance and Baroque periods.',
  geographical_region: 'Europe',
  town: 'Venice',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Luth.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/FnpaMm_2QYc'
)
file = File.open(Rails.root.join("db/seeds/instruments/luth.jpg"))
luth.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/LUTH P.jpg"))
luth.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Mandoline (Mandolin)
mandoline = Instrument.create!(
  name: 'Mandoline',
  family: 'String',
  tessitura: 'G3 to A6',
  materials: 'Wood, steel strings.',
  origins: 'Developed in Italy in the 18th century.',
  more_info: 'Has a characteristic rounded body and is played with a plectrum.',
  geographical_region: 'Europe',
  town: 'Naples',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Mandoline.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/lUZKsro4jSs'
)
file = File.open(Rails.root.join("db/seeds/instruments/mandoline.jpg"))
mandoline.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/MANDOLINE P.jpg"))
mandoline.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Trompette (Trumpet)
trompette = Instrument.create!(
  name: 'Trompette',
  family: 'Brass',
  tessitura: 'F♯3 to D6',
  materials: 'Brass.',
  origins: 'Antiquity, with the modern valved trumpet developed in the early 19th century.',
  more_info: 'A wind instrument that uses valves to change pitch. Widely used in various music genres.',
  geographical_region: 'Worldwide',
  town: 'Vienna',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Trompette.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/2nPwkb9ZyPQ'
)
file = File.open(Rails.root.join("db/seeds/instruments/trumpet.jpg"))
trompette.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/TRUMPET P.jpg"))
trompette.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Nyckelharpa
nyckelharpa = Instrument.create!(
  name: 'Nyckelharpa',
  family: 'String',
  tessitura: 'C3 to C6',
  materials: 'Wood, with steel or gut strings.',
  origins: 'Sweden, dating back to the medieval period.',
  more_info: 'A traditional Swedish instrument played with a bow, and is distinctive for its keys that fret the strings.',
  geographical_region: 'Europe',
  town: 'Uppsala',
  # audio: '',
  youtube_embed_url: 'https://www.youtube.com/embed/e7sK5OiJHHQ'
)
file = File.open(Rails.root.join("db/seeds/instruments/nyckelharpa.jpg"))
nyckelharpa.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/NYCKELHARPA P.jpg"))
nyckelharpa.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Autoharp
autoharpe = Instrument.create!(
  name: 'Autoharp',
  family: 'String',
  tessitura: 'Varies based on model, generally G2 to E6',
  materials: 'Wood with steel strings.',
  origins: 'Originally patented in the US in the late 19th century.',
  more_info: 'A string instrument with a series of chord bars attached to dampers. When a chord bar is pressed, it mutes all strings not in that chord.',
  geographical_region: 'North America',
  town: 'Philadelphia',
  # audio: '',
  youtube_embed_url: 'https://www.youtube.com/embed/9lcxzZcAFTE'
)
file = File.open(Rails.root.join("db/seeds/instruments/autoharpe.jpg"))
autoharpe.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/AUTOHARPE P.jpg"))
autoharpe.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

puts 'Adding questions and answers...'
question1= Question.create!(prompt: 'Which one of these is the Dobro?', instrument_id: dobro.id)
question2= Question.create!(prompt: 'Which one of these is the Sitar?', instrument_id: sitar.id)
question3= Question.create!(prompt: 'Which one of these is the Suona?', instrument_id: suona.id)
question4= Question.create!(prompt: 'Which one of these is the Nay?', instrument_id: nay.id)
question5= Question.create!(prompt: 'Which one of these is the Balalaika?', instrument_id: balalaika.id)

puts '...The circle is completed!'
